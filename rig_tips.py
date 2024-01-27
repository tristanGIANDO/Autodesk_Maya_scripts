import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import webbrowser





###########################################
##    Written by Tristan GIANDORIGGIO    ##
##             Version 1.7.002           ##
###########################################

# VARIABLES
num = []
out = []
edges = []
joints = []
ribNum = ["A01", "B01", "C01", "D01", "E01"]
follNum = []
locator_name= "loc"
list = ()
a = "JNT_Root"
b = "JNT_Shoulders"

#################
## DEFINITIONS ##
#################


    


#################### FACIAL RIBBON ############################################################


def createFacialRibbon ( *args ):
    
    

    # CONVERT EDGE TO CURVE
    sel = cmds.ls(sl=1)


    for loop in sel:
        cmds.select(sel)
        cmds.polyToCurve( form = 0, degree = 1, conformToSmoothMeshPreview = 1)
        
        # FREEZE TRANSFORMS, DELETE HISTORY, CENTER PIVOT, RENAME
        cmds.makeIdentity( apply=True )
        cmds.delete(ch = True)
        cmds.xform(cp=1)
        ribName = cmds.textField(ribNameText, query=1, text=1)
        ribC = cmds.rename("ribCrv_"+ribName)

        # REBUILD AND DUPLICATE
        cmds.rebuildCurve( rt=0, s=6 )
        cmds.duplicate( "ribCrv_"+ribName )
    
    

    
    # LOFT
    cmds.select( "ribCrv_"+ribName )
    cmds.move( 0,0,-0.1 )
    cmds.loft( "ribCrv_"+ribName, "ribCrv_"+ribName+"1", ch=True, rn=True, ar=True )
    cmds.makeIdentity( apply=True )
    cmds.delete(ch = True)
    cmds.xform(cp=1)
    newRib = cmds.rename("Ribbon_"+ribName)



    # CREATE FOLLICLES
    
    crvInfoNode = cmds.arclen( ribC )
    
    listName = ["Shape01", "Shape02","Shape03", "Shape04","Shape05", "Shape06","Shape07", "Shape08", "Shape09" ]
    drvList = ["Drv_Jnt_01*", "Drv_Jnt_02*","Drv_Jnt_03*", "Drv_Jnt_04*", "Drv_Jnt_05*","Drv_Jnt_06*", "Drv_Jnt_07*", "Drv_Jnt_08*","Drv_Jnt_09*" ]
    moveList = ["Move_Drv_Jnt_01*", "Move_Drv_Jnt_02*", "Move_Drv_Jnt_03*", "Move_Drv_Jnt_04*", "Move_Drv_Jnt_05*", "Move_Drv_Jnt_06*", "Move_Drv_Jnt_07*", "Move_Drv_Jnt_08*", "Move_Drv_Jnt_09*" ]
    offsetList = ["Offset_Drv_Jnt_01*", "Offset_Drv_Jnt_02*", "Offset_Drv_Jnt_03*", "Offset_Drv_Jnt_04*", "Offset_Drv_Jnt_05*", "Offset_Drv_Jnt_06*", "Offset_Drv_Jnt_07*", "Offset_Drv_Jnt_08*", "Offset_Drv_Jnt_09*" ]
    
    follAmount = cmds.intSliderGrp( amountText, query=1, value=1)
    cmds.select(newRib)
    grpFOLL = cmds.group(em=True, n="Grp_Follicles_"+ribName)

    for i in range(0,follAmount):    
        y = str(i+1)
        cmds.createNode('follicle', n='follicle' + listName[i] + "_" + ribName)
        cmds.parent('follicle0' + y + "_" + ribName, grpFOLL, s=True)
        cmds.setAttr('follicle' + listName[i] + "_" + ribName + '.simulationMethod', 0)
        cmds.makeIdentity(newRib, apply=True, t=1, r=1, s=1, n=0)

        cmds.connectAttr('follicle' + listName[i] + "_" + ribName + '.outRotate', 'follicle0' + y + "_" + ribName + '.rotate', f=True)
        cmds.connectAttr('follicle' + listName[i] + "_" + ribName + '.outTranslate', 'follicle0' + y + "_" + ribName + '.translate')
        cmds.connectAttr(newRib+'Shape.worldMatrix', 'follicle' + listName[i] + "_" + ribName + '.inputWorldMatrix')
        cmds.connectAttr(newRib+'Shape.local', 'follicle' + listName[i] + "_" + ribName + '.inputSurface')

        cmds.setAttr('follicle0' + y + "_" + ribName + '.parameterV', float(i) / (follAmount - 1))
        cmds.setAttr('follicle0' + y + "_" + ribName + '.parameterU', 0.5 )
        
        
        #CREATE BIND JOINTS UNDER FOLLICLES
        
        bndJnt = cmds.joint(rad=.3, n="Bind_"+ribName + "_0" + y )
        
        
        #COLOR BIND JOINTS

        cmds.setAttr ( bndJnt + ".useOutlinerColor" , True)
        cmds.setAttr ( bndJnt + ".outlinerColor" , 1,1,1)
        mel.eval('AEdagNodeCommonRefreshOutliners();')    
        cmds.setAttr(bndJnt + ".overrideEnabled", 1)
        cmds.setAttr(bndJnt + ".overrideColor", 16)


    #DRV JOINTS
    cmds.select( "ribCrv_"+ribName )

    #gather info
    curveSelected = cmds.ls(sl = True) [0]
    jointAmount = cmds.intSliderGrp( jntAmountText, query=1, value=1)
    previousJoint = ""
    rootJnt = ""
    
    for i in range(0, jointAmount):
        cmds.select(cl = True)
        newJnt = cmds.joint()
        mothionPath = cmds.pathAnimation(newJnt, c = curveSelected, fractionMode = True)
        cmds.cutKey(mothionPath + ".u", time = ())
        cmds.setAttr(mothionPath + ".u", i * (1.0/(jointAmount - 1)))
        #delete motion path
        cmds.delete(newJnt + ".tx", icn = True)
        cmds.delete(newJnt + ".tx", icn = True)
        cmds.delete(newJnt + ".tx", icn = True)
        cmds.delete(mothionPath)

        if i == 0:
            previousJnt = newJnt
            rootJnt = newJnt
            continue
        cmds.parent(newJnt, previousJnt)
        previousJnt = newJnt
    drvJnt = cmds.joint(rootJnt, e = True, oj = "xyz", sao = "yup", ch = True, zso = True)
    
    #Orient last joint
    if cmds.listRelatives(drvJnt, children=True, type="joint") is None:
        for attr in [".jointOrientX", ".jointOrientY", ".jointOrientZ"]:
            cmds.setAttr(attr, 0)
    
    

    #RENAME AND COLOR DRV JOINTS
    cmds.select("joint*")

    for s in range(0, jointAmount):
        y = str(s+1)

        drv = cmds.rename("Drv_Jnt_0" + y + ribName)
        
        cmds.setAttr ( drv + ".useOutlinerColor" , True)
        cmds.setAttr ( drv + ".outlinerColor" , 0,1,0)
        mel.eval('AEdagNodeCommonRefreshOutliners();')    
        cmds.setAttr(drv + ".overrideEnabled", 1)
        cmds.setAttr(drv + ".overrideColor", 14)


    # OFFSET AND MOVE
    
    for s in range(0, jointAmount):
        y = str(s+1)
        moveGrp = cmds.group( em=True, n="Move_Drv_Jnt_0" + y + ribName)
        cmds.matchTransform(moveGrp, drv, pos=True)
        cmds.matchTransform(moveGrp, drv, rot=True)
        #offset
        offsetGrp = cmds.group( em=True, n="Offset_Drv_Jnt_0" + y + ribName)
        cmds.matchTransform(offsetGrp, drv, pos=True)
        cmds.matchTransform(offsetGrp, drv, rot=True)
       
        
        #for 
       
        cmds.parent( moveGrp, offsetGrp )
        
    cmds.parent( drv, moveGrp )
    cmds.parent( drvList[0], moveList[0] )
    cmds.parent( drvList[1], moveList[1] )
    try:
        cmds.parent( drvList[2], moveList[2] )
    except:
        pass
        
    try:
        cmds.parent( drvList[3], moveList[3] )    
    except:
        pass   
        
    try:
        cmds.parent( drvList[4], moveList[4] )
    except:
        pass
        
    try:
        cmds.parent( drvList[5], moveList[5] )
    except:
        pass
        
    try:
        cmds.parent( drvList[6], moveList[6] )
    except:
        pass
        
    try:
        cmds.parent( drvList[7], moveList[7] )
    except:
        pass
        
    try:
        cmds.parent( drvList[8], moveList[8] )
    except:
        pass
    

    #BIND RIBBON
    cmds.skinCluster(drvList[0:jointAmount], newRib, tsb=True)
    


    
    # GROUP
    GrpDrv = cmds.group(em=True, n="Grp_Drv_Jnt_"+ribName)
    cmds.parent(offsetList[0:jointAmount], GrpDrv )
    cmds.group( "Ribbon_"+ribName, "Grp_Follicles_"+ribName, "Grp_Drv_Jnt_"+ribName, n="Grp_Ribbon_"+ribName )

    cmds.delete("ribCrv_*")
        
    
        
        
        
        








