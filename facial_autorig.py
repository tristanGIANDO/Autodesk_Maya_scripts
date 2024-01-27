############################# THE HEAD #######################################################



def facialLocators ( *args ):
    
    # CREATE LOCATORS
    
    cmds.spaceLocator( n= ("Loc_Neck_01"))
    cmds.spaceLocator( n= ("Loc_Head_Pivot_01"))
    cmds.spaceLocator( n= ("Loc_Head_Pivot_02"))
    cmds.spaceLocator( n= ("Loc_Jaw_Up_End"))
    cmds.spaceLocator( n= ("Loc_Jaw_Down_01"))
    cmds.spaceLocator( n= ("Loc_Jaw_Down_End"))
    cmds.spaceLocator( n= ("Loc_Ear_01_L"))
    cmds.spaceLocator( n= ("Loc_Ear_End_L"))
    cmds.spaceLocator( n= ("Loc_Ear_01_R"))
    cmds.spaceLocator( n= ("Loc_Ear_End_R"))
    cmds.spaceLocator( n= "Loc_Center_Eye_L")
    cmds.spaceLocator( n= "Loc_Pupil_L")
    cmds.spaceLocator( n= "Loc_EyeLid_Up_L")
    cmds.spaceLocator( n= "Loc_EyeLid_Down_L")
    cmds.spaceLocator( n= "Loc_Center_Eye_R")
    cmds.spaceLocator( n= "Loc_Pupil_R")
    cmds.spaceLocator( n= "Loc_EyeLid_Up_R")
    cmds.spaceLocator( n= "Loc_EyeLid_Down_R")
   
   
    