#################################### BODY RIBBON ########################################

def bodyRibbon (*args ):
    
    sel = cmds.ls(sl=1)
    
    ###### CONSTRAIN RIBBON TO SKELETON
    
    ctrlG = cmds.textField(ctrlGNameText, query=1, text=1)
    ctrlA = cmds.textField(ctrlANameText, query=1, text=1)
    ctrlB = cmds.textField(ctrlBNameText, query=1, text=1)

       
    #CSTR BETWEEN THE TWO JOINTS
    cmds.pointConstraint( sel[0], sel[1], ctrlG, mo=False )
   
   
   
    # MATRIX ORIENT ------
    
    # CREATE NODES

    MultMatX  = cmds.shadingNode('multMatrix',asUtility=True, n='MultMatX_'+ ctrlG)
    DecMatX = cmds.shadingNode('decomposeMatrix', asUtility=True, n='DecMatX_'+ ctrlG)
    MultMatX_Offset = cmds.shadingNode('multMatrix',asUtility=True, n='MultMatX_Offset_'+ ctrlG)
    DecMatX_Offset = cmds.shadingNode('decomposeMatrix', asUtility=True, n='DecMatX_Offset_'+ ctrlG)




    # CONNECT OFFSET TO MULTIPLY AND DECOMPOSE MATRIX

    cmds.connectAttr(DecMatX_Offset+'.inputMatrix',MultMatX+'.matrixIn[0]')
    cmds.connectAttr(sel[0] +'.worldMatrix[0]',MultMatX+'.matrixIn[1]')
    cmds.connectAttr(ctrlG +'.parentInverseMatrix[0]',MultMatX+'.matrixIn[2]')
    cmds.connectAttr(MultMatX+'.matrixSum',DecMatX+'.inputMatrix')
   
   
    cmds.connectAttr(DecMatX+'.outputRotate',ctrlG +'.r')
    
    #cmds.orientConstraint( bodyDrv1Name, ctrlG, mo=False )
    
    
    
    
    
    # MATRIX TRANSLATE VERS CTRL A ------
    
    cmds.matchTransform(ctrlA, sel[0])
    
    # CREATE NODES

    MultMatX  = cmds.shadingNode('multMatrix',asUtility=True, n='MultMatX_'+ ctrlA)
    DecMatX = cmds.shadingNode('decomposeMatrix', asUtility=True, n='DecMatX_'+ ctrlA)
    MultMatX_Offset = cmds.shadingNode('multMatrix',asUtility=True, n='MultMatX_Offset_'+ ctrlA)
    DecMatX_Offset = cmds.shadingNode('decomposeMatrix', asUtility=True, n='DecMatX_Offset_'+ ctrlA)


    # CONNECT OFFSET TO MULTIPLY AND DECOMPOSE MATRIX

    cmds.connectAttr(DecMatX_Offset+'.inputMatrix',MultMatX+'.matrixIn[0]')
    cmds.connectAttr(sel[0] +'.worldMatrix[0]',MultMatX+'.matrixIn[1]')
    cmds.connectAttr(ctrlA +'.parentInverseMatrix[0]',MultMatX+'.matrixIn[2]')
    cmds.connectAttr(MultMatX+'.matrixSum',DecMatX+'.inputMatrix')
   
   
    cmds.connectAttr(DecMatX+'.outputRotate',ctrlA +'.r')
    
    #cmds.pointConstraint( bodyDrv1Name, ctrlA, mo=False )
    
    
    
    
    # MATRIX TRANSLATE VERS CTRL B ------
    
    cmds.matchTransform(ctrlB, sel[1])
    
    # CREATE NODES

    MultMatX  = cmds.shadingNode('multMatrix',asUtility=True, n='MultMatX_'+ ctrlB)
    DecMatX = cmds.shadingNode('decomposeMatrix', asUtility=True, n='DecMatX_'+ ctrlB)
    
    DecMatX_Offset = cmds.shadingNode('decomposeMatrix', asUtility=True, n='DecMatX_Offset_'+ ctrlB)


 
    
   

    # CONNECT OFFSET TO MULTIPLY AND DECOMPOSE MATRIX

    cmds.connectAttr(DecMatX_Offset+'.inputMatrix',MultMatX+'.matrixIn[0]')
    cmds.connectAttr(sel[1] +'.worldMatrix[0]',MultMatX+'.matrixIn[1]')
    cmds.connectAttr(ctrlB +'.parentInverseMatrix[0]',MultMatX+'.matrixIn[2]')
    cmds.connectAttr(MultMatX+'.matrixSum',DecMatX+'.inputMatrix')
   
   
    cmds.connectAttr(DecMatX+'.outputRotate',ctrlB +'.r')
    

    
    #cmds.pointConstraint( bodyDrv2Name, ctrlB, mo=False )
    
    
    
    
    
    
    
    
    
    
    
############################################# SET UP ARM #####################################################


def armSU( *args ):
    
    rib1 = cmds.textField(rib1NameText, query=1, text=1)
    rib2 = cmds.textField(rib2NameText, query=1, text=1)
    
    # CREATE NODES
    
    #RIB 1
    FK_Mult  = cmds.shadingNode("multiplyDivide",asUtility=True, n= rib1 + "_FK_Mult")
    Cond_Rib1  = cmds.shadingNode("condition",asUtility=True, n= "Cond_" + rib1)
    
    #RIB 2
    IK_Mult  = cmds.shadingNode("multiplyDivide",asUtility=True, n= rib2 + "_IK_Mult")
    pma  = cmds.shadingNode("plusMinusAverage",asUtility=True, n= "PMA_" + rib2 + "_IK")
    Cond_Rib2  = cmds.shadingNode("condition",asUtility=True, n= "Cond_" + rib2)
    
    
    #CONNECT ATTR

    cmds.connectAttr(FK_Mult + ".outputX", Cond_Rib1 + ".colorIfFalseR")
    
    cmds.connectAttr(IK_Mult + ".outputX", pma + ".input1D[0]")
    cmds.connectAttr(pma + ".output1D", Cond_Rib2 + ".colorIfTrueR")
    
    
    #SET ATTR
    cmds.setAttr(FK_Mult + ".input2X", -1)
    
    cmds.setAttr(IK_Mult + ".input2X", -1)


########################################## SET UP LEG #####################################


def legSU( *args ):
    
    rib1 = cmds.textField(rib1NameText, query=1, text=1)
    rib2 = cmds.textField(rib2NameText, query=1, text=1)
    
    # CREATE NODES
    
    #RIB 1
    Mult  = cmds.shadingNode("multiplyDivide",asUtility=True, n= rib1 + "_Mult")
    Cond_Leg1  = cmds.shadingNode("condition",asUtility=True, n= "Cond_" + rib1)
    
    #RIB 2
    IK_Mult  = cmds.shadingNode("multiplyDivide",asUtility=True, n= rib2 + "_IK_Mult")
    FK_Mult  = cmds.shadingNode("multiplyDivide",asUtility=True, n= rib2 + "_FK_Mult")
    Twist_Mult  = cmds.shadingNode("multiplyDivide",asUtility=True, n= rib2 + "_IK_Twist_Mult")
    Cond_Leg2  = cmds.shadingNode("condition",asUtility=True, n= "Cond_" + rib2)
    
    
    #CONNECT ATTR

    cmds.connectAttr(Mult + ".outputX", Cond_Leg1 + ".colorIfFalseR")
    cmds.connectAttr(Twist_Mult + ".outputX", Cond_Leg1 + ".colorIfTrueR")
    
    cmds.connectAttr(FK_Mult + ".outputX", Cond_Leg2 + ".colorIfFalseR")
    cmds.connectAttr(IK_Mult + ".outputX", Cond_Leg2 + ".colorIfTrueR")
    
    
    #SET ATTR
    cmds.setAttr( Cond_Leg1 + ".operation", 1)
    cmds.setAttr( Cond_Leg2 + ".operation", 1)
    
    cmds.setAttr(Twist_Mult + ".input2X", -1)
    cmds.setAttr(FK_Mult + ".input2X", -1)
    cmds.setAttr(IK_Mult + ".input2X", -1)   
    

########################################## TWIST EXTRACTOR ##################################################

def twistExtractor ( *args ):
    sel = cmds.ls( selection=True, sl=True )

    # CREATE TWIST EX JOINTS
    cmds.joint( p= (0,0,0) )
    twist01 = cmds.joint( n = "TwistEx_01", e=True, zso=True, oj='xyz' )
    
    cmds.matchTransform("TwistEx_01",sel)
    cmds.makeIdentity( apply=True, t=1, r=1, s=1, n=2 )
    
    cmds.duplicate("TwistEx_01")
    cmds.move( 10, 0, 0, relative=True, objectSpace=True, worldSpaceDistance=True )
    
    #CREATE IK
    cmds.parent("TwistEx_02", "TwistEx_01")
    ikTwist = cmds.ikHandle( n="IK_TwistEx_01", sj="TwistEx_01", ee="TwistEx_02" )
    cmds.select( sel )
    cmds.parent( ikTwist, sel )
    
    #CREATE ATTR
    attr180 = cmds.addAttr(sel, shortName= "extracted180", longName= "Extracted_Twist_180", defaultValue= 0, k=True )
    attr360 = cmds.addAttr(sel, shortName= "extracted360", longName= "Extracted_Twist_360", defaultValue= 0, k=True )
    
    
    #CREATE LOCATORS
    loc180 = cmds.spaceLocator( n= ("Loc_Extracted_Twist_180"))
    loc360 = cmds.spaceLocator( n= ("Loc_Extracted_Twist_360"))
    cmds.matchTransform(loc180, sel)
    cmds.matchTransform(loc360, sel)
    
    #PARENT LOCATORS
    cmds.parent ( loc180, sel)
    cmds.parent ( loc360, sel)
    
    #CSTR ORIENT
    con180 = cmds.orientConstraint( "TwistEx_01", loc180, mo=False )
    cmds.setAttr ("Loc_Extracted_Twist_180_orientConstraint1.interpType", 0)
    cmds.orientConstraint( "TwistEx_01", sel, loc360, mo=False )
    cmds.setAttr ("Loc_Extracted_Twist_360_orientConstraint1.interpType", 0)
    
    #CONNECT ATTR
    cmds.connectAttr( "Loc_Extracted_Twist_180.rotateX", sel[0] + ".Extracted_Twist_180")

    Mult360  = cmds.shadingNode("multiplyDivide",asUtility=True, n="TwistEx_mult_01")
    cmds.connectAttr( "Loc_Extracted_Twist_360.rotateX", Mult360 + ".input1X")
    cmds.connectAttr( Mult360 + ".outputX",  sel[0] + ".Extracted_Twist_360")
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
########################################## STRETCHY COLUMN ##################################################


def stretchyColumn( *args ):
    
    gMove = cmds.textField(gMoveNameText, query=1, text=1)
    cSpine = cmds.textField(cSpineNameText, query=1, text=1)
    ctrlRoot = cmds.textField(cRootNameText, query=1, text=1)
    sel = cmds.ls( selection=True, sl=True ) 

 
    
    # CREATE NODES
    
    CurveInfo  = cmds.shadingNode("curveInfo",asUtility=True, n= "curveInfo_Spine")
    PercentDIV  = cmds.shadingNode("multiplyDivide",asUtility=True, n= "SpineStretchPercent_DIV")
    GlobalScale  = cmds.shadingNode("multiplyDivide",asUtility=True, n= "Global_Relative_Scale_Column_01_Mult")
    POW  = cmds.shadingNode("multiplyDivide",asUtility=True, n= "SpineStretch_POW")
    invertDIV  = cmds.shadingNode("multiplyDivide",asUtility=True, n= "SpineStretchInvert_DIV")
    
    Cond  = cmds.shadingNode("condition",asUtility=True, n= "Cond_Stretchy_Column")
    
    
    # CREATE ATTR STRETCHY COLUMN
    
    cmds.select(ctrlRoot)
    cmds.addAttr( shortName= "stretchyColumn", longName= "Stretchy_Column", defaultValue=1.0, minValue=0, maxValue=1, k=True )
    
    
    # CONNECT ATTR
    
    cmds.connectAttr(cSpine + ".worldSpace[0]", CurveInfo + ".inputCurve")
    cmds.connectAttr(gMove + ".scaleY", GlobalScale + ".input2X")
    
    cmds.connectAttr(CurveInfo + ".arcLength", PercentDIV + ".input1X")
    cmds.connectAttr(GlobalScale + ".outputX", PercentDIV + ".input2X")
    
    cmds.connectAttr(PercentDIV + ".outputX", POW + ".input1X")
    cmds.connectAttr(POW + ".outputX", invertDIV + ".input2X")
    
    cmds.connectAttr(PercentDIV + ".outputX", Cond + ".colorIfTrueR")
    cmds.connectAttr(invertDIV + ".outputX", Cond + ".colorIfTrueG")
    cmds.connectAttr(invertDIV + ".outputX", Cond + ".colorIfTrueB")
    
    cmds.connectAttr(ctrlRoot + ".Stretchy_Column", Cond + ".firstTerm")
    
    
    # SET ATTR
    cmds.setAttr( PercentDIV + ".operation", 2)
    
    cmds.setAttr( POW + ".operation", 3)
    cmds.setAttr( POW + ".input2X", 0.5)
    
    cmds.setAttr( invertDIV + ".operation", 2)
    cmds.setAttr( invertDIV + ".input1X", 1)
    
    cmds.setAttr( Cond + ".secondTerm", 1)
    cmds.setAttr( Cond + ".operation", 0)
    cmds.setAttr( Cond + ".colorIfFalseR", 1)
    cmds.setAttr( Cond + ".colorIfFalseG", 1)
    cmds.setAttr( Cond + ".colorIfFalseB", 1)
    
    

    Length = cmds.getAttr(  CurveInfo + ".arcLength")
    print Length
    cmds.setAttr( GlobalScale + ".input1X", Length)
    
    
    # CONNECT COND TO JOINTS
    
    cmds.select(sel)
    cmds.connectAttr( Cond + ".outColorR", sel[0] + ".scaleX" )
    cmds.connectAttr( Cond + ".outColorG", sel[0] + ".scaleY" )
    cmds.connectAttr( Cond + ".outColorB", sel[0] + ".scaleZ" )
    
    cmds.connectAttr( Cond + ".outColorR", sel[1] + ".scaleX" )
    cmds.connectAttr( Cond + ".outColorG", sel[1] + ".scaleY" )
    cmds.connectAttr( Cond + ".outColorB", sel[1] + ".scaleZ" )
    
    cmds.connectAttr( Cond + ".outColorR", sel[2] + ".scaleX" )
    cmds.connectAttr( Cond + ".outColorG", sel[2] + ".scaleY" )
    cmds.connectAttr( Cond + ".outColorB", sel[2] + ".scaleZ" )
    
    cmds.connectAttr( Cond + ".outColorR", sel[3] + ".scaleX" )
    cmds.connectAttr( Cond + ".outColorG", sel[3] + ".scaleY" )
    cmds.connectAttr( Cond + ".outColorB", sel[3] + ".scaleZ" )
    
    cmds.connectAttr( Cond + ".outColorR", sel[4] + ".scaleX" )
    cmds.connectAttr( Cond + ".outColorG", sel[4] + ".scaleY" )
    cmds.connectAttr( Cond + ".outColorB", sel[4] + ".scaleZ" )
    
    cmds.connectAttr( Cond + ".outColorR", sel[5] + ".scaleX" )
    cmds.connectAttr( Cond + ".outColorG", sel[5] + ".scaleY" )
    cmds.connectAttr( Cond + ".outColorB", sel[5] + ".scaleZ" )
    
    cmds.connectAttr( Cond + ".outColorR", sel[6] + ".scaleX" )
    cmds.connectAttr( Cond + ".outColorG", sel[6] + ".scaleY" )
    cmds.connectAttr( Cond + ".outColorB", sel[6] + ".scaleZ" )
    

    

    

############################################# DIST LOCATOR ###########################################

def distLoc( *args ):
    
    suffix = cmds.textField(suffixNameText, query=1, text=1)
    sel = cmds.ls(sl = 1)

    for obj in sel:
        newLoc = cmds.spaceLocator(n= "Loc_Dist_01")
        cmds.matchTransform(newLoc, obj)
        cmds.parentConstraint( obj, newLoc, sr=["x", "y", "z"])



################################################# AUTO STRETCH #######################################





def stretchy ( *arg ):
    
    gMove = cmds.textField(gMoveNameText, query=1, text=1)
    cRoot = cmds.textField(switchNameText, query=1, text=1)
    
    shoulder = cmds.textField(shoulderNameText, query=1, text=1)
    elbow = cmds.textField(elbowNameText, query=1, text=1)
    wrist = cmds.textField(wristNameText, query=1, text=1)
    suffix = cmds.textField(suffixNameText, query=1, text=1)
    
    
    
    # CREATE NODES
    
    Dist  = cmds.shadingNode("distanceBetween",asUtility=True, n= "Dist_Stretchy_IK_" + suffix)
    GlobalScale  = cmds.shadingNode("multiplyDivide",asUtility=True, n= "GlobalRelative_Scale_" + suffix + "_Mult")
    Div  = cmds.shadingNode("multiplyDivide",asUtility=True, n= "Stretchy_IK_Div_" + suffix)
    CondStretch  = cmds.shadingNode("condition",asUtility=True, n= "Cond_Stretchy_IK_" + suffix)
    CondEnable  = cmds.shadingNode("condition",asUtility=True, n= "Cond_Enable_Stretchy_IK_" + suffix)
    
    
   
   
    # CREATE ATTR STRETCHY ARMS AND LEGS
    
    cmds.select(cRoot)
    cmds.addAttr( shortName= "autoStretch", longName= "Auto_Stretch", defaultValue=1.0, minValue=0, maxValue=1, k=True )
    
    
    
    # CONNECT ATTR
    
    cmds.connectAttr("Loc_Dist_01.translate", Dist + ".point1")
    cmds.connectAttr("Loc_Dist_02.translate", Dist + ".point2")
    cmds.connectAttr( Dist + ".distance", Div + ".input1X" )
    cmds.connectAttr( Dist + ".distance", CondStretch + ".firstTerm" )
    
    cmds.connectAttr(gMove + ".scaleY", GlobalScale + ".input1X")
    
    cmds.connectAttr(GlobalScale + ".outputX", Div + ".input2X")
    cmds.connectAttr(GlobalScale + ".outputX", CondStretch + ".secondTerm")
    
    cmds.connectAttr(Div + ".outputX", CondStretch + ".colorIfTrueR")
    cmds.connectAttr(CondStretch + ".outColorR", CondEnable + ".colorIfTrueR")
    
    cmds.connectAttr(CondEnable + ".outColorR", shoulder + ".scaleX")
    cmds.connectAttr(CondEnable + ".outColorR", elbow + ".scaleX")
    cmds.connectAttr(CondEnable + ".outColorR", wrist + ".scaleX")
    
    
    
    cmds.connectAttr(cRoot + ".Auto_Stretch", CondEnable + ".firstTerm")
    
    
    # SET ATTR
    
    cmds.setAttr( Div + ".operation", 2)
    cmds.setAttr( CondStretch + ".operation", 3)
    cmds.setAttr( CondEnable + ".operation", 0)
    cmds.setAttr( CondEnable + ".secondTerm", 1)
    
    Length = cmds.getAttr(  Div + ".input1X")
    print Length
    cmds.setAttr( GlobalScale + ".input2X", Length)
    
    
    