###### FACIAL SKELETON ######################################################################### 
    
    
def facialRig ( *args ):
    
    allJnt = ["Bind_Neck_01", "Bind_Neck_End", "Bind_Head_Pivot_01", "Bind_Head_Pivot_02", "Bind_Jaw_Down_01",
    "Bind_Jaw_Down_End", "Bind_Jaw_Up_01", "Bind_Jaw_Up_End", "Bind_Ear_01_L", "Bind_Ear_End_L", "Bind_Ear_01_R",
    "Bind_Ear_End_R", "Bind_Eye_01_L", "Bind_Eye_End_L", "Bind_Eyelid_Up_01_L", "Bind_Eyelid_Up_End_L",
    "Bind_Eyelid_Down_01_L", "Bind_Eyelid_Down_End_L", "Bind_Eye_01_R", "Bind_Eye_End_R", "Bind_Eyelid_Up_01_R",
    "Bind_Eyelid_Up_End_R", "Bind_Eyelid_Down_01_R", "Bind_Eyelid_Down_End_R"]
    
    # CREATE JOINTS
    cmds.joint( p= (0,0,0) )
    Neck01 = cmds.joint( n = "Bind_Neck_01", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    NeckEnd = cmds.joint( n = "Bind_Neck_End", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    HeadPivot01 = cmds.joint( n = "Bind_Head_Pivot_01", e=True, zso=True, oj='xyz', rad=1 )
    cmds.joint( p= (0,0,0) )
    HeadPivot02 = cmds.joint( n = "Bind_Head_Pivot_02", e=True, zso=True, oj='xyz', rad=.5 ) 
    
    cmds.joint( p= (0,0,0) )
    JawDown01 = cmds.joint( n = "Bind_Jaw_Down_01", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    JawDownEnd = cmds.joint( n = "Bind_Jaw_Down_End", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    JawUp01 = cmds.joint( n = "Bind_Jaw_Up_01", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    JawUpEnd = cmds.joint( n = "Bind_Jaw_Up_End", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Ear01L = cmds.joint( n = "Bind_Ear_01_L", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    EarEndL = cmds.joint( n = "Bind_Ear_End_L", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Ear01R = cmds.joint( n = "Bind_Ear_01_R", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    EarEndR = cmds.joint( n = "Bind_Ear_End_R", e=True, zso=True, oj='xyz', rad=.5 )
   
    cmds.joint( p= (0,0,0) )
    Eye01L = cmds.joint( n = "Bind_Eye_01_L", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    EyeEndL = cmds.joint( n = "Bind_Eye_End_L", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    EyelidUp01L = cmds.joint( n = "Bind_Eyelid_Up_01_L", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    EyelidUpEndL = cmds.joint( n = "Bind_Eyelid_Up_End_L", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    EyelidDown01L = cmds.joint( n = "Bind_Eyelid_Down_01_L", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    EyelidDwnEndL = cmds.joint( n = "Bind_Eyelid_Down_End_L", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    Eye01R = cmds.joint( n = "Bind_Eye_01_R", e=True, zso=True, oj='xyz' )
    cmds.joint( p= (0,0,0) )
    EyeEndR = cmds.joint( n = "Bind_Eye_End_R", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    EyelidUp01R = cmds.joint( n = "Bind_Eyelid_Up_01_R", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    EyelidUpEndR = cmds.joint( n = "Bind_Eyelid_Up_End_R", e=True, zso=True, oj='xyz', rad=.5 )
    
    cmds.joint( p= (0,0,0) )
    EyelidDown01R = cmds.joint( n = "Bind_Eyelid_Down_01_R", e=True, zso=True, oj='xyz', rad=.5 )
    cmds.joint( p= (0,0,0) )
    EyelidDownEndR = cmds.joint( n = "Bind_Eyelid_Down_End_R", e=True, zso=True, oj='xyz', rad=.5 )
    
    


    #CREATE OFFSETS
    JntGrp = cmds.group( em=True, name="JOINTS_FACIAL_01")
    UpOffsetL = cmds.group( em=True, name="Bind_Eyelid_01_Up_L_offset")
    DownOffsetL = cmds.group( em=True, name="Bind_Eyelid_01_Down_L_offset")
    UpOffsetR = cmds.group( em=True, name="Bind_Eyelid_01_Up_R_offset")
    DownOffsetR = cmds.group( em=True, name="Bind_Eyelid_01_Down_R_offset")
    
    #MATCH JOINTS TO LOCATORS
    cmds.matchTransform("Bind_Neck_01","Loc_Neck_01")
    cmds.matchTransform("Bind_Neck_End","Loc_Head_Pivot_01")
    cmds.matchTransform("Bind_Head_Pivot_01","Loc_Head_Pivot_01")
    cmds.matchTransform("Bind_Head_Pivot_02","Loc_Head_Pivot_02")
    cmds.matchTransform("Bind_Jaw_Down_01","Loc_Jaw_Down_01")
    cmds.matchTransform("Bind_Jaw_Down_End","Loc_Jaw_Down_End")
    cmds.matchTransform("Bind_Jaw_Up_01","Loc_Head_Pivot_01")
    cmds.matchTransform("Bind_Jaw_Up_End","Loc_Jaw_Up_End")
    cmds.matchTransform("Bind_Ear_01_L","Loc_Ear_01_L")
    cmds.matchTransform("Bind_Ear_End_L","Loc_Ear_End_L")
    cmds.matchTransform("Bind_Ear_01_R","Loc_Ear_01_R")
    cmds.matchTransform("Bind_Ear_End_R","Loc_Ear_End_R")
    cmds.matchTransform("Bind_Eye_01_L","Loc_Center_Eye_L")
    cmds.matchTransform("Bind_Eye_End_L","Loc_Pupil_L")
    cmds.matchTransform("Bind_Eyelid_Up_01_L","Loc_Center_Eye_L")
    cmds.matchTransform("Bind_Eyelid_Up_End_L","Loc_EyeLid_Up_L")
    cmds.matchTransform("Bind_Eyelid_Down_01_L","Loc_Center_Eye_L")
    cmds.matchTransform("Bind_Eyelid_Down_End_L","Loc_EyeLid_Down_L")
    cmds.matchTransform("Bind_Eye_01_R","Loc_Center_Eye_R")
    cmds.matchTransform("Bind_Eye_End_R","Loc_Pupil_R")
    cmds.matchTransform("Bind_Eyelid_Up_01_R","Loc_Center_Eye_R")
    cmds.matchTransform("Bind_Eyelid_Up_End_R","Loc_EyeLid_Up_R")
    cmds.matchTransform("Bind_Eyelid_Down_01_R","Loc_Center_Eye_R")
    cmds.matchTransform("Bind_Eyelid_Down_End_R","Loc_EyeLid_Down_R")
    
    #MATCH OFFSETS TO JOINTS
    cmds.matchTransform("Bind_Eyelid_01_Up_L_offset","Bind_Eyelid_Up_01_L")
    cmds.matchTransform("Bind_Eyelid_01_Down_L_offset","Bind_Eyelid_Down_01_L")
    cmds.matchTransform("Bind_Eyelid_01_Up_R_offset","Bind_Eyelid_Up_01_R")
    cmds.matchTransform("Bind_Eyelid_01_Down_R_offset","Bind_Eyelid_Down_01_R")
    
    
    #CREATE HIERARCHY
    cmds.parent( "Bind_Neck_01", JntGrp )
    cmds.parent( "Bind_Head_Pivot_01", JntGrp )
    cmds.parent( "Bind_Jaw_Up_01", "Bind_Head_Pivot_02" )
    cmds.parent( "Bind_Ear_01_L", "Bind_Jaw_Up_01" )
    cmds.parent( "Bind_Ear_01_R", "Bind_Jaw_Up_01" )
    
    cmds.parent( "Bind_Eye_01_L", "Bind_Jaw_Up_01" )
    cmds.parent( "Bind_Eye_01_R", "Bind_Jaw_Up_01" )
    cmds.parent( "Bind_Eyelid_Up_01_L", UpOffsetL )
    cmds.parent( "Bind_Eyelid_Down_01_L", DownOffsetL )
    cmds.parent( "Bind_Eyelid_Up_01_R", UpOffsetR )
    cmds.parent( "Bind_Eyelid_Down_01_R", DownOffsetR )
    cmds.parent( UpOffsetL, "Bind_Jaw_Up_01" )
    cmds.parent( DownOffsetL, "Bind_Jaw_Up_01" )
    cmds.parent( UpOffsetR, "Bind_Jaw_Up_01" )
    cmds.parent( DownOffsetR, "Bind_Jaw_Up_01" )
    
    #CONSTRAIN HEAD PIVOT
    # CREATE NODES
    MultMatX  = cmds.shadingNode("multMatrix",asUtility=True, n="MultMatX_Head_Pivot_01")
    DecMatX = cmds.shadingNode("decomposeMatrix", asUtility=True, n="DecMatX_Head_Pivot_01")
    MultMatX_Offset = cmds.shadingNode("multMatrix",asUtility=True, n="MultMatX_Offset_Head_Pivot_01")
    DecMatX_Offset = cmds.shadingNode("decomposeMatrix", asUtility=True, n="DecMatX_Offset_Head_Pivot_01")
    # CREATE OFFSET
    cmds.connectAttr("Bind_Head_Pivot_01.worldMatrix[0]",MultMatX_Offset+".matrixIn[0]")
    cmds.connectAttr("Bind_Neck_End.worldInverseMatrix[0]",MultMatX_Offset+".matrixIn[1]")
    cmds.connectAttr(MultMatX_Offset+".matrixSum",DecMatX_Offset+".inputMatrix")
    cmds.disconnectAttr (MultMatX_Offset+".matrixSum",DecMatX_Offset+".inputMatrix")
    cmds.delete(MultMatX_Offset)
    # CONNECT OFFSET TO MULTIPLY AND DECOMPOSE MATRIX
    cmds.connectAttr(DecMatX_Offset+".inputMatrix",MultMatX+".matrixIn[0]")
    cmds.connectAttr("Bind_Neck_End.worldMatrix[0]",MultMatX+".matrixIn[1]")
    cmds.connectAttr("Bind_Head_Pivot_01.parentInverseMatrix[0]",MultMatX+".matrixIn[2]")
    cmds.connectAttr(MultMatX+".matrixSum",DecMatX+".inputMatrix")
    
    cmds.connectAttr(DecMatX+'.outputTranslate',"Bind_Head_Pivot_01.t")
    


    #COLOR JOINTS
    for a in allJnt:
        cmds.setAttr ( a + ".useOutlinerColor" , True)
        cmds.setAttr ( a + ".outlinerColor" , 1,1,1)
        mel.eval('AEdagNodeCommonRefreshOutliners();')    
        cmds.setAttr( a + ".overrideEnabled", 1)
        cmds.setAttr( a + ".overrideColor", 16)



###### FACIAL CTRL ##################################################################################


def facialCTRL ( *args ):
    
    allL = ["CTRL_Ear_L", "CTRL_Eyelid_Up_01_L", "CTRL_Eyelid_Down_01_L", "CTRL_Eye_L"]
    allR = ["CTRL_Ear_R", "CTRL_Eyelid_Up_01_R", "CTRL_Eyelid_Down_01_R", "CTRL_Eye_R"]
    allCenter = ["CTRL_Neck", "CTRL_Head_01", "CTRL_Head_02", "CTRL_Crane", "CTRL_Jaw", "CTRL_View"]
    allMaster = ["Master_Head_01", "Master_Head_02", "Master_Crane", "Master_Jaw", "Master_Ear_L", "Master_Ear_R",
    "Master_Eyelid_Up_01_L", "Master_Eyelid_Down_01_L", "Master_Eyelid_Up_01_R", "Master_Eyelid_Down_01_R",
    "Master_Eye_L", "Master_Eye_R"]
    
    #CREATE CTRLS
    cNeck = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Neck" )
    cHead01 = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Head_01" )
    cHead02 = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Head_02" )
    cCrane = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Crane" )
    cJaw = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Jaw" )
    cEarL = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Ear_L" )
    cEarR = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Ear_R" )
    cEyelidUpL = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Eyelid_Up_01_L" )
    cEyelidDownL = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Eyelid_Down_01_L" )
    cEyelidUpR = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Eyelid_Up_01_R" )
    cEyelidDownR = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Eyelid_Down_01_R" )
    view = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_View" )
    cmds.setAttr( "CTRL_View.scaleY", 1.5 )
    cmds.setAttr( "CTRL_View.scaleZ", 4 )
    eyeL = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Eye_L" )
    cmds.setAttr( "CTRL_Eye_L.translateZ", -2 )
    eyeR = cmds.circle( nr=(1, 0, 0), c=(0, 0, 0), n= "CTRL_Eye_R" )
    cmds.setAttr( "CTRL_Eye_R.translateZ", 2 )
    
    #CREATE OFFSETS AND MASTERS
    CtrlGrp = cmds.group( em=True, name="CTRLS_FACIAL_01")
    MastNeck = cmds.group( em=True, name="Master_Neck")
    MastHead01 = cmds.group( em=True, name="Master_Head_01")
    MastHead02 = cmds.group( em=True, name="Master_Head_02")
    MastCrane = cmds.group( em=True, name="Master_Crane")
    MastJaw = cmds.group( em=True, name="Master_Jaw")
    MastEarL = cmds.group( em=True, name="Master_Ear_L")
    MastEarR = cmds.group( em=True, name="Master_Ear_R")
    MastEyelidUpL = cmds.group( em=True, name="Master_Eyelid_Up_01_L")
    MastEyelidDownL = cmds.group( em=True, name="Master_Eyelid_Down_01_L")
    MastEyelidUpR = cmds.group( em=True, name="Master_Eyelid_Up_01_R")
    MastEyelidDownR = cmds.group( em=True, name="Master_Eyelid_Down_01_R")
    MastEyeL = cmds.group( em=True, name="Master_Eye_L")
    MastEyeR = cmds.group( em=True, name="Master_Eye_R")
    #move
    MoveEyelidUpL = cmds.group( em=True, name="CTRL_Eyelid_Up_01_L_move")
    MoveEyelidDownL = cmds.group( em=True, name="CTRL_Eyelid_Down_01_L_move")
    MoveEyelidUpR = cmds.group( em=True, name="CTRL_Eyelid_Up_01_R_move")
    MoveEyelidDownR = cmds.group( em=True, name="CTRL_Eyelid_Down_01_R_move")
    #offset
    HeadOffset = cmds.group( em=True, name="CTRL_Head_01_offset")
    ViewOffset = cmds.group( em=True, name="CTRL_View_offset")
    
    
    #CREATE HIERARCHY
    cmds.parent( cNeck, CtrlGrp )
    
    
    cmds.parent( HeadOffset, CtrlGrp )
    cmds.parent( cHead01, HeadOffset )
    
    
    cmds.parent( cHead02, cHead01 )
    
    
    cmds.parent( cCrane, cHead02 )
    cmds.parent( cEarL, cCrane )
    cmds.parent( cEarR, cCrane )
    
    cmds.parent( MastEyelidUpL, cCrane )
    cmds.parent( MoveEyelidUpL, MastEyelidUpL )
    cmds.parent( cEyelidUpL, MoveEyelidUpL )
    
    cmds.parent( MastEyelidDownL, cCrane )
    cmds.parent( MoveEyelidDownL, MastEyelidDownL )
    cmds.parent( cEyelidDownL, MoveEyelidDownL )
    
    cmds.parent( MastEyelidUpR, cCrane )
    cmds.parent( MoveEyelidUpR, MastEyelidUpR )
    cmds.parent( cEyelidUpR, MoveEyelidUpR )
    cmds.parent( cJaw, cHead02 )
    
    cmds.parent( MastEyelidDownR, cCrane )
    cmds.parent( MoveEyelidDownR, MastEyelidDownR )
    cmds.parent( cEyelidDownR, MoveEyelidDownR )
    
    cmds.parent( ViewOffset, CtrlGrp )
    cmds.parent( view, ViewOffset )
    cmds.parent( eyeL, view )
    cmds.parent( eyeR, view )
    
    #MATCH CTRL TO LOCATORS AND JOINTS
    #ctrls
    cmds.matchTransform(cNeck, "Bind_Neck_01")
    cmds.matchTransform(HeadOffset, "Bind_Head_Pivot_01")
    cmds.matchTransform(cHead02, "Bind_Head_Pivot_02")
    cmds.matchTransform(cCrane, "Bind_Head_Pivot_01")
    cmds.matchTransform(cEarL, "Bind_Ear_01_L")
    cmds.matchTransform(cEarR, "Bind_Ear_01_R")
    cmds.matchTransform(MastEyelidUpL, "Bind_Eyelid_Up_End_L")
    cmds.matchTransform(MastEyelidDownL, "Bind_Eyelid_Down_End_L")
    cmds.matchTransform(MastEyelidUpR, "Bind_Eyelid_Up_End_R")
    cmds.matchTransform(MastEyelidDownR, "Bind_Eyelid_Down_End_R")
    cmds.matchTransform(cJaw, "Bind_Jaw_Down_End")
    cmds.matchTransform(ViewOffset, "Loc_Jaw_Up_End")
    
    
    
    #masters
    cmds.matchTransform( MastNeck, cNeck )
    cmds.matchTransform( MastHead01, cHead01 )
    cmds.matchTransform( MastHead02, cHead02 )
    cmds.matchTransform( MastCrane, cCrane )
    cmds.matchTransform( MastJaw, cJaw )
    cmds.matchTransform( MastEarL, cEarL )
    cmds.matchTransform( MastEarR, cEarR )
    cmds.matchTransform( MastEyeL, eyeL )
    cmds.matchTransform( MastEyeR, eyeR )
    
    
    #FREEZE CTRLS
    cmds.makeIdentity( cHead02, apply=True )
    cmds.makeIdentity( cCrane, apply=True )
    cmds.makeIdentity( view, apply=True )
    
    
    #PARENT MASTER
    cmds.parent( MastNeck, cNeck )
    cmds.parent( MastHead01, cHead01 )
    cmds.parent( MastHead02, cHead02 )
    cmds.parent( MastCrane, cCrane )
    cmds.parent( MastJaw, cJaw )
    cmds.parent( MastEarL, cEarL )
    cmds.parent( MastEarR, cEarR )
    cmds.parent( MastEyeL, eyeL )
    cmds.parent( MastEyeR, eyeR )
    
    #MATCH PIVOTS
    cmds.matchTransform(cJaw, "Bind_Jaw_Down_01", piv= True)
    cmds.matchTransform(MastJaw, "Bind_Jaw_Down_01", piv= True)
    cmds.matchTransform(MastEyelidUpL, "Bind_Eye_01_L", piv= True)
    cmds.matchTransform(MastEyelidDownL, "Bind_Eye_01_L", piv= True)
    cmds.matchTransform(MastEyelidUpR, "Bind_Eye_01_R", piv= True)
    cmds.matchTransform(MastEyelidDownR, "Bind_Eye_01_R", piv= True)
    
    
    #COLOR CTRLS LEFT
    for a in allL:
        cmds.setAttr ( a + ".useOutlinerColor" , True)
        cmds.setAttr ( a + ".outlinerColor" , 1,0,0)
        mel.eval('AEdagNodeCommonRefreshOutliners();')    
        cmds.setAttr( a + ".overrideEnabled", 1)
        cmds.setAttr( a + ".overrideColor", 13)
        
    #COLOR CTRLS RIGHT
    for a in allR:
        cmds.setAttr ( a + ".useOutlinerColor" , True)
        cmds.setAttr ( a + ".outlinerColor" , 0.127, 0.716, 1)
        mel.eval('AEdagNodeCommonRefreshOutliners();')    
        cmds.setAttr( a + ".overrideEnabled", 1)
        cmds.setAttr( a + ".overrideColor", 6)
        
    #COLOR CTRLS CENTER
    for a in allCenter:
        cmds.setAttr ( a + ".useOutlinerColor" , True)
        cmds.setAttr ( a + ".outlinerColor" , 0, 1, 0)
        mel.eval('AEdagNodeCommonRefreshOutliners();')    
        cmds.setAttr( a + ".overrideEnabled", 1)
        cmds.setAttr( a + ".overrideColor", 14)
        
    #COLOR MASTER
    for a in allMaster:
        cmds.setAttr ( a + ".useOutlinerColor" , True)
        cmds.setAttr ( a + ".outlinerColor" , 1, 1, 0)
        


###### PARENT CTRLS ##########################################################################

def parentCtrl ( *args ):
     
    #ADD ATTR TO CTRL VIEW
    view = "CTRL_View"
    eyeL = "CTRL_Eye_L"
    eyeR = "CTRL_Eye_R"
    cmds.select(view)
    follow = cmds.addAttr( shortName= "follow", longName= "EyeLids_Follow", defaultValue= 0.3, minValue= 0, maxValue= 1, k=True )
    
    #CREATE NODES
    MultY  = cmds.shadingNode("multiplyDivide",asUtility=True, n="FollowEyeLids_Y_mult")
    MultZL  = cmds.shadingNode("multiplyDivide",asUtility=True, n="FollowEyeLids_L_Z_mult")
    MultZR  = cmds.shadingNode("multiplyDivide",asUtility=True, n="FollowEyeLids_R_Z_mult")

    #CONNECT ATTR
    cmds.connectAttr("Bind_Eye_01_L.rotateY", MultY + ".input1X")
    cmds.connectAttr("Bind_Eye_01_L.rotateZ", MultZL + ".input1X")
    cmds.connectAttr("Bind_Eye_01_L.rotateZ", MultZL + ".input1Y")
    cmds.connectAttr(MultY + ".outputX", "Bind_Eyelid_Up_01_L.rotateY")
    cmds.connectAttr(MultY + ".outputX", "Bind_Eyelid_Down_01_L.rotateY")
    cmds.connectAttr(MultZL + ".outputX", "Bind_Eyelid_Up_01_L.rotateZ")
    cmds.connectAttr(MultZL + ".outputY", "Bind_Eyelid_Down_01_L.rotateZ")
    
    cmds.connectAttr("Bind_Eye_01_R.rotateY", MultY + ".input1Y")
    cmds.connectAttr("Bind_Eye_01_R.rotateZ", MultZR + ".input1X")
    cmds.connectAttr(MultY + ".outputY", "Bind_Eyelid_Up_01_R.rotateY")
    cmds.connectAttr(MultY + ".outputY", "Bind_Eyelid_Down_01_R.rotateY")
    cmds.connectAttr(MultZR + ".outputX", "Bind_Eyelid_Up_01_R.rotateZ")
    cmds.connectAttr(MultZR + ".outputY", "Bind_Eyelid_Down_01_R.rotateZ")
    
    cmds.connectAttr(view + ".EyeLids_Follow", MultY + ".input2X")
    cmds.connectAttr(view + ".EyeLids_Follow", MultY + ".input2Y")
    
    #SET ATTR
    cmds.setAttr(MultZL + ".input2X", 0.6)
    cmds.setAttr(MultZL + ".input2Y", 0.35)
    cmds.setAttr(MultZR + ".input2X", 0.6)
    cmds.setAttr(MultZR + ".input2Y", 0.35)
    
    #CONSTRAINT AIM
    cmds.aimConstraint( eyeL, "Bind_Eye_01_L", wut= "objectrotation", mo= True  )
    cmds.aimConstraint( eyeR, "Bind_Eye_01_R", wut= "objectrotation", mo= True  )
    
    cmds.aimConstraint( "CTRL_Eyelid_Up_01_L", "Bind_Eyelid_01_Up_L_offset", wut= "objectrotation", mo= True )
    cmds.aimConstraint( "CTRL_Eyelid_Down_01_L", "Bind_Eyelid_01_Down_L_offset", wut= "objectrotation", mo= True  )
    
    cmds.aimConstraint( "CTRL_Eyelid_Up_01_R", "Bind_Eyelid_01_Up_R_offset", wut= "objectrotation", mo= True  )
    cmds.aimConstraint( "CTRL_Eyelid_Down_01_R", "Bind_Eyelid_01_Down_R_offset", wut= "objectrotation", mo= True  )
    
    ######
    
    #CONSTRAIN HEAD_01_OFFSET TO MASTER_NECK
    # CREATE NODES
    MultMatX  = cmds.shadingNode("multMatrix",asUtility=True, n="MultMatX_CTRL_Head_01_offset")
    DecMatX = cmds.shadingNode("decomposeMatrix", asUtility=True, n="DecMatX_CTRL_Head_01_offset")
    MultMatX_Offset = cmds.shadingNode("multMatrix",asUtility=True, n="MultMatX_Offset_CTRL_Head_01_offset")
    DecMatX_Offset = cmds.shadingNode("decomposeMatrix", asUtility=True, n="DecMatX_Offset_CTRL_Head_01_offset")
    # CREATE OFFSET
    cmds.connectAttr("CTRL_Head_01_offset.worldMatrix[0]",MultMatX_Offset+".matrixIn[0]")
    cmds.connectAttr("Master_Neck.worldInverseMatrix[0]",MultMatX_Offset+".matrixIn[1]")
    cmds.connectAttr(MultMatX_Offset+".matrixSum",DecMatX_Offset+".inputMatrix")
    cmds.disconnectAttr (MultMatX_Offset+".matrixSum",DecMatX_Offset+".inputMatrix")
    cmds.delete(MultMatX_Offset)
    # CONNECT OFFSET TO MULTIPLY AND DECOMPOSE MATRIX
    cmds.connectAttr(DecMatX_Offset+".inputMatrix",MultMatX+".matrixIn[0]")
    cmds.connectAttr("Master_Neck.worldMatrix[0]",MultMatX+".matrixIn[1]")
    cmds.connectAttr("CTRL_Head_01_offset.parentInverseMatrix[0]",MultMatX+".matrixIn[2]")
    cmds.connectAttr(MultMatX+".matrixSum",DecMatX+".inputMatrix")
    
    cmds.connectAttr(DecMatX+'.outputTranslate',"CTRL_Head_01_offset.t")
    
    
    #CONSTRAIN BIND_NECK_01 TO MASTER_NECK
    cmds.orientConstraint( "Master_Neck", "Bind_Neck_01", mo=True )
    
    #CONSTRAIN BIND_HEAD_PIVOT_01 TO MASTER_HEAD_01
    cmds.orientConstraint( "Master_Head_01", "Bind_Head_Pivot_01", mo=True )
    
    #CONSTRAIN BIND_HEAD_PIVOT_02 TO MASTER_HEAD_02
    cmds.orientConstraint( "Master_Head_02", "Bind_Head_Pivot_02", mo=True )
    
    #CONSTRAIN BIND_JAW_UP_01 TO MASTER_CRANE
    cmds.orientConstraint( "Master_Crane", "Bind_Jaw_Up_01", mo=True )
    
    #CONSTRAIN BIND_EAR_01_L TO MASTER_EAR_L
    cmds.orientConstraint( "Master_Ear_L", "Bind_Ear_01_L", mo=True )
    
    #CONSTRAIN BIND_EAR_01_R TO MASTER_EAR_R
    cmds.orientConstraint( "Master_Ear_R", "Bind_Ear_01_R", mo=True )
    
    
    #CONSTRAIN BIND_JAW_DOWN TO MASTER_JAW
    cmds.orientConstraint( "Master_Jaw", "Bind_Jaw_Down_01", mo=True )
    
    #  CREATE NODES
    MultMatX  = cmds.shadingNode("multMatrix",asUtility=True, n="MultMatX_Bind_Jaw_Down_01")
    DecMatX = cmds.shadingNode("decomposeMatrix", asUtility=True, n="DecMatX_Bind_Jaw_Down_01")
    MultMatX_Offset = cmds.shadingNode("multMatrix",asUtility=True, n="MultMatX_Offset_Bind_Jaw_Down_01")
    DecMatX_Offset = cmds.shadingNode("decomposeMatrix", asUtility=True, n="DecMatX_Offset_Bind_Jaw_Down_01")
    # CREATE OFFSET
    cmds.connectAttr("Bind_Jaw_Down_01.worldMatrix[0]",MultMatX_Offset+".matrixIn[0]")
    cmds.connectAttr("Master_Jaw.worldInverseMatrix[0]",MultMatX_Offset+".matrixIn[1]")
    cmds.connectAttr(MultMatX_Offset+".matrixSum",DecMatX_Offset+".inputMatrix")
    cmds.disconnectAttr (MultMatX_Offset+".matrixSum",DecMatX_Offset+".inputMatrix")
    cmds.delete(MultMatX_Offset)
    # CONNECT OFFSET TO MULTIPLY AND DECOMPOSE MATRIX
    cmds.connectAttr(DecMatX_Offset+".inputMatrix",MultMatX+".matrixIn[0]")
    cmds.connectAttr("Master_Jaw.worldMatrix[0]",MultMatX+".matrixIn[1]")
    cmds.connectAttr("Bind_Jaw_Down_01.parentInverseMatrix[0]",MultMatX+".matrixIn[2]")
    cmds.connectAttr(MultMatX+".matrixSum",DecMatX+".inputMatrix")
    
    cmds.connectAttr(DecMatX+'.outputTranslate',"Bind_Jaw_Down_01.t")
    
    
    
    
    




#############################
## USER INTERFACE SETTINGS ##
#############################

diUi = {}
diUi["lays"] = {}
diUi["ctrls"] = {}
diUi["window"] = {}

if cmds.window("giando", exists=True):
	cmds.deleteUI("giando")
window = diUi["window"]["main"]= cmds.window("giando", title="AutoRig_Facial_1.2", width=150, menuBar=True, sizeable=True, maximizeButton=False)


###### LAYERS HIERARCHY

diUi["lays"]["skeletonGlobal"] = cmds.frameLayout(l="FACIAL RIG", p=diUi["window"]["main"], bgc=(0.0,0.1,0.25), cll=True)


diUi["lays"]["skullRoot"] = cmds.columnLayout(adj=True, p=diUi["lays"]["skeletonGlobal"])
diUi["lays"]["skullText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["skullRoot"])
diUi["lays"]["skullInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["skullRoot"])
diUi["lays"]["eyeText"] = cmds.columnLayout(adj=True, p=diUi["lays"]["skullRoot"])
diUi["lays"]["eyeInfo"] = cmds.rowColumnLayout(numberOfColumns=2, columnWidth=[(1, 150), (2,150)], cal=[(1, "right"), (2, "left")], p=diUi["lays"]["skullRoot"])
diUi["lays"]["eyeButton"] = cmds.columnLayout(adj=True, p=diUi["lays"]["skullRoot"])


###########################################################


###### THE HEAD 

cmds.setParent (diUi["lays"]["skullText"])

cmds.text( label= "1. Create LOCATORS then place them at the desired locations.", align="left" )
cmds.text( label= "2. Create HEAD SKELETON and ORIENT THE JOINTS.", align="left" )


cmds.setParent (diUi["lays"]["skullInfo"])

cmds.button ( label = "CREATE HEAD LOCATORS", backgroundColor=[0.0, 0.4, 0.4], c= facialLocators )
cmds.button ( label = "CREATE HEAD SKELETON", backgroundColor=[0.0, 0.4, 0.4], c= facialRig )

cmds.setParent (diUi["lays"]["eyeText"])
cmds.separator()


cmds.setParent (diUi["lays"]["eyeButton"])

cmds.text( label= "3. Create the CTRLS", align="left")
cmds.button ( label = "CREATE HEAD CTRLS", backgroundColor=[0.0, 0.4, 0.4], c= facialCTRL )
cmds.text( label= "4. Place them by moving them with the control vertices.", align = "left" )
cmds.text ( label= "CTRL_View is the only one that should be moved", align="left")
cmds.text ( label = "with the offset.", align = "left" )
cmds.text ( label= "5. Delete the history of the CTRLS.", align= "left")
cmds.text ( label = "6. Run the script to parent the CTRLS.", align = "left" )
cmds.button ( label = "PARENT JOINTS TO CTRLS", backgroundColor=[0.0, 0.4, 0.4], c = parentCtrl )









cmds.showWindow (diUi["window"]["main"])