######################################## FOOT ATTRIBUTES ###########################################################


def footHierarchy ( *args ):
    
    suffix = cmds.textField(suffixText, query=1, text=1)
    sel = cmds.ls(sl = 1)


    # CREATE LOCATORS
    
    BankInt = cmds.spaceLocator( n= ("Loc_Bank_Int" + suffix))
    BankExt = cmds.spaceLocator( n= ("Loc_Bank_Ext" + suffix ))
    Ball = cmds.spaceLocator( n= ("Loc_Ball" + suffix ))
    Toe = cmds.spaceLocator( n= ("Loc_Toe" + suffix ))
    Heel = cmds.spaceLocator( n= ("Loc_Heel" + suffix ))


    # CREATE GROUPS
    
    HeelGrp = cmds.group( em=True, name="Master_Loc_Heel" + suffix )
    pBall = cmds.group( em=True, name="Pivot_Ball" + suffix )
    pToeOff = cmds.group( em=True, name="Pivot_Toe" + suffix + "_offset" )
    pToe = cmds.group( em=True, name="Pivot_Toe" + suffix, parent= pToeOff )


    # HIERARCHY
    
    cmds.parent( BankInt, sel )
    cmds.parent( BankExt, BankInt)
    cmds.parent( Ball, BankExt )
    cmds.parent( Toe, Ball )
    cmds.parent( HeelGrp, Toe )
    cmds.parent( Heel, HeelGrp )
    cmds.parent( pBall, Heel )
    cmds.parent( pToeOff, Heel )
    
    
    
def footAttr ( *args ):
    
    suffix = cmds.textField(suffixText, query=1, text=1)
    sel = cmds.ls(sl = 1)
    
    #CREATE IK
    
    IK_Ball = cmds.ikHandle( n="IK_Ball" + suffix, sj= "Bind_Foot" + suffix, ee="Bind_Ball" + suffix )
    IK_Toe = cmds.ikHandle( n="IK_Toe" + suffix, sj= "Bind_Ball" + suffix, ee="Bind_Toe" + suffix )
    

    
    # CREATE ATTR
    
    cmds.select(sel)
    cmds.addAttr( shortName= "footRoll", longName= "Foot_Roll", defaultValue= 0, minValue= -10, maxValue= 10, k=True )
    cmds.addAttr( shortName= "twistHeel", longName= "Twist_Heel", defaultValue= 0, minValue= -10, maxValue= 10, k=True )
    cmds.addAttr( shortName= "twistToe", longName= "Twist_Toe", defaultValue= 0, minValue= -10, maxValue= 10, k=True )
    cmds.addAttr( shortName= "bank", longName= "Bank", defaultValue= 0, minValue= -30, maxValue= 30, k=True )
    
    
    ###### FOOT ROLL ########################################################
    
    # CREATE NODES
    sR_FR_Heel  = cmds.shadingNode("setRange",asUtility=True, n= "setRange_FootRoll_Heel" + suffix)
    Cond_FR_Heel  = cmds.shadingNode("condition",asUtility=True, n= "Cond_FootRoll_Heel" + suffix)
    
    sR_FR_Toe  = cmds.shadingNode("setRange",asUtility=True, n= "setRange_FootRoll_Toe" + suffix)
    Cond_FR_Toe  = cmds.shadingNode("condition",asUtility=True, n= "Cond_FootRoll_Toe" + suffix)
    
    sR_FR_Ball_F  = cmds.shadingNode("setRange",asUtility=True, n= "setRange_FootRoll_Ball_False" + suffix)
    sR_FR_Ball_T  = cmds.shadingNode("setRange",asUtility=True, n= "setRange_FootRoll_Ball_True" + suffix)
    Cond_FR_Ball  = cmds.shadingNode("condition",asUtility=True, n= "Cond_FootRoll_Ball" + suffix)
    
    Reverse = cmds.shadingNode("reverse", asUtility=True, n= "Reverse_Foot" + suffix)
    
    # CONNECT ATTR 
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Foot_Roll", sR_FR_Heel + ".valueX")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Foot_Roll", Cond_FR_Heel + ".firstTerm")
    cmds.connectAttr(sR_FR_Heel + ".outValueX", Cond_FR_Heel + ".colorIfTrueR")
    cmds.connectAttr(Cond_FR_Heel + ".outColorR", "Loc_Heel" + suffix + ".rotateZ")
    
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Foot_Roll", sR_FR_Toe + ".valueX")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Foot_Roll", Cond_FR_Toe + ".firstTerm")
    cmds.connectAttr(sR_FR_Toe + ".outValueX", Cond_FR_Toe + ".colorIfTrueR")
    cmds.connectAttr(Cond_FR_Toe + ".outColorR", "Loc_Toe" + suffix + ".rotateZ")
    
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Foot_Roll", sR_FR_Ball_F + ".valueX")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Foot_Roll", sR_FR_Ball_T + ".valueX")
    cmds.connectAttr(sR_FR_Ball_F + ".outValueX", Cond_FR_Ball + ".colorIfFalseR")
    cmds.connectAttr(sR_FR_Ball_T + ".outValueX", Cond_FR_Ball + ".colorIfTrueR")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Foot_Roll", Cond_FR_Ball + ".firstTerm")
    cmds.connectAttr(Cond_FR_Ball + ".outColorR", "Pivot_Ball" + suffix + ".rotateZ")
    
    # SET ATTR
    cmds.setAttr( sR_FR_Heel + ".minX", 35)
    cmds.setAttr( sR_FR_Heel + ".oldMinX", -10)
    cmds.setAttr( Cond_FR_Heel + ".operation", 4)
    
    cmds.setAttr( sR_FR_Toe + ".maxX", -70)
    cmds.setAttr( sR_FR_Toe + ".oldMinX", 5)
    cmds.setAttr( sR_FR_Toe + ".oldMaxX", 10)
    cmds.setAttr( Cond_FR_Toe + ".operation", 2)
    
    cmds.setAttr( sR_FR_Ball_F + ".minX", -50)
    cmds.setAttr( sR_FR_Ball_F + ".oldMinX", 5)
    cmds.setAttr( sR_FR_Ball_F + ".oldMaxX", 10)
    
    cmds.setAttr( sR_FR_Ball_T + ".maxX", -50)
    cmds.setAttr( sR_FR_Ball_T + ".oldMaxX", 5)
    
    cmds.setAttr( Cond_FR_Ball + ".secondTerm", 5)
    cmds.setAttr( Cond_FR_Ball + ".operation", 5)
    
    #CONSTRAIN
    cmds.parentConstraint( "Pivot_Ball" + suffix, "IK_Leg" + suffix, mo = True )
    cmds.parentConstraint( "CTRL_FK_Ankle" + suffix, "Master_Loc_Heel" + suffix, mo = True )
    cmds.parentConstraint( "CTRL_FK_Toe" + suffix, "Pivot_Toe" + suffix, mo = True )
    
    cmds.setAttr( "Master_Loc_Heel" + suffix + "_parentConstraint1.CTRL_FK_Ankle" + suffix + "W0", 0)
    cmds.setAttr( "Pivot_Toe" + suffix + "_parentConstraint1.CTRL_FK_Toe" + suffix + "W0", 0)
    cmds.parent( "IK_Ball" + suffix, "Loc_Heel" + suffix)
    cmds.parent( "IK_Toe" + suffix, "Pivot_Toe" + suffix)
    
    
    
    ###### BANK ###########################################
    
    #CREATE NODES
    Int  = cmds.shadingNode("condition",asUtility=True, n= "Cond_Bank_Int" + suffix)
    Ext  = cmds.shadingNode("condition",asUtility=True, n= "Cond_Bank_Ext" + suffix)
    
    # CONNECT ATTR
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Bank", Int + ".colorIfTrueR")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Bank", Int + ".firstTerm")
    cmds.connectAttr(Int + ".outColorR", "Loc_Bank_Int" + suffix + ".rotateX")
    
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Bank", Ext + ".colorIfTrueR")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Bank", Ext + ".firstTerm")
    cmds.connectAttr(Ext + ".outColorR", "Loc_Bank_Ext" + suffix + ".rotateX")
    
    # SET ATTR
    cmds.setAttr( Int + ".operation", 3)
    cmds.setAttr( Int + ".colorIfFalseR", 0)
    
    cmds.setAttr( Ext + ".operation", 5)
    cmds.setAttr( Ext + ".colorIfFalseR", 0)
    
    
    ###### TWIST HEEL ########################################
    
    #CREATE NODES
    TwistHeel  = cmds.shadingNode("setRange",asUtility=True, n= "setRange_TwistHeel" + suffix)
    
    #CONNECT ATTR
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Twist_Heel", TwistHeel + ".valueX")
    cmds.connectAttr(TwistHeel + ".outValueX", "Loc_Heel" + suffix + ".rotateY")
    
    #SET ATTR
    cmds.setAttr( TwistHeel + ".minX", -45)
    cmds.setAttr( TwistHeel + ".maxX", 45)
    cmds.setAttr( TwistHeel + ".oldMinX", -10)
    cmds.setAttr( TwistHeel + ".oldMaxX", 10)
    
    
    ###### TWIST TOE ########################################
    
    #CREATE NODES
    sR_TwistToe  = cmds.shadingNode("setRange",asUtility=True, n= "setRange_TwistToe" + suffix)
    Cond_TwistToe  = cmds.shadingNode("condition",asUtility=True, n= "Cond_TwistToe" + suffix)
    
    #CONNECT ATTR
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Twist_Toe", sR_TwistToe + ".valueX")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Twist_Toe", sR_TwistToe + ".valueY")
    cmds.connectAttr("CTRL_IK_Leg" + suffix + ".Twist_Toe", Cond_TwistToe + ".firstTerm")
    cmds.connectAttr(sR_TwistToe + ".outValueX", Cond_TwistToe + ".colorIfFalseR")
    cmds.connectAttr(sR_TwistToe + ".outValueY", Cond_TwistToe + ".colorIfTrueR")
    cmds.connectAttr(Cond_TwistToe + ".outColorR", "Loc_Toe" + suffix + ".rotateY")
    
    #SET ATTR
    cmds.setAttr( sR_TwistToe + ".maxX", -60)
    cmds.setAttr( sR_TwistToe + ".oldMaxX", 10)
    cmds.setAttr( sR_TwistToe + ".minY", 30)
    cmds.setAttr( sR_TwistToe + ".oldMinY", -10)
    
    cmds.setAttr( Cond_TwistToe + ".operation", 4)
    
    
    
    
###################################### HANDS #################################################
    
def handLOC ( *args ):
    
     # CREATE LOCATORS
    
    cmds.spaceLocator( n= ("Loc_Hand"))
    cmds.spaceLocator( n= ("Loc_Palm"))
    cmds.spaceLocator( n= ("Loc_Clamp"))
    
    cmds.spaceLocator( n= ("Loc_Thumb_01"))
    cmds.spaceLocator( n= ("Loc_Thumb_02"))
    cmds.spaceLocator( n= ("Loc_Thumb_03"))
    cmds.spaceLocator( n= ("Loc_Thumb_End"))
    
    cmds.spaceLocator( n= ("Loc_Index_01"))
    cmds.spaceLocator( n= ("Loc_Index_02"))
    cmds.spaceLocator( n= ("Loc_Index_03"))
    cmds.spaceLocator( n= ("Loc_Index_End"))
    
    cmds.spaceLocator( n= ("Loc_Middle_01"))
    cmds.spaceLocator( n= ("Loc_Middle_02"))
    cmds.spaceLocator( n= ("Loc_Middle_03"))
    cmds.spaceLocator( n= ("Loc_Middle_End"))
    
    cmds.spaceLocator( n= ("Loc_Ring_01"))
    cmds.spaceLocator( n= ("Loc_Ring_02"))
    cmds.spaceLocator( n= ("Loc_Ring_03"))
    cmds.spaceLocator( n= ("Loc_Ring_End"))
    
    cmds.spaceLocator( n= ("Loc_Pinky_01"))
    cmds.spaceLocator( n= ("Loc_Pinky_02"))
    cmds.spaceLocator( n= ("Loc_Pinky_03"))
    cmds.spaceLocator( n= ("Loc_Pinky_End"))
    

def handSKELETON ( *args ):
    
    allJnt = ["Bind_Hand_", "Bind_Palm_", "Bind_Clamp_", "Bind_Thumb_01_", "Bind_Thumb_02_","Bind_Thumb_03_","Bind_Thumb_End_",
    "Bind_Index_01_", "Bind_Index_02_", "Bind_Index_03_", "Bind_Index_End_", "Bind_Middle_01_", "Bind_Middle_02_",
    "Bind_Middle_03_", "Bind_Middle_End_", "Bind_Ring_01_", "Bind_Ring_02_","Bind_Ring_03_","Bind_Ring_End_","Bind_Pinky_01_",
    "Bind_Pinky_02_","Bind_Pinky_03_","Bind_Pinky_End_"]
    
    # CREATE JOINTS
    cmds.joint( p= (0,0,0) )
    Hand = cmds.joint( n = "Bind_Hand_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Palm = cmds.joint( n = "Bind_Palm_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Clamp = cmds.joint( n = "Bind_Clamp_", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Thumb01 = cmds.joint( n = "Bind_Thumb_01_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Thumb02 = cmds.joint( n = "Bind_Thumb_02_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Thumb03 = cmds.joint( n = "Bind_Thumb_03_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Thumb03 = cmds.joint( n = "Bind_Thumb_End_", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Index01 = cmds.joint( n = "Bind_Index_01_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Index02 = cmds.joint( n = "Bind_Index_02_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Index03 = cmds.joint( n = "Bind_Index_03_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Index03 = cmds.joint( n = "Bind_Index_End_", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Middle01 = cmds.joint( n = "Bind_Middle_01_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Middle02 = cmds.joint( n = "Bind_Middle_02_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Middle03 = cmds.joint( n = "Bind_Middle_03_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Middle03 = cmds.joint( n = "Bind_Middle_End_", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Ring01 = cmds.joint( n = "Bind_Ring_01_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Ring02 = cmds.joint( n = "Bind_Ring_02_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Ring03 = cmds.joint( n = "Bind_Ring_03_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Ring03 = cmds.joint( n = "Bind_Ring_End_", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Pinky01 = cmds.joint( n = "Bind_Pinky_01_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Pinky02 = cmds.joint( n = "Bind_Pinky_02_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Pinky03 = cmds.joint( n = "Bind_Pinky_03_", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    Pinky03 = cmds.joint( n = "Bind_Pinky_End_", e=True, zso=True, oj='xyz', rad=.5 )
    
    
    #CREATE OFFSETS
    JntGrp = cmds.group( em=True, name="Bind_Hand_offset")
    
    #MATCH JOINTS TO LOCATORS
    cmds.matchTransform("Bind_Hand_","Loc_Hand")
    cmds.matchTransform("Bind_Palm_","Loc_Palm")
    cmds.matchTransform("Bind_Clamp_","Loc_Clamp")
    
    cmds.matchTransform("Bind_Thumb_01_","Loc_Thumb_01")
    cmds.matchTransform("Bind_Thumb_02_","Loc_Thumb_02")
    cmds.matchTransform("Bind_Thumb_03_","Loc_Thumb_03")
    cmds.matchTransform("Bind_Thumb_End_","Loc_Thumb_End")
    
    cmds.matchTransform("Bind_Index_01_","Loc_Index_01")
    cmds.matchTransform("Bind_Index_02_","Loc_Index_02")
    cmds.matchTransform("Bind_Index_03_","Loc_Index_03")
    cmds.matchTransform("Bind_Index_End_","Loc_Index_End")
    
    cmds.matchTransform("Bind_Middle_01_","Loc_Middle_01")
    cmds.matchTransform("Bind_Middle_02_","Loc_Middle_02")
    cmds.matchTransform("Bind_Middle_03_","Loc_Middle_03")
    cmds.matchTransform("Bind_Middle_End_","Loc_Middle_End")
    
    cmds.matchTransform("Bind_Ring_01_","Loc_Ring_01")
    cmds.matchTransform("Bind_Ring_02_","Loc_Ring_02")
    cmds.matchTransform("Bind_Ring_03_","Loc_Ring_03")
    cmds.matchTransform("Bind_Ring_End_","Loc_Ring_End")
    
    cmds.matchTransform("Bind_Pinky_01_","Loc_Pinky_01")
    cmds.matchTransform("Bind_Pinky_02_","Loc_Pinky_02")
    cmds.matchTransform("Bind_Pinky_03_","Loc_Pinky_03")
    cmds.matchTransform("Bind_Pinky_End_","Loc_Pinky_End")
    
    cmds.matchTransform("Bind_Hand_offset", "Loc_Hand")
    
    
    #CREATE HIERARCHY
    cmds.parent( "Bind_Hand_", JntGrp )
    cmds.parent( "Bind_Clamp_", "Bind_Hand_" )
    cmds.parent( "Bind_Thumb_01_", "Bind_Hand_" )
    cmds.parent( "Bind_Index_01_", "Bind_Palm_" )
    cmds.parent( "Bind_Middle_01_", "Bind_Palm_" )
    cmds.parent( "Bind_Ring_01_", "Bind_Palm_" )
    cmds.parent( "Bind_Pinky_01_", "Bind_Clamp_" )
    
    #COLOR JOINTS
    for a in allJnt:
        cmds.setAttr ( a + ".useOutlinerColor" , True)
        cmds.setAttr ( a + ".outlinerColor" , 1,1,1)
        mel.eval('AEdagNodeCommonRefreshOutliners();')    
        cmds.setAttr( a + ".overrideEnabled", 1)
        cmds.setAttr( a + ".overrideColor", 16)
        
    cmds.select(allJnt)
    cmds.makeIdentity( apply=True )
    
    
    
    
    
def handCTRL ( *args ):
    print "bouh"
    allCTRL = ["CTRL_HandAttr_", "FK_Clamp_", "FK_Thumb_01_", "FK_Thumb_02_", "FK_Thumb_03_", "FK_Index_01_", "FK_Index_02_",
    "FK_Index_03_", "FK_Middle_01_", "FK_Middle_02_", "FK_Middle_03_", "FK_Ring_01_", "FK_Ring_02_", "FK_Ring_03_", "FK_Pinky_01_",
    "FK_Pinky_02_", "FK_Pinky_03_"]
    #CREATE CTRLS
    points = [[-1.0, 0.0, 0.0],
          [-1.0, 0.0, -3.0],
          [-2.0, 0.0, -3.0],
          [0.0, 0.0, -5.0],
          [2.0, 0.0, -3.0],
          [1.0, 0.0, -3.0],
          [1.0, 0.0, 0.0],
          [-1.0, 0.0, 0.0]]
    cHandAttr = cmds.curve(ep=points, d=1, n= "CTRL_HandAttr_" )
    cClamp = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Clamp_" )
    
    cThumb01 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Thumb_01_" )
    cThumb02 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Thumb_02_" )
    cThumb03 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Thumb_03_" )
    
    cIndex01 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Index_01_" )
    cIndex02 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Index_02_" )
    cIndex03 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Index_03_" )
    
    cMiddle01 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Middle_01_" )
    cMiddle02 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Middle_02_" )
    cMiddle03 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Middle_03_" )
    
    cRing01 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Ring_01_" )
    cRing02 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Ring_02_" )
    cRing03 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Ring_03_" )
    
    cPinky01 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Pinky_01_" )
    cPinky02 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Pinky_02_" )
    cPinky03 = cmds.circle( nr=(0, 1, 0), c=(0, 0, 0), n= "FK_Pinky_03_" )
    
    #MATCH CTRLS TO JOINTS
    cmds.matchTransform(cHandAttr,"Bind_Hand_")
    cmds.matchTransform(cThumb01,"Bind_Thumb_01_")
    cmds.matchTransform(cThumb02,"Bind_Thumb_02_")
    cmds.matchTransform(cThumb03,"Bind_Thumb_03_")
    
    cmds.matchTransform(cIndex01,"Bind_Index_01_")
    cmds.matchTransform(cIndex02,"Bind_Index_02_")
    cmds.matchTransform(cIndex03,"Bind_Index_03_")
    
    cmds.matchTransform(cMiddle01,"Bind_Middle_01_")
    cmds.matchTransform(cMiddle02,"Bind_Middle_02_")
    cmds.matchTransform(cMiddle03,"Bind_Middle_03_")
    
    cmds.matchTransform(cRing01,"Bind_Ring_01_")
    cmds.matchTransform(cRing02,"Bind_Ring_02_")
    cmds.matchTransform(cRing03,"Bind_Ring_03_")
    
    cmds.matchTransform(cPinky01,"Bind_Pinky_01_")
    cmds.matchTransform(cPinky02,"Bind_Pinky_02_")
    cmds.matchTransform(cPinky03,"Bind_Pinky_03_")
    
    
    
    
    
    #CREATE GRP
    
    #OFFSET HAND
    offsetHand = cmds.group( em=True, n="Offset_CTRL_HandAttr_")
    cmds.matchTransform(offsetHand, cHandAttr, pos=True, rot=True)
    
    grpHand = cmds.group( em=True, n="CTRL_Fingers_")
    
    #THUMB
    #offset
    offsetThumb01 = cmds.group( em=True, n="Offset_FK_Thumb_01_")
    cmds.matchTransform(offsetThumb01, cThumb01, pos=True, rot=True)
    #offset
    offsetThumb02 = cmds.group( em=True, n="Offset_FK_Thumb_02_")
    cmds.matchTransform(offsetThumb02, cThumb02, pos=True, rot=True)
    #offset
    offsetThumb03 = cmds.group( em=True, n="Offset_FK_Thumb_03_")
    cmds.matchTransform(offsetThumb03, cThumb01, pos=True, rot=True)
    
    #THUMB HIERARCHY
    cmds.parent(cThumb01, offsetThumb01)
    
    cmds.parent(cThumb02, offsetThumb02)
    
    cmds.parent(cThumb03, offsetThumb03)
    
    
    
    #INDEX
    #offset
    offsetIndex01 = cmds.group( em=True, n="Offset_FK_Index_01_")
    cmds.matchTransform(offsetIndex01, cIndex01, pos=True, rot=True)
    #spread
    spreadIndex01 = cmds.group( em=True, n="Spread_FK_Index_01_")
    cmds.matchTransform(spreadIndex01, cIndex01, pos=True, rot=True)
    #curl
    curlIndex01 = cmds.group( em=True, n="Curl_FK_Index_01_")
    cmds.matchTransform(curlIndex01, cIndex01, pos=True, rot=True)
    
    #offset
    offsetIndex02 = cmds.group( em=True, n="Offset_FK_Index_02_")
    cmds.matchTransform(offsetIndex02, cIndex02, pos=True, rot=True)
    #spread
    spreadIndex02 = cmds.group( em=True, n="Spread_FK_Index_02_")
    cmds.matchTransform(spreadIndex02, cIndex02, pos=True, rot=True)
    #curl
    curlIndex02 = cmds.group( em=True, n="Curl_FK_Index_02_")
    cmds.matchTransform(curlIndex02, cIndex02, pos=True, rot=True)
    
    #offset
    offsetIndex03 = cmds.group( em=True, n="Offset_FK_Index_03_")
    cmds.matchTransform(offsetIndex03, cIndex03, pos=True, rot=True)
    #spread
    spreadIndex03 = cmds.group( em=True, n="Spread_FK_Index_03_")
    cmds.matchTransform(spreadIndex03, cIndex03, pos=True, rot=True)
    #curl
    curlIndex03 = cmds.group( em=True, n="Curl_FK_Index_03_")
    cmds.matchTransform(curlIndex03, cIndex03, pos=True, rot=True)
    
    #INDEX HIERARCHY
    cmds.parent(cIndex01, curlIndex01)
    cmds.parent(curlIndex01, spreadIndex01)
    cmds.parent(spreadIndex01, offsetIndex01)
    
    cmds.parent(cIndex02, curlIndex02)
    cmds.parent(curlIndex02, spreadIndex02)
    cmds.parent(spreadIndex02, offsetIndex02)
    
    cmds.parent(cIndex03, curlIndex03)
    cmds.parent(curlIndex03, spreadIndex03)
    cmds.parent(spreadIndex03, offsetIndex03)
    
    
    #MIDDLE
    #offset
    offsetMiddle01 = cmds.group( em=True, n="Offset_FK_Middle_01_")
    cmds.matchTransform(offsetMiddle01, cMiddle01, pos=True, rot=True)
    #spread
    spreadMiddle01 = cmds.group( em=True, n="Spread_FK_Middle_01_")
    cmds.matchTransform(spreadIndex01, cMiddle01, pos=True, rot=True)
    #curl
    curlMiddle01 = cmds.group( em=True, n="Curl_FK_Middle_01_")
    cmds.matchTransform(curlMiddle01, cMiddle01, pos=True, rot=True)
    
    #offset
    offsetMiddle02 = cmds.group( em=True, n="Offset_FK_Middle_02_")
    cmds.matchTransform(offsetMiddle02, cMiddle02, pos=True, rot=True)
    #spread
    spreadMiddle02 = cmds.group( em=True, n="Spread_FK_Middle_02_")
    cmds.matchTransform(spreadMiddle02, cMiddle02, pos=True, rot=True)
    #curl
    curlMiddle02 = cmds.group( em=True, n="Curl_FK_Middle_02_")
    cmds.matchTransform(curlMiddle02, cMiddle02, pos=True, rot=True)
    
    #offset
    offsetMiddle03 = cmds.group( em=True, n="Offset_FK_Middle_03_")
    cmds.matchTransform(offsetMiddle03, cMiddle03, pos=True, rot=True)
    #spread
    spreadMiddle03 = cmds.group( em=True, n="Spread_FK_Middle_03_")
    cmds.matchTransform(spreadMiddle03, cMiddle03, pos=True, rot=True)
    #curl
    curlMiddle03 = cmds.group( em=True, n="Curl_FK_Middle_03_")
    cmds.matchTransform(curlMiddle03, cMiddle03, pos=True, rot=True)
    
    #MIDDLE HIERARCHY
    cmds.parent(cMiddle01, curlMiddle01)
    cmds.parent(curlMiddle01, spreadMiddle01)
    cmds.parent(spreadMiddle01, offsetMiddle01)
    
    cmds.parent(cMiddle02, curlMiddle02)
    cmds.parent(curlMiddle02, spreadMiddle02)
    cmds.parent(spreadMiddle02, offsetMiddle02)
    
    cmds.parent(cMiddle03, curlMiddle03)
    cmds.parent(curlMiddle03, spreadMiddle03)
    cmds.parent(spreadMiddle03, offsetMiddle03)
    
    
    
    #RING
    #offset
    offsetRing01 = cmds.group( em=True, n="Offset_FK_Ring_01_")
    cmds.matchTransform(offsetRing01, cRing01, pos=True, rot=True)
    #spread
    spreadRing01 = cmds.group( em=True, n="Spread_FK_Ring_01_")
    cmds.matchTransform(spreadIndex01, cMiddle01, pos=True, rot=True)
    #curl
    curlRing01 = cmds.group( em=True, n="Curl_FK_Ring_01_")
    cmds.matchTransform(curlMiddle01, cMiddle01, pos=True, rot=True)
    
    #offset
    offsetRing02 = cmds.group( em=True, n="Offset_FK_Ring_02_")
    cmds.matchTransform(offsetRing02, cRing02, pos=True, rot=True)
    #spread
    spreadRing02 = cmds.group( em=True, n="Spread_FK_Ring_02_")
    cmds.matchTransform(spreadRing02, cRing02, pos=True, rot=True)
    #curl
    curlRing02 = cmds.group( em=True, n="Curl_FK_Ring_02_")
    cmds.matchTransform(curlRing02, cRing02, pos=True, rot=True)
    
    #offset
    offsetRing03 = cmds.group( em=True, n="Offset_FK_Ring_03_")
    cmds.matchTransform(offsetRing03, cRing03, pos=True, rot=True)
    #spread
    spreadRing03 = cmds.group( em=True, n="Spread_FK_Ring_03_")
    cmds.matchTransform(spreadRing03, cRing03, pos=True, rot=True)
    #curl
    curlRing03 = cmds.group( em=True, n="Curl_FK_Ring_03_")
    cmds.matchTransform(curlRing03, cRing03, pos=True, rot=True)
    
    #RING HIERARCHY
    cmds.parent(cRing01, curlRing01)
    cmds.parent(curlRing01, spreadRing01)
    cmds.parent(spreadRing01, offsetRing01)
    
    cmds.parent(cRing02, curlRing02)
    cmds.parent(curlRing02, spreadRing02)
    cmds.parent(spreadRing02, offsetRing02)
    
    cmds.parent(cRing03, curlRing03)
    cmds.parent(curlRing03, spreadRing03)
    cmds.parent(spreadRing03, offsetRing03)
    
    #CLAMP
    #offset
    offsetClamp = cmds.group( em=True, n="Offset_FK_Clamp_")
    cmds.matchTransform(offsetClamp, cClamp, pos=True, rot=True)
    #move
    moveClamp = cmds.group( em=True, n="Move_FK_Clamp_")
    cmds.matchTransform(moveClamp, cClamp, pos=True, rot=True)
    
    #PINKY
    #offset
    offsetPinky01 = cmds.group( em=True, n="Offset_FK_Pinky_01_")
    cmds.matchTransform(offsetPinky01, cPinky01, pos=True, rot=True)
    #spread
    spreadPinky01 = cmds.group( em=True, n="Spread_FK_Pinky_01_")
    cmds.matchTransform(spreadPinky01, cPinky01, pos=True, rot=True)
    #curl
    curlPinky01 = cmds.group( em=True, n="Curl_FK_Pinky_01_")
    cmds.matchTransform(curlPinky01, cPinky01, pos=True, rot=True)
    
    #offset
    offsetPinky02 = cmds.group( em=True, n="Offset_FK_Pinky_02_")
    cmds.matchTransform(offsetPinky02, cPinky02, pos=True, rot=True)
    #spread
    spreadPinky02 = cmds.group( em=True, n="Spread_FK_Pinky_02_")
    cmds.matchTransform(spreadPinky02, cPinky02, pos=True, rot=True)
    #curl
    curlPinky02 = cmds.group( em=True, n="Curl_FK_Pinky_02_")
    cmds.matchTransform(curlPinky02, cPinky02, pos=True, rot=True)
    
    #offset
    offsetPinky03 = cmds.group( em=True, n="Offset_FK_Pinky_03_")
    cmds.matchTransform(offsetRing03, cRing03, pos=True, rot=True)
    #spread
    spreadPinky03 = cmds.group( em=True, n="Spread_FK_Pinky_03_")
    cmds.matchTransform(spreadRing03, cRing03, pos=True, rot=True)
    #curl
    curlPinky03 = cmds.group( em=True, n="Curl_FK_Pinky_03_")
    cmds.matchTransform(curlPinky03, cPinky03, pos=True, rot=True)
    
    #PINKY HIERARCHY
    cmds.parent(cPinky01, curlPinky01)
    cmds.parent(curlPinky01, spreadPinky01)
    cmds.parent(spreadPinky01, offsetPinky01)
    
    cmds.parent(cPinky02, curlPinky02)
    cmds.parent(curlPinky02, spreadPinky02)
    cmds.parent(spreadPinky02, offsetPinky02)
    
    cmds.parent(cPinky03, curlPinky03)
    cmds.parent(curlPinky03, spreadPinky03)
    cmds.parent(spreadPinky03, offsetPinky03)
    
    
    
    
    #PARENT GRP GLOBAL
    cmds.parent(offsetThumb03, cThumb02)
    cmds.parent(offsetThumb02, cThumb01)
    
    cmds.parent(offsetIndex03, cIndex02)
    cmds.parent(offsetIndex02, cIndex01)
    
    cmds.parent(offsetMiddle03, cMiddle02)
    cmds.parent(offsetMiddle02, cMiddle01)
    
    cmds.parent(offsetRing03, cRing02)
    cmds.parent(offsetRing02, cRing01)
    
    cmds.parent(offsetPinky03, cPinky02)
    cmds.parent(offsetPinky02, cPinky01)
    cmds.parent(offsetPinky01, cClamp)
    
    
    cmds.parent(offsetThumb01, grpHand )
    cmds.parent(offsetIndex01, grpHand )
    cmds.parent(offsetMiddle01, grpHand )
    cmds.parent(offsetRing01, grpHand )
    cmds.parent(offsetPinky01, grpHand )
    
    cmds.parent(grpHand, cHandAttr )
    cmds.parent(cHandAttr, offsetHand )
    
        
       
        

    
    

######################################## MENU BAR #############################################

def matrixWindow(*args):
    import GiandoMatrix
    GiandoMatrix.start()

def miro ( *args ):
    url="https://miro.com/app/board/o9J_la_0XFE=/"
    webbrowser.open(url)

def credits(*args):#open a new window with text
    uicredits = cmds.window(title="Credits", w=280, h=180, toolbox=True)
    cmds.frameLayout(p=uicredits, label="Credits")
    cmds.text(label="    ")
    cmds.text("Tools by Tristan Giandoriggio\n CG generalist student at ESMA\n +33651839815\n giando.tristan@gmail.com\n Looking for an internship.")
    cmds.button( label="My LinkedIn", enableBackground=True, command=lkilink, backgroundColor=[1.0, 0.4, 1.0])
    cmds.text(label="    ")

    cmds.showWindow(uicredits)


def portfolio(*args):
    url="https://www.artstation.com/tristangiando"
    webbrowser.open(url)
    
def lkilink(*args):
    url="www.linkedin.com/in/tristan-giandoriggio-429706195"
    webbrowser.open(url)




#############################
## USER INTERFACE SETTINGS ##
#############################

diUi = {}
diUi["lays"] = {}
diUi["ctrls"] = {}
diUi["window"] = {}

if cmds.window("giando", exists=True):
	cmds.deleteUI("giando")
window = diUi["window"]["main"]= cmds.window("giando", title="GiandoRigTips_1.7.002", width=150, menuBar=True, sizeable=True, maximizeButton=False)


###### LAYERS HIERARCHY



diUi["lays"]["ribbonGlobal"] = cmds.frameLayout(l="RIBBONS", p=diUi["window"]["main"], bgc=(0.0,0.1,0.25), cll=True)
diUi["lays"]["rTabs"]= cmds.tabLayout( innerMarginWidth=5, innerMarginHeight=5, p=diUi["lays"]["ribbonGlobal"], scr = True )


diUi["lays"]["facialRoot"] = cmds.columnLayout(adj=True, p=diUi["lays"]["rTabs"])
diUi["lays"]["facialInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["facialRoot"])
diUi["lays"]["facialText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["facialRoot"])

diUi["lays"]["bodyRoot"] = cmds.columnLayout(adj=True, p=diUi["lays"]["rTabs"])
diUi["lays"]["bodyInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["bodyRoot"])
diUi["lays"]["bodyText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["bodyRoot"])

diUi["lays"]["twistRoot"] = cmds.frameLayout(l="SET UP THE TWIST", p=diUi["lays"]["bodyRoot"], bgc=(0.0,0.1,0.25), cll=True)
diUi["lays"]["twistInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["twistRoot"])

diUi["lays"]["stretchGlobal"] = cmds.frameLayout(l="AUTO STRETCH", p=diUi["window"]["main"], bgc=(0.0,0.1,0.25), cll=True)
diUi["lays"]["tabs"]= cmds.tabLayout( innerMarginWidth=5, innerMarginHeight=5, p=diUi["lays"]["stretchGlobal"], scr = True)

diUi["lays"]["stretchRoot"] = cmds.columnLayout(adj=True, p=diUi["lays"]["tabs"])
diUi["lays"]["stretchInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["stretchRoot"])
diUi["lays"]["stretchText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["stretchRoot"])

diUi["lays"]["stretchArmRoot"] = cmds.columnLayout(adj=True, p=diUi["lays"]["tabs"])
diUi["lays"]["stretchArmInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["stretchArmRoot"])
diUi["lays"]["stretchArmText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["stretchArmRoot"])


cmds.tabLayout(diUi["lays"]["rTabs"], edit=True, tabLabel=( (diUi["lays"]["facialRoot"], "FACIAL"), ( diUi["lays"]["bodyRoot"], "BODY")))
cmds.tabLayout(diUi["lays"]["tabs"], edit=True, tabLabel=( (diUi["lays"]["stretchRoot"], "COLUMN"), ( diUi["lays"]["stretchArmRoot"], "ARMS and LEGS")))


diUi["lays"]["vracGlobal"] = cmds.frameLayout(l="END MEMBERS", p=diUi["window"]["main"], bgc=(0.0,0.1,0.25), cll=True)
diUi["lays"]["vracTabs"]= cmds.tabLayout( innerMarginWidth=5, innerMarginHeight=5, p=diUi["lays"]["vracGlobal"], scr = True)
diUi["lays"]["vracRoot"] = cmds.columnLayout(adj=True, p=diUi["lays"]["vracTabs"])
diUi["lays"]["vracText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["vracRoot"])
diUi["lays"]["vracInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["vracRoot"])

diUi["lays"]["handText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["vracTabs"])
diUi["lays"]["handInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["handText"])


cmds.tabLayout(diUi["lays"]["vracTabs"], edit=True, tabLabel=( (diUi["lays"]["vracRoot"], "FEET"), ( diUi["lays"]["handText"], "HANDS")))


cmds.menu( label= "File")
cmds.menuItem( label= "Matrix Constrain", i= "X:/prefs/icons/FilRouge/matrix.jpg", c = matrixWindow )
cmds.menuItem( label= "Miro", i= "X:/prefs/icons/FilRouge/miro.png", c= miro )

cmds.menu( label="Credits" )
cmds.menuItem( label="Portfolio", i= "X:/prefs/icons/FilRouge/artStation.png", command=portfolio )
cmds.menuItem( label="About us", i= "X:/prefs/icons/FilRouge/linkedIn.png", command=credits )








###########################################################





###### FACIAL RIBBON

cmds.setParent (diUi["lays"]["facialInfo"])

cmds.text( label= "Ribbon Name")
ribNameText = cmds.textField(tx="CornerCheek_L")
cmds.text( label= "Number Of Follicles")
amountText = cmds.intSliderGrp(field=True, min= 1, max=9, value=3)
cmds.text( label= "Number Of Drv Jnts")
jntAmountText = cmds.intSliderGrp(field=True, min= 1, max=9, value=3)

###### FACIAL TEXT

cmds.setParent (diUi["lays"]["facialText"])

cmds.button ( label = "CREATE FACIAL RIBBON", backgroundColor=[0.0, 0.4, 0.4], c= createFacialRibbon )
cmds.text ( label = "For the script to work, you just have to ", align="center")
cmds.text (label = "select the edges you want.", align="center")



##################################################



###### BODY RIBBON

cmds.setParent (diUi["lays"]["bodyInfo"])

cmds.text( label= "Ribbon CTRL GLobal Name", align="right")
ctrlGNameText = cmds.textField( tx="CTRL_Ribbon_01_Global")
cmds.text( label= "Ribbon CTRL A Name", align="right")
ctrlANameText = cmds.textField( tx="CTRL_Ribbon_A01")
cmds.text( label= "Ribbon CTRL B Name", align="right")
ctrlBNameText = cmds.textField( tx="CTRL_Ribbon_B01")


###### BODY TEXT
cmds.setParent (diUi["lays"]["bodyText"])

cmds.button ( label = "CONSTRAIN BODY RIBBON", align= "center", backgroundColor=[0.0, 0.4, 0.4], c= bodyRibbon )




#############################################




###### TWIST INFO
cmds.setParent (diUi["lays"]["twistInfo"])

cmds.text( label= "CTRL Ribbon 01 Name", align="right")
rib1NameText = cmds.textField( tx="Arm_R_CTRL_Ribbon_A01")
cmds.text( label= "CTRL Ribbon 02 Name", align="right")
rib2NameText = cmds.textField( tx="Arm_R_CTRL_Ribbon_B01")
cmds.separator(h=10)
cmds.separator()

cmds.button ( label = "CREATE ARM NODES", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = armSU )
cmds.button ( label = "CREATE LEG NODES", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = legSU )
cmds.button ( label = "TWIST EXTRACTOR", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = twistExtractor )



##########################################



###### STRETCH COLUMN INFO
cmds.setParent (diUi["lays"]["stretchInfo"])

cmds.text( label= "Global Move Name", align="right")
gMoveNameText = cmds.textField( tx="GLOBAL_MOVE_01")
cmds.text( label= "Curve Spine Name", align="right")
cSpineNameText = cmds.textField( tx="Crv_Spine")
cmds.text( label= "CTRL on which to create Attr", align="right")
cRootNameText = cmds.textField( tx="CTRL_Root")
cmds.separator(h=10)
cmds.separator()


###### STRETCH COLUMN TEXT
cmds.setParent (diUi["lays"]["stretchText"])

cmds.text ( label = "Select the column joints before running the script", align = "center")
cmds.text ( label = "    " )

cmds.button ( label = "CREATE STRETCHY COLUMN", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = stretchyColumn )





#######################################



###### AUTO STRETCH INFO
cmds.setParent (diUi["lays"]["stretchArmInfo"])

cmds.text( label= "Global Move Name", align="right")
gMoveNameText = cmds.textField( tx="GLOBAL_MOVE_01")
cmds.text( label= "CTRL on which to create Attr", align="right")
switchNameText = cmds.textField( tx="CTRL_Switch_Arm_L")
cmds.text( label= "Body Part Name", align="right")
suffixNameText = cmds.textField( tx="Arm_L")

cmds.separator(h=10)
cmds.separator(h=10)

cmds.text( label= "Joint 01 Name", align="right")
shoulderNameText = cmds.textField( tx="Drv_Jnt_Shoulder_L")
cmds.text( label= "Joint 02 Name", align="right")
elbowNameText = cmds.textField( tx="Drv_Jnt_Elbow_L")
cmds.text( label= "Joint 03 Name", align="right")
wristNameText = cmds.textField( tx="Drv_Jnt_Wrist_L")

cmds.separator(h=10)
cmds.separator(h=10)



cmds.button ( label = "CREATE DIST LOCATOR", align= "center", backgroundColor=[0.0, 0.4, 0.4], c= distLoc )
cmds.button ( label = "CREATE AUTO STRETCH", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = stretchy )



###### AUTO STRETCH TEXT
cmds.setParent (diUi["lays"]["stretchArmText"])



cmds.text ( label = "Select the CTRL FK of the shoulder or thigh" )
cmds.text ( label = " then click on DIST LOCATOR.", align = "center")
cmds.text ( label = "Then select the CTRL IK and click again on DIST LOCATOR.", align = "center")
cmds.text ( label = "Finally, launch the AUTO STRETCH !!", align = "center")



###########################################


###### FOOT TEXT
cmds.setParent (diUi["lays"]["vracText"])

cmds.text( label= "BEFORE YOU BEGIN, you must have made", align="left")
cmds.text( label= "- an IK on the leg named 'IK_Leg_L'.", align="left")
cmds.text( label= "- the link between the joints of the leg and the foot.", align="left")
cmds.text( label= "    " )
cmds.text( label= "1. Select the CTRL IK and create the HIERARCHY.", align="left")
cmds.text( label= "2. Place the LOCATORS in the desired locations.", align="left")
cmds.text( label= "3. FREEZE TRANSFORMS.", align="left")
cmds.text( label= "4. Select the CTRL IK and start the ATTRIBUTES script.", align="left")



###### FOOT INFO
cmds.setParent (diUi["lays"]["vracInfo"])


cmds.text( label= "Suffix", align="right")
suffixText = cmds.textField( tx="_L")

cmds.button ( label = "CREATE HIERARCHY", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = footHierarchy )
cmds.button ( label = "CREATE FOOT ATTRIBUTES", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = footAttr)



###### HAND INFO

cmds.setParent (diUi["lays"]["handInfo"])

cmds.button ( label = "CREATE LOCATORS", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = handLOC )
cmds.button ( label = "CREATE SKELETON", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = handSKELETON )
cmds.button ( label = "CREATE CTRLS", align= "center", backgroundColor=[0.0, 0.4, 0.4], c = handCTRL )






cmds.showWindow (diUi["window"]["main"])
