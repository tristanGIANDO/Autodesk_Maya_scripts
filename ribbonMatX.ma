//Maya ASCII 2020 scene
//Name: ribbonMatX.ma
//Last modified: Wed, Feb 24, 2021 04:09:16 PM
//Codeset: 1252
requires maya "2020";
requires "stereoCamera" "10.0";
requires -nodeType "rmanBakingGlobals" -nodeType "rmanDisplayChannel" -nodeType "d_openexr"
		 -nodeType "rmanGlobals" -nodeType "PxrPathTracer" -nodeType "rmanDisplay" "RenderMan_for_Maya.py" "23.5 @ 2121250";
requires "mtoa" "3.1.2";
requires "nwLightingTools" "2011_10_25_1608";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202011110415-b1e20b88e2";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19041)\n";
fileInfo "UUID" "22517C40-4FB4-6130-9043-648E775934D5";
fileInfo "license" "education";
createNode transform -n "Leg_L_Ribbon_01";
	rename -uid "8974194E-49EA-60BA-6697-34A2B58D1CE3";
createNode transform -n "Leg_L_Ribbon_Surface_01" -p "Leg_L_Ribbon_01";
	rename -uid "AF6B40DE-43A4-77B1-D227-1DB39FA7E177";
createNode nurbsSurface -n "Leg_L_Ribbon_Surface_Shape1" -p "Leg_L_Ribbon_Surface_01";
	rename -uid "BB433EA7-4192-C57B-AC12-B08141425B99";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "Leg_L_Ribbon_Surface_Shape1Orig1" -p "Leg_L_Ribbon_Surface_01";
	rename -uid "4D317173-4DE6-8FA6-45E7-6285A405733E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "Leg_L_CTRL_Ribbon_01_Global" -p "Leg_L_Ribbon_01";
	rename -uid "5D657403-4C0F-0137-633F-08A4139AE805";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0.39041173 ;
createNode nurbsCurve -n "Leg_L_CTRL_Ribbon_01_GlobalShape" -p "Leg_L_CTRL_Ribbon_01_Global";
	rename -uid "850F9068-4D52-2469-C3D5-8188CEA84632";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		-0.97660070445813585 0 -0.75747694051121972
		-0.48830035222906792 0 -1.5149538810224394
		0.48830035222906792 0 -1.5149538810224394
		0.97660070445813585 0 -0.75747694051121972
		0.97660070445813585 0 0.75747694051121972
		0.48830035222906792 0 1.5149538810224394
		-0.48830035222906792 0 1.5149538810224394
		-0.97660070445813585 0 0.75747694051121972
		-0.97660070445813585 0 -0.75747694051121972
		;
createNode transform -n "Leg_L_GlobalMove_Ribbon_01" -p "Leg_L_CTRL_Ribbon_01_Global";
	rename -uid "37516A06-42C4-EF48-BC4A-1C9798F37242";
createNode transform -n "Leg_L_Grp_CTRLs_Ribbon_01" -p "Leg_L_GlobalMove_Ribbon_01";
	rename -uid "3AF3CBE2-48AB-F336-3A37-0399E6B8D37F";
createNode transform -n "Leg_L_CTRL_Ribbon_A01" -p "Leg_L_Grp_CTRLs_Ribbon_01";
	rename -uid "4055D78A-4143-AF59-7663-1896C70DEA02";
	setAttr ".rp" -type "double3" -5 0 0 ;
	setAttr ".sp" -type "double3" -5 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0.39041173 ;
createNode nurbsCurve -n "Leg_L_CTRL_Ribbon_AShape1" -p "Leg_L_CTRL_Ribbon_A01";
	rename -uid "732FF559-4056-988A-D774-599CB605B2C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-5.5999999999999996 0 -0.59999999999999998
		-4.3999999999999995 0 -0.59999999999999998
		-4.3999999999999995 0 0.59999999999999998
		-5.5999999999999996 0 0.59999999999999998
		-5.5999999999999996 0 -0.59999999999999998
		;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode transform -n "Leg_L_Master_CTRL_Ribbon_Mid_01" -p "Leg_L_Grp_CTRLs_Ribbon_01";
	rename -uid "619CCC28-4A6D-C151-82B4-F5A0C726812D";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0.12597102 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0.39041173 ;
createNode transform -n "Leg_L_CTRL_Ribbon_Mid_01" -p "Leg_L_Master_CTRL_Ribbon_Mid_01";
	rename -uid "F54397D1-4640-C822-B1B6-9D8B268660EA";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode nurbsCurve -n "Leg_L_CTRL_Ribbon_Mid_Shape1" -p "Leg_L_CTRL_Ribbon_Mid_01";
	rename -uid "5B68C264-42A6-0483-BB58-D0B68110D9E0";
	setAttr -k off ".v";
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		-1.3877275997192974e-17 2.2127905752913328 0
		-1.3877275997192974e-17 2.0443529567001559 0.84679733572421201
		-1.3877275997192974e-17 1.5646797053225276 1.5646797053225276
		-1.3877275997192974e-17 0.84679733572421201 2.0443529567001559
		-1.3877275997192974e-17 0 2.2127905752913328
		-1.3877275997192974e-17 -0.84679733572421201 2.0443529567001559
		-1.3877275997192974e-17 -1.5646797053225276 1.5646797053225276
		-1.3877275997192974e-17 -2.0443529567001559 0.84679733572421201
		-1.3877275997192974e-17 -2.2127905752913328 0
		-1.3877275997192974e-17 -2.0443529567001559 -0.84679733572421201
		-1.3877275997192974e-17 -1.5646797053225276 -1.5646797053225276
		-1.3877275997192974e-17 -0.84679733572421201 -2.0443529567001559
		-1.3877275997192974e-17 0 -2.2127905752913328
		-1.3877275997192974e-17 0.84679733572421201 -2.0443529567001559
		-1.3877275997192974e-17 1.5646797053225276 -1.5646797053225276
		-1.3877275997192974e-17 2.0443529567001559 -0.84679733572421201
		-1.3877275997192974e-17 2.2127905752913328 0
		8.4679731433092523e-06 2.0443529567001559 0
		1.5646796657940062e-05 1.5646797053225276 0
		2.0443529050540705e-05 0.84679733572421201 0
		2.2127905193901548e-05 0 0
		2.0443529050540705e-05 -0.84679733572421201 0
		1.5646796657940062e-05 -1.5646797053225276 0
		8.4679731433092523e-06 -2.0443529567001559 0
		-1.3877275997192974e-17 -2.2127905752913328 0
		-8.4679731433370096e-06 -2.0443529567001559 0
		-1.5646796657967817e-05 -1.5646797053225276 0
		-2.0443529050568441e-05 -0.84679733572421201 0
		-2.2127905193929276e-05 0 0
		-2.0443529050568441e-05 0.84679733572421201 0
		-1.5646796657967817e-05 1.5646797053225276 0
		-8.4679731433370096e-06 2.0443529567001559 0
		-1.3877275997192974e-17 2.2127905752913328 0
		-1.3877275997192974e-17 2.0443529567001559 -0.84679733572421201
		-1.3877275997192974e-17 1.5646797053225276 -1.5646797053225276
		-1.3877275997192974e-17 0.84679733572421201 -2.0443529567001559
		-1.3877275997192974e-17 0 -2.2127905752913328
		-8.4679731433370096e-06 0 -2.0443529567001559
		-1.5646796657967817e-05 0 -1.5646797053225276
		-2.0443529050568441e-05 0 -0.84679733572421201
		-2.2127905193929276e-05 0 0
		-2.0443529050568441e-05 0 0.84679733572421201
		-1.5646796657967817e-05 0 1.5646797053225276
		-8.4679731433370096e-06 0 2.0443529567001559
		-1.3877275997192974e-17 0 2.2127905752913328
		8.4679731433092523e-06 0 2.0443529567001559
		1.5646796657940062e-05 0 1.5646797053225276
		2.0443529050540705e-05 0 0.84679733572421201
		2.2127905193901548e-05 0 0
		2.0443529050540705e-05 0 -0.84679733572421201
		1.5646796657940062e-05 0 -1.5646797053225276
		8.4679731433092523e-06 0 -2.0443529567001559
		-1.3877275997192974e-17 0 -2.2127905752913328
		;
createNode parentConstraint -n "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1" 
		-p "Leg_L_Master_CTRL_Ribbon_Mid_01";
	rename -uid "0C948999-40F9-DE89-5116-E7A8205346C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTRL_Ribbon_A01W0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "CTRL_Ribbon_B01W1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Leg_L_CTRL_Ribbon_B01" -p "Leg_L_Grp_CTRLs_Ribbon_01";
	rename -uid "84B937BC-40E6-9584-DFA1-F1A2C6D3F64F";
	setAttr ".rp" -type "double3" 5 0 0 ;
	setAttr ".sp" -type "double3" 5 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0.39041173 ;
createNode nurbsCurve -n "Leg_L_CTRL_Ribbon_BShape1" -p "Leg_L_CTRL_Ribbon_B01";
	rename -uid "68035D8A-44D8-5989-5379-3E8A52EECA1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		4.4000000000000004 0 -0.59999999999999998
		5.6000000000000005 0 -0.59999999999999998
		5.6000000000000005 0 0.59999999999999998
		4.4000000000000004 0 0.59999999999999998
		4.4000000000000004 0 -0.59999999999999998
		;
createNode transform -n "Leg_L_ExtraNodes_Ribbon_01" -p "Leg_L_Ribbon_01";
	rename -uid "A1927083-4724-5E48-02A9-4A99F6B05608";
createNode transform -n "Leg_L_ExtraNodes_To_Show" -p "Leg_L_ExtraNodes_Ribbon_01";
	rename -uid "AEBDC9A0-4775-5787-26B2-DC92EB956DD7";
createNode transform -n "Leg_L_Ribbon_BShp_Surface_01" -p "Leg_L_ExtraNodes_To_Show";
	rename -uid "CD8C5FAB-40B4-E227-B748-EF8B479049D7";
	setAttr ".v" no;
createNode nurbsSurface -n "Leg_L_Ribbon_BShp_Surface_Shape1" -p "Leg_L_Ribbon_BShp_Surface_01";
	rename -uid "D558581A-4E77-D729-5038-85AC04DC5941";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "Leg_L_Ribbon_BShp_Surface_Shape1Orig1" -p "Leg_L_Ribbon_BShp_Surface_01";
	rename -uid "8F9C6A05-4747-E6E9-8BD6-7BB2EE850DE9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		10 0 0 0 0.20000000000000001 0.40000000000000002 0.60000000000000009 0.80000000000000004
		 1 1 1
		6 0 0 0 1 1 1
		
		32
		-5 -6.123233995736766e-17 1
		-5 -2.0410779985789222e-17 0.33333333333333337
		-5 2.0410779985789216e-17 -0.33333333333333326
		-5 6.123233995736766e-17 -1
		-4.333333333333333 -6.123233995736766e-17 1
		-4.333333333333333 -2.0410779985789222e-17 0.33333333333333337
		-4.333333333333333 2.0410779985789216e-17 -0.33333333333333326
		-4.333333333333333 6.123233995736766e-17 -1
		-2.9999999999999996 -6.123233995736766e-17 1
		-2.9999999999999996 -2.0410779985789222e-17 0.33333333333333337
		-2.9999999999999996 2.0410779985789216e-17 -0.33333333333333326
		-2.9999999999999996 6.123233995736766e-17 -1
		-0.99999999999999922 -6.123233995736766e-17 1
		-0.99999999999999922 -2.0410779985789222e-17 0.33333333333333337
		-0.99999999999999922 2.0410779985789216e-17 -0.33333333333333326
		-0.99999999999999922 6.123233995736766e-17 -1
		1.0000000000000009 -6.123233995736766e-17 1
		1.0000000000000009 -2.0410779985789222e-17 0.33333333333333337
		1.0000000000000009 2.0410779985789216e-17 -0.33333333333333326
		1.0000000000000009 6.123233995736766e-17 -1
		3.0000000000000009 -6.123233995736766e-17 1
		3.0000000000000009 -2.0410779985789222e-17 0.33333333333333337
		3.0000000000000009 2.0410779985789216e-17 -0.33333333333333326
		3.0000000000000009 6.123233995736766e-17 -1
		4.3333333333333339 -6.123233995736766e-17 1
		4.3333333333333339 -2.0410779985789222e-17 0.33333333333333337
		4.3333333333333339 2.0410779985789216e-17 -0.33333333333333326
		4.3333333333333339 6.123233995736766e-17 -1
		5 -6.123233995736766e-17 1
		5 -2.0410779985789222e-17 0.33333333333333337
		5 2.0410779985789216e-17 -0.33333333333333326
		5 6.123233995736766e-17 -1
		
		;
createNode transform -n "Leg_L_Grp_Ribbon_Rivets" -p "Leg_L_ExtraNodes_To_Show";
	rename -uid "0C8D11C6-4139-3EC2-4DDE-FBB3C9D52B4E";
	setAttr ".rp" -type "double3" 4.4408920985006262e-16 0 -1.1102230246251565e-16 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-16 0 -1.1102230246251565e-16 ;
createNode transform -n "Leg_L_A01_Rivet" -p "Leg_L_Grp_Ribbon_Rivets";
	rename -uid "AA9F3BAF-44DE-1F8D-5596-F2B5BC8D1B27";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode locator -n "Leg_L_A01_RivetShape" -p "Leg_L_A01_Rivet";
	rename -uid "BEB9B312-49EE-0E89-CFC8-67B6147A401F";
	setAttr -k off ".v";
createNode joint -n "Leg_L_Bind_Ribbon_A01" -p "Leg_L_A01_Rivet";
	rename -uid "2564DF06-459B-06AA-23B1-D0A7E6826E8A";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 1 ;
createNode transform -n "Leg_L_B01_Rivet" -p "Leg_L_Grp_Ribbon_Rivets";
	rename -uid "FA373F2F-46E1-B8FC-FFAF-D5AFD8F8A739";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode locator -n "Leg_L_B01_RivetShape" -p "Leg_L_B01_Rivet";
	rename -uid "7140B602-4320-58B2-EBC9-D58C405618C8";
	setAttr -k off ".v";
createNode joint -n "Leg_L_Bind_Ribbon_B01" -p "Leg_L_B01_Rivet";
	rename -uid "CD32C951-4CFB-0B08-11B0-A187A4ABFF27";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 1 ;
createNode transform -n "Leg_L_C01_Rivet" -p "Leg_L_Grp_Ribbon_Rivets";
	rename -uid "5429A519-45D5-D029-CFA0-178D99328B15";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode locator -n "Leg_L_C01_RivetShape" -p "Leg_L_C01_Rivet";
	rename -uid "3F158C54-4E93-43C8-137D-309113163DE4";
	setAttr -k off ".v";
createNode joint -n "Leg_L_Bind_Ribbon_C01" -p "Leg_L_C01_Rivet";
	rename -uid "012E8193-4736-17FF-B308-5A8DC6A7B713";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 1 ;
createNode transform -n "Leg_L_D01_Rivet" -p "Leg_L_Grp_Ribbon_Rivets";
	rename -uid "EFF5AC56-4274-509B-3E4F-B9A33EC14B48";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode locator -n "Leg_L_D01_RivetShape" -p "Leg_L_D01_Rivet";
	rename -uid "937CA65E-4611-B272-FB87-E5935BB0192A";
	setAttr -k off ".v";
createNode joint -n "Leg_L_Bind_Ribbon_D01" -p "Leg_L_D01_Rivet";
	rename -uid "C7FCEC2F-460A-F5DF-5004-4EBE20DDFD78";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 1 ;
createNode transform -n "Leg_L_E01_Rivet" -p "Leg_L_Grp_Ribbon_Rivets";
	rename -uid "F6725224-4CEC-75E5-ED8F-47BADB73746B";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode locator -n "Leg_L_E01_RivetShape" -p "Leg_L_E01_Rivet";
	rename -uid "3E32F130-4F18-EF5C-8FE0-D89F9E9B1F6B";
	setAttr -k off ".v";
createNode joint -n "Leg_L_Bind_Ribbon_E01" -p "Leg_L_E01_Rivet";
	rename -uid "9B37E636-42B9-EB41-1789-F797DB2575CE";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 1 ;
createNode transform -n "Leg_L_ExtraNodes_To_Hide" -p "Leg_L_ExtraNodes_Ribbon_01";
	rename -uid "56B1F3A1-47A3-BC8E-99A3-47A8E28BE290";
	setAttr ".v" no;
createNode transform -n "Leg_L_Grp_Drv_Jnt_Ribbon_01" -p "Leg_L_ExtraNodes_To_Hide";
	rename -uid "F1DB7F96-485D-AF94-7274-EBAF608B1205";
createNode transform -n "Leg_L_Drv_Jnt_Ribbon_A01_offset" -p "Leg_L_Grp_Drv_Jnt_Ribbon_01";
	rename -uid "B1945903-4CC1-F3B5-5066-4B856BB686A1";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.23988932 1 0.061915278 ;
	setAttr ".t" -type "double3" -5 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.52302802 1 0.28279793 ;
createNode joint -n "Leg_L_Drv_Jnt_Ribbon_A01" -p "Leg_L_Drv_Jnt_Ribbon_A01_offset";
	rename -uid "EEE51C71-4B31-0E96-6658-27B3ED59C4CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5 0 0 1;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.52302802 1 0.28279793 ;
createNode transform -n "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01" -p "Leg_L_Grp_Drv_Jnt_Ribbon_01";
	rename -uid "4E116042-44F9-62EC-B607-CE990B8C493F";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.23988932 1 0.061915278 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.52302802 1 0.28279793 ;
createNode joint -n "Leg_L_Drv_Jnt_Ribbon_Mid_01" -p "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01";
	rename -uid "603B7853-4C6A-0036-2ABA-AFBCF48D84A6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.52302802 1 0.28279793 ;
createNode parentConstraint -n "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1" 
		-p "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01";
	rename -uid "1927BCC8-4FF3-CCC2-81A2-8993DC5EFD14";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Drv_Jnt_Ribbon_A01W0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Drv_Jnt_Ribbon_B01W1" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Leg_L_Drv_Jnt_Ribbon_B01_offset" -p "Leg_L_Grp_Drv_Jnt_Ribbon_01";
	rename -uid "A7F9BE34-4178-9908-84D2-0AAB9683EFF6";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.23988932 1 0.061915278 ;
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.52302802 1 0.28279793 ;
createNode joint -n "Leg_L_Drv_Jnt_Ribbon_B01" -p "Leg_L_Drv_Jnt_Ribbon_B01_offset";
	rename -uid "A7AF2409-4BD6-6E74-2E22-2FB9726BCA2F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5 0 0 1;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.52302802 1 0.28279793 ;
createNode transform -n "Leg_L_Crv_Wire_Ribbon_Surface_01" -p "Leg_L_ExtraNodes_To_Hide";
	rename -uid "E042F2F8-4E89-2877-9DE9-C39B9A032C4F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "Leg_L_Crv_Wire_Ribbon_Surface_Shape1" -p "Leg_L_Crv_Wire_Ribbon_Surface_01";
	rename -uid "20AC199F-40A2-E481-AB0E-A4A6BA405B43";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "Leg_L_Crv_Wire_Ribbon_Surface_Shape1Orig1" -p "Leg_L_Crv_Wire_Ribbon_Surface_01";
	rename -uid "E1A581A1-49E2-74A3-3D7C-DA8819601D9E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-5 0 0
		0 0 0
		5 0 0
		;
createNode transform -n "Leg_L_Crv_Wire_Ribbon_Surface_01BaseWire" -p "Leg_L_ExtraNodes_To_Hide";
	rename -uid "C1140145-49D8-DD99-7C6C-52BAF1F69AF7";
	setAttr ".v" no;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "Leg_L_Crv_Wire_Ribbon_Surface_01BaseWireShape" -p "Leg_L_Crv_Wire_Ribbon_Surface_01BaseWire";
	rename -uid "9BDAF4BC-43D6-BF78-5825-95B4563A32D3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-5 0 0
		0 0 0
		5 0 0
		;
createNode nurbsCurve -n "Leg_L_Crv_Wire_Ribbon_Surface_01BaseWireShape1Orig" -p "Leg_L_Crv_Wire_Ribbon_Surface_01BaseWire";
	rename -uid "AD30C54C-4557-4922-D910-5FA2BCD04A1C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		-5 0 0
		0 0 0
		5 0 0
		;
createNode transform -n "Leg_L_twist1Handle" -p "Leg_L_ExtraNodes_To_Hide";
	rename -uid "833DD139-441A-EE01-D74B-96B1E7EB2404";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".smd" 7;
createNode deformTwist -n "Leg_L_twist1HandleShape" -p "Leg_L_twist1Handle";
	rename -uid "FA89CFAC-4785-447F-0BD0-5F89D4068201";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 4 -1 1 0.017453292519943295 0.017453292519943295 ;
	setAttr ".hw" 1.1;
createNode transform -n "sine1Handle" -p "Leg_L_ExtraNodes_To_Hide";
	rename -uid "50C21318-41F3-8738-9EE4-12B7CCB73742";
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".smd" 7;
createNode deformSine -n "sine1HandleShape" -p "sine1Handle";
	rename -uid "F2E3426E-4935-71FC-446A-9CA34552363C";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 6 0 -1 1 0 2 0 ;
	setAttr ".hw" 1.0998324646720306;
createNode transform -s -n "persp";
	rename -uid "DD17BC50-4AC2-8E2E-46CC-6681316815F9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -25.233857882899386 23.8288730942587 36.265452709914207 ;
	setAttr ".r" -type "double3" -29.138352729607391 -34.200000000002525 1.9227598739417251e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AB93D103-4F3F-2EE5-A544-E59212A31D84";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 51.109499176155495;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6E888E50-4CB2-E9FC-BBCB-B388B5A8FE8B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1EC7BA05-4C64-D21A-1066-539FBA0340A3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "0DFE04D6-4169-E6F6-7D12-C3B0831EF7CF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4D1324B5-46E3-F397-7E52-73A299D82D86";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F97CE65F-4BB0-4649-FEDC-AA94B1C3FCE8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E9574911-40CD-289D-9F58-74AFCCF4D0D9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode displayLayerManager -n "layerManager";
	rename -uid "01BF8044-471D-D3E1-3C4E-5FAC8C54EAEA";
	setAttr ".cdl" 3;
	setAttr -s 21 ".dli[1:20]"  1 7 4 5 6 8 9 10 
		11 12 13 14 15 16 17 18 19 20 2 3;
createNode groupId -n "Ribbon_BShp_Node_Surface_01GroupId";
	rename -uid "D9BE62E4-4C6E-BB8B-8D84-22AE04A5B020";
	setAttr ".ihi" 0;
createNode objectSet -n "Ribbon_BShp_Node_Surface_01Set";
	rename -uid "A5C03D0A-4C8D-346D-5591-9A92983A82E8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode blendShape -n "Ribbon_BShp_Node_Surface_01";
	rename -uid "FD532120-44CB-5133-1D0E-6AB2E5A2CA2C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".w[0]"  1;
	setAttr -l on ".w[0]";
	setAttr ".mlid" 0;
	setAttr ".mlpr" 0;
	setAttr ".pndr[0]"  0;
	setAttr ".tgdt[0].cid" -type "Int32Array" 1 0 ;
	setAttr ".aal" -type "attributeAlias" {"Ribbon_BShp_Surface_01","weight[0]"} ;
createNode groupParts -n "Ribbon_BShp_Node_Surface_01GroupParts";
	rename -uid "620B40EE-4603-F0C5-F0A6-5FABECFF650C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode tweak -n "tweak2";
	rename -uid "C093EB03-4440-F196-ACD4-05BF3F26C09D";
createNode objectSet -n "tweakSet2";
	rename -uid "FE880AC0-4E51-4414-19B6-B7822CDEF6EC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	rename -uid "A7CA1812-4B44-23E2-56CE-ECAF4D449AF8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "C6B2B743-4051-EA9A-8D43-97932DD29B22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode groupId -n "sine1GroupId";
	rename -uid "861EA7A9-49ED-81DC-F6AA-2DA6D78121F4";
	setAttr ".ihi" 0;
createNode objectSet -n "sine1Set";
	rename -uid "C65C1D4D-4054-DFBF-CAA3-0BA50252E7FE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode nonLinear -n "sine1";
	rename -uid "AEE0831D-41BF-2037-77E5-5CAD9A68933C";
	addAttr -is true -ci true -k true -sn "amp" -ln "amplitude" -smn -5 -smx 5 -at "double";
	addAttr -is true -ci true -k true -sn "wav" -ln "wavelength" -dv 2 -min 0.001 -smn 
		0.1 -smx 10 -at "double";
	addAttr -is true -ci true -k true -sn "off" -ln "offset" -smn -10 -smx 10 -at "double";
	addAttr -is true -ci true -k true -sn "dr" -ln "dropoff" -min -1 -max 1 -at "double";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".amp";
	setAttr -k on ".wav";
	setAttr -k on ".off";
	setAttr -k on ".dr";
	setAttr -k on ".lb";
	setAttr -k on ".hb";
createNode groupParts -n "sine1GroupParts";
	rename -uid "135F62DC-4A73-2A8E-2D50-C29E56D9056E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode materialInfo -n "materialInfo39";
	rename -uid "C74B2B94-4C30-58EF-D724-C7BB2454F246";
createNode shadingEngine -n "lambert2SG10";
	rename -uid "1F5D0C33-486F-216A-DDBE-22B7350B8C00";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "Ribbon_Shader_01";
	rename -uid "BF9E48B5-45BB-4C3A-3493-BBAAAFD26D54";
	setAttr ".c" -type "float3" 0.38499999 1 1 ;
	setAttr ".it" -type "float3" 0.56287426 0.56287426 0.56287426 ;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "50732DC0-436C-F4A4-97B7-51A9112014CF";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 10;
	setAttr ".lr" 0.2;
	setAttr ".u" 5;
createNode groupId -n "wire1GroupId";
	rename -uid "BC3DA56E-4B9A-0881-EFD3-C4AE30A8C721";
	setAttr ".ihi" 0;
createNode objectSet -n "wire1Set";
	rename -uid "220D10C8-4117-7CDB-9720-C2A8324BAFC4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode wire -n "Wire_Attr";
	rename -uid "0FBBD75C-4B20-5C58-FC03-989D1923681A";
	setAttr ".dds[0]"  20;
	setAttr ".sc[0]"  1;
createNode groupParts -n "wire1GroupParts";
	rename -uid "0F719F10-47E1-BC04-1EDD-899CAF825FBA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode nonLinear -n "Twist_Attr";
	rename -uid "C6D31D24-495A-0CC4-F1DD-2CADC3574E31";
	addAttr -is true -ci true -k true -sn "sa" -ln "startAngle" -smn -15 -smx 15 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "ea" -ln "endAngle" -smn -15 -smx 15 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".sa";
	setAttr -k on ".ea";
	setAttr -k on ".lb";
	setAttr -k on ".hb";
createNode objectSet -n "twist1Set";
	rename -uid "8C79CC7F-4917-9A8F-840C-1A9748DD550C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "twist1GroupId";
	rename -uid "71FA7FE8-47CC-3D19-7F36-C29B58FB1E1D";
	setAttr ".ihi" 0;
createNode groupParts -n "twist1GroupParts";
	rename -uid "094B041B-45D9-BF73-818B-D093E69F448E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode tweak -n "tweak4";
	rename -uid "8AFAA0A4-4C4E-6EB7-FFF5-83A2716651B6";
createNode objectSet -n "tweakSet4";
	rename -uid "BE73FED2-410C-DDC8-6F70-C191CF6DF375";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "2F3C32F4-4981-F203-6EFB-12A97012C40F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "5B27A338-4F35-EE21-255B-169AF4EA831C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode skinCluster -n "skinCluster2";
	rename -uid "7AFE9270-41EE-635D-D414-03A5A6A5CC7F";
	setAttr -s 3 ".wl";
	setAttr ".wl[0:2].w"
		1 0 1
		1 1 1
		1 2 1;
	setAttr -k off ".wl[0].w";
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5 0 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "bindPose2";
	rename -uid "CFE22B60-4078-65DC-8ADF-EEABBE728F16";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode objectSet -n "skinCluster1Set1";
	rename -uid "5CA98465-48DF-60A4-9333-05809DAE06BA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId1";
	rename -uid "533EFE9B-4047-32D1-C27B-2BAC111E8870";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts1";
	rename -uid "A8068199-4467-508C-AA06-859453AAD598";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak3";
	rename -uid "1A2A8136-48FA-267A-6F92-FFBB81D5C48C";
createNode objectSet -n "tweakSet3";
	rename -uid "C996A768-4453-F0B3-0719-02B40ACE38F3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "BB2C15DF-4828-C2B5-277F-508788662386";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "ADCF67A2-45E7-FC14-F537-F6B4A7B21906";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "575019AA-4A5D-CA94-FBD3-1D9AA35D5ECB";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0F76521F-4E80-19D6-BED9-839132F643FD";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "899CE8E5-4878-812E-D491-74A9E19229B0";
createNode displayLayer -n "defaultLayer";
	rename -uid "3BA471A3-46AE-91CA-6BC0-A18F3C1C7A94";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A0DD92AE-49E1-CD7A-321A-039E8719A457";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1F726F3B-4DCD-8524-AC90-FF8A5670864A";
	setAttr ".g" yes;
createNode multMatrix -n "MultMatX_Leg_L_Ribbon_Surface_01";
	rename -uid "7170DF68-4792-586E-6568-9A8BC7E998D9";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "DecMatX_Leg_L_Ribbon_Surface_01";
	rename -uid "910E581C-4B59-60DE-5111-0FA8C4D38E99";
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_Ribbon_Surface_01";
	rename -uid "B014EB86-4FD5-AA26-65B6-12B043C61523";
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_Ribbon_Follicle_B01";
	rename -uid "9522100E-408E-F973-EF01-30B4A9FA07BB";
	setAttr ".imat" -type "matrix" 1 0 0 0 0 -0.017452406437283408 -0.99984769515639127 0
		 0 0.99984769515639127 -0.017452406437283408 0 -2 1.3010426069826053e-18 5.5511151231257827e-17 1;
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_Ribbon_Follicle_C01";
	rename -uid "51DBAE72-4C2A-A456-FC0A-AD9D2BE604BD";
	setAttr ".imat" -type "matrix" 1 0 0 0 0 -0.017452406437283408 -0.99984769515639127 0
		 0 0.99984769515639127 -0.017452406437283408 0 2.4980018054066022e-16 1.3010426069826053e-18 0 1;
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_Ribbon_Follicle_D01";
	rename -uid "C3190CEF-450F-8532-4A70-6190800C3427";
	setAttr ".imat" -type "matrix" 1 0 0 0 0 -0.017452406437283408 -0.99984769515639127 0
		 0 0.99984769515639127 -0.017452406437283408 0 1.9999999999999996 1.3010426069826053e-18 0 1;
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_Ribbon_Follicle_E01";
	rename -uid "81FA7CFC-4096-409B-18CF-08B92CEBBB26";
	setAttr ".imat" -type "matrix" 1 0 0 0 0 -0.017452406437283408 -0.99984769515639127 0
		 0 0.99984769515639127 -0.017452406437283408 0 4.0000000000000009 1.3010426069826053e-18 5.5511151231257827e-17 1;
createNode multMatrix -n "MultMatX_sine1Handle";
	rename -uid "FF847AF2-4375-1C2B-0CDE-04B5B79E825E";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "DecMatX_sine1Handle";
	rename -uid "A47F0617-41F7-7C4B-C73E-948473E85A79";
createNode decomposeMatrix -n "DecMatX_Offset_sine1Handle";
	rename -uid "3BE7E538-4E20-3713-EB79-2EA8A0056432";
	setAttr ".imat" -type "matrix" 0 5 0 0 -5 0 0 0 0 0 5 0 0 0 0 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "328EFF36-4FCC-349F-D4B1-8A8709821FF4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 937\n            -height 705\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1914\n            -height 973\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1914\n            -height 973\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 937\\n    -height 705\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 937\\n    -height 705\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CB8619B2-453E-61AE-7401-BABDA2D1DF74";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multMatrix -n "MultMatX_Test_C01_Rivet";
	rename -uid "1CCB4529-41C3-762F-E370-28B9EE314BF8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "DecMatX_Test_C01_Rivet";
	rename -uid "BCD04592-45D4-D221-2F4D-A1ABCD857163";
createNode decomposeMatrix -n "DecMatX_Offset_Test_C01_Rivet";
	rename -uid "8ACEBF65-4ABA-A43F-60A3-51AF3C88AA4C";
	setAttr ".imat" -type "matrix" -2.2204460492503131e-16 1 0 0 1 2.2204460492503131e-16 1.2246467991473532e-16 0
		 1.2246467991473532e-16 2.4651903288156619e-32 -1 0 3.0531133177191805e-16 1.8488927466117464e-32 -5.5511151231257827e-17 1;
createNode multMatrix -n "MultMatX_Test_D01_Rivet";
	rename -uid "01A7B8C6-4C31-5179-38DB-6F838D519A2A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "DecMatX_Test_D01_Rivet";
	rename -uid "AFB36674-4488-6647-4A23-F89CBF1083A1";
createNode decomposeMatrix -n "DecMatX_Offset_Test_D01_Rivet";
	rename -uid "1AED83B3-4F1A-EC3A-5789-D2B947E222F6";
	setAttr ".imat" -type "matrix" -2.2204460492503131e-16 1 0 0 1 2.2204460492503131e-16 1.2246467991473532e-16 0
		 1.2246467991473532e-16 2.4651903288156619e-32 -1 0 1.9999999999999996 1.224646799147353e-16 -5.5511151231257827e-17 1;
createNode multMatrix -n "MultMatX_Test_E01_Rivet";
	rename -uid "FF6011EE-4697-3D53-7950-15A033F3641F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "DecMatX_Test_E01_Rivet";
	rename -uid "CC1444AF-4895-8CC1-9299-7091AE19771D";
createNode decomposeMatrix -n "DecMatX_Offset_Test_E01_Rivet";
	rename -uid "562FEE1C-4FA2-F6B5-E6ED-37AE4696C041";
	setAttr ".imat" -type "matrix" -2.2204460492503131e-16 1 0 0 1 2.2204460492503131e-16 -1.2246467991473532e-16 0
		 -1.2246467991473532e-16 -2.4651903288156619e-32 -1 0 4.0000000000000009 2.4492935982947069e-16 -5.5511151231257827e-17 1;
createNode multMatrix -n "MultMatX_Test_Ribbon_Surface_01";
	rename -uid "9199210F-4F97-3B79-05E1-378DC8D35586";
createNode decomposeMatrix -n "DecMatX_Test_Ribbon_Surface_01";
	rename -uid "AE19C5B3-45C2-6FE6-2794-1A89A189E0BE";
createNode decomposeMatrix -n "DecMatX_Offset_Test_Ribbon_Surface_01";
	rename -uid "64261E60-4B0E-9789-A7D6-FCB0F0CBE155";
createNode pointOnSurfaceInfo -n "Test_E01_Point_On_Surface";
	rename -uid "3D00E8F8-4E98-24DE-E510-408B94EFF1F2";
	setAttr ".u" 0.9;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode fourByFourMatrix -n "Test_E01_FourByFour_MatX";
	rename -uid "90C2205B-4764-ADD0-A6AF-2A8752224348";
createNode decomposeMatrix -n "Test_E01_DecMatX";
	rename -uid "CFBAD0CA-4820-9AF7-86C3-AEA4637C34B6";
createNode pointOnSurfaceInfo -n "Leg_L_D01_Point_On_Surface";
	rename -uid "CAC82C1D-4C22-FB87-7B19-AABA853A043C";
	setAttr ".u" 0.7;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode fourByFourMatrix -n "Leg_L_D01_FourByFour_MatX";
	rename -uid "0B476B96-44CF-9517-BBC5-978D7653CC97";
createNode decomposeMatrix -n "Leg_L_D01_DecMatX";
	rename -uid "B47A0F3E-40A7-137F-20A0-778A80427665";
createNode pointOnSurfaceInfo -n "Test_A01_Point_On_Surface";
	rename -uid "A6F7A085-40DA-2F19-7D75-7AB0C54BFA08";
	setAttr ".u" 0.1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode fourByFourMatrix -n "Test_A01_FourByFour_MatX";
	rename -uid "94B6E21A-4D34-6AA2-4B9D-02AC1C6516C4";
createNode decomposeMatrix -n "Test_A01_DecMatX";
	rename -uid "AB1658B9-4878-9DD7-3BF1-F5B13C39C085";
createNode pointOnSurfaceInfo -n "Test_C01_Point_On_Surface";
	rename -uid "3B7FEB41-462F-87A0-9254-7DB852BC6E66";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode fourByFourMatrix -n "Test_C01_FourByFour_MatX";
	rename -uid "3D0EEA25-4E17-979B-924B-C9B3D25D7726";
createNode decomposeMatrix -n "Test_C01_DecMatX";
	rename -uid "A2313A9D-41EF-34BF-2E1C-F9A62559BACD";
createNode pointOnSurfaceInfo -n "Test_B01_Point_On_Surface";
	rename -uid "AC23578E-4B2D-1741-388F-5CB0ECB00155";
	setAttr ".u" 0.3;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode fourByFourMatrix -n "Test_B01_FourByFour_MatX";
	rename -uid "10FBA495-4D41-A1CB-742D-E4A0005F0BF3";
createNode decomposeMatrix -n "Test_B01_DecMatX";
	rename -uid "5043298D-47B8-6FC8-C611-88921AB8C3A3";
createNode decomposeMatrix -n "DecMatX_Offset_Test_A01_Rivet1";
	rename -uid "0BE2B309-4242-A9C5-58AD-C695D0E0FB89";
	setAttr ".imat" -type "matrix" 0 0.99984769515639138 -0.017452406437283512 0 0 -0.01745240643728363 -0.99984769515639138 0
		 -1 0 0 0 -4.0000000000000009 1.3010426069826053e-18 5.5511151231257827e-17 1;
createNode multMatrix -n "MultMatX_Leg_L_A01_Rivet";
	rename -uid "1F5B83C3-4A07-7B5A-BF9F-0694922634E7";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "DecMatX_Leg_L_A01_Rivet";
	rename -uid "7DD61CBF-4239-AC13-BEFD-8883B352E2AC";
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_A01_Rivet";
	rename -uid "437CF17F-4770-B917-549C-BCA4BEEE6AEA";
	setAttr ".imat" -type "matrix" 0 0.99984769515639138 -0.017452406437283512 0 0 -0.01745240643728363 -0.99984769515639138 0
		 -1 0 0 0 -4.0000000000000009 1.3010426069826053e-18 5.5511151231257827e-17 1;
createNode multMatrix -n "MultMatX_Leg_L_B01_Rivet";
	rename -uid "76CD0768-4CEB-5431-0B9A-A0A421BD62A2";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "DecMatX_Leg_L_B01_Rivet";
	rename -uid "21329D63-4666-37DE-AE30-D293D2952B1E";
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_B01_Rivet";
	rename -uid "90A0EEC0-4184-8454-07BD-71BF6B28ED5F";
	setAttr ".imat" -type "matrix" 0 0.99984769515639138 -0.017452406437283512 0 0 -0.01745240643728363 -0.99984769515639138 0
		 -1 0 0 0 -2 1.3010426069826053e-18 5.5511151231257827e-17 1;
createNode multMatrix -n "MultMatX_Leg_L_C01_Rivet";
	rename -uid "E64C8B27-41E6-61EF-C4B4-F48C1E4544E1";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "DecMatX_Leg_L_C01_Rivet";
	rename -uid "212B4795-4A50-82A4-899F-91B640150A2C";
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_C01_Rivet";
	rename -uid "3B4FD94A-42E7-55B7-5595-A99C92711E7D";
	setAttr ".imat" -type "matrix" 0 0.99984769515639138 -0.017452406437283512 0 0 -0.01745240643728363 -0.99984769515639138 0
		 -1 0 0 0 2.4980018054066022e-16 1.3010426069826053e-18 0 1;
createNode multMatrix -n "MultMatX_Leg_L_D01_Rivet";
	rename -uid "5DE8BC58-42B8-2E04-EF73-A59493C57FE4";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "DecMatX_Leg_L_D01_Rivet";
	rename -uid "A679A246-4888-9EB3-8461-0794A8BF232D";
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_D01_Rivet";
	rename -uid "D2AC1371-487D-C6E9-8816-A88E960DB5D7";
	setAttr ".imat" -type "matrix" 0 0.99984769515639138 -0.017452406437283512 0 0 -0.01745240643728363 -0.99984769515639138 0
		 -1 0 0 0 1.9999999999999996 1.3010426069826053e-18 0 1;
createNode multMatrix -n "MultMatX_Leg_L_E01_Rivet";
	rename -uid "31E4453C-47E5-0A45-3541-BFBC60C5F179";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "DecMatX_Leg_L_E01_Rivet";
	rename -uid "6905E0D5-4039-66BC-0CEB-D99E4DEE040D";
createNode decomposeMatrix -n "DecMatX_Offset_Leg_L_E01_Rivet";
	rename -uid "F92F83A0-4844-E37F-5463-EBB251EEEF23";
	setAttr ".imat" -type "matrix" 0 0.99984769515639138 -0.017452406437283512 0 0 -0.01745240643728363 -0.99984769515639138 0
		 -1 0 0 0 4.0000000000000009 1.3010426069826053e-18 5.5511151231257827e-17 1;
createNode unitConversion -n "unitConversion62";
	rename -uid "261C01B2-4A47-6632-8436-3FAD3663F6C3";
	setAttr ".cf" 57.295779513082323;
createNode reverse -n "Reverse_Twist_Ribbon_A01";
	rename -uid "57B97808-4139-3DF8-BC8C-E89A12A2C25B";
createNode unitConversion -n "unitConversion63";
	rename -uid "D487C35D-4612-9830-B065-A3A408DE4E6A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion64";
	rename -uid "911FB89E-4136-DD34-08B9-78AA68B7691B";
	setAttr ".cf" 57.295779513082323;
createNode reverse -n "Reverse_Twist_Ribbon_B01";
	rename -uid "7E616A43-4025-EFAE-E7BE-29B8FE40FD97";
createNode unitConversion -n "unitConversion65";
	rename -uid "7278C2C9-4345-047F-8C96-6FAED38DAB24";
	setAttr ".cf" 0.017453292519943295;
createNode rmanGlobals -s -n "rmanGlobals";
	rename -uid "C670D135-4923-11D7-B6F1-99A99E62E9F2";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".hider_minSamples" 0;
	setAttr ".hider_maxSamples" 128;
	setAttr ".ri_pixelVariance" 0.014999999664723873;
	setAttr ".hider_incremental" yes;
	setAttr ".ipr_hider_maxSamples" 64;
	setAttr ".ipr_ri_pixelVariance" 0.05000000074505806;
	setAttr ".ipr_ri_decidither" 0;
	setAttr ".ri_maxSpecularDepth" 4;
	setAttr ".ri_maxDiffuseDepth" 1;
	setAttr ".ri_displayFilter" -type "string" "gaussian";
	setAttr ".ri_displayFilterSize" -type "float2" 2 2 ;
	setAttr ".pixelFilterMode" -type "string" "weighted";
	setAttr ".motionBlur" 0;
	setAttr ".cameraBlur" no;
	setAttr ".shutterAngle" 180;
	setAttr ".shutterOpenEnd" 0;
	setAttr ".shutterCloseStart" 1;
	setAttr ".shutterTiming" 0;
	setAttr ".motionSamples" 2;
	setAttr ".displayFilters[0]" -type "string" "";
	setAttr ".sampleFilters[0]" -type "string" "";
	setAttr ".outputAllShaders" no;
	setAttr ".reentrantProcedurals" yes;
	setAttr ".outputShadowAOV" 0;
	setAttr ".enableImagePlaneFilter" yes;
	setAttr ".learnLightSelection" yes;
	setAttr ".opt_bucket_order" -type "string" "circle";
	setAttr ".limits_bucketsize" -type "long2" 16 16 ;
	setAttr ".limits_othreshold" -type "float3" 0.99599999 0.99599999 0.99599999 ;
	setAttr ".rfm_referenceFrame" 0;
	setAttr ".adaptiveMetric" -type "string" "variance";
	setAttr ".hider_darkfalloff" 0.02500000037252903;
	setAttr ".hider_exposurebracket" -type "float2" -1 1 ;
	setAttr ".ri_hider_adaptAll" no;
	setAttr ".dice_micropolygonlength" 1;
	setAttr ".dice_watertight" no;
	setAttr ".dice_referenceCameraType" 0;
	setAttr ".dice_referenceCamera" -type "string" "";
	setAttr ".hair_minWidth" 0.5;
	setAttr ".trace_autobias" yes;
	setAttr ".trace_bias" 0.0010000000474974513;
	setAttr ".trace_worldorigin" -type "string" "camera";
	setAttr ".trace_worldoffset" -type "float3" 0 0 0 ;
	setAttr ".opt_oslSIMDEnable" yes;
	setAttr ".opt_oslVerbosity" 0;
	setAttr ".opt_oslStatistics" 0;
	setAttr ".deep_quality" 0.75;
	setAttr ".opt_cropWindowEnable" no;
	setAttr ".opt_cropWindowTopLeft" -type "float2" 0 0 ;
	setAttr ".opt_cropWindowBottomRight" -type "float2" 1 1 ;
	setAttr ".user_sceneUnits" 1;
	setAttr ".user_iesIgnoreWatts" yes;
	setAttr ".limits_texturememory" 4096;
	setAttr ".limits_geocachememory" 4096;
	setAttr ".limits_opacitycachememory" 2048;
	setAttr ".statistics_level" 1;
	setAttr ".statistics_xmlfilename" -type "string" "";
	setAttr ".lpe_reload_definitions" -type "string" "";
	setAttr ".lpe_diffuse2" -type "string" "Diffuse,HairDiffuse";
	setAttr ".lpe_diffuse3" -type "string" "Subsurface";
	setAttr ".lpe_specular2" -type "string" "Specular,HairSpecularR";
	setAttr ".lpe_specular3" -type "string" "RoughSpecular,HairSpecularTRT";
	setAttr ".lpe_specular4" -type "string" "Clearcoat";
	setAttr ".lpe_specular5" -type "string" "Iridescence";
	setAttr ".lpe_specular6" -type "string" "Fuzz,HairSpecularGLINTS";
	setAttr ".lpe_specular7" -type "string" "SingleScatter,HairSpecularTT";
	setAttr ".lpe_specular8" -type "string" "Glass";
	setAttr ".lpe_user2" -type "string" "Albedo,DiffuseAlbedo,SubsurfaceAlbedo,HairAlbedo";
	setAttr ".lpe_user3" -type "string" "Position";
	setAttr ".lpe_user4" -type "string" "UserColor";
	setAttr ".lpe_user5" -type "string" "";
	setAttr ".lpe_user6" -type "string" "Normal,DiffuseNormal,HairTangent,SubsurfaceNormal,SpecularNormal,RoughSpecularNormal,SingleScatterNormal,FuzzNormal,IridescenceNormal,GlassNormal";
	setAttr ".lpe_user7" -type "string" "";
	setAttr ".lpe_user8" -type "string" "";
	setAttr ".lpe_user9" -type "string" "";
	setAttr ".lpe_user10" -type "string" "";
	setAttr ".lpe_user11" -type "string" "";
	setAttr ".lpe_user12" -type "string" "";
	setAttr ".imageFileFormat" -type "string" "<scene>_<layer>_<camera>_<aov>.<f4>.<ext>";
	setAttr ".ribFileFormat" -type "string" "<camera><layer>.<f4>.rib";
	setAttr ".version" 1;
	setAttr ".take" 1;
	setAttr ".imageOutputDir" -type "string" "<ws>/images/<scene>_v<version>_t<take>";
	setAttr ".ribOutputDir" -type "string" "<ws>/renderman/rib/<scene>/v<version>_t<take>";
	setAttr -s 10 ".UserTokens";
	setAttr ".UserTokens[0].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[0].userTokenValues" -type "string" "";
	setAttr ".UserTokens[1].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[1].userTokenValues" -type "string" "";
	setAttr ".UserTokens[2].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[2].userTokenValues" -type "string" "";
	setAttr ".UserTokens[3].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[3].userTokenValues" -type "string" "";
	setAttr ".UserTokens[4].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[4].userTokenValues" -type "string" "";
	setAttr ".UserTokens[5].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[5].userTokenValues" -type "string" "";
	setAttr ".UserTokens[6].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[6].userTokenValues" -type "string" "";
	setAttr ".UserTokens[7].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[7].userTokenValues" -type "string" "";
	setAttr ".UserTokens[8].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[8].userTokenValues" -type "string" "";
	setAttr ".UserTokens[9].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[9].userTokenValues" -type "string" "";
	setAttr ".rlfData" -type "string" "init";
	setAttr ".jobid" -type "string" "";
createNode PxrPathTracer -s -n "PxrPathTracer";
	rename -uid "BFDC6226-4DF9-6600-107D-3B97536097D1";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".maxIndirectBounces" 8;
	setAttr ".maxContinuationLength" -1;
	setAttr ".maxNonStochasticOpacityEvents" 0;
	setAttr ".sampleMode" -type "string" "bxdf";
	setAttr ".numLightSamples" 1;
	setAttr ".numBxdfSamples" 1;
	setAttr ".numIndirectSamples" 1;
	setAttr ".numDiffuseSamples" 1;
	setAttr ".numSpecularSamples" 1;
	setAttr ".numSubsurfaceSamples" 1;
	setAttr ".numRefractionSamples" 1;
	setAttr ".allowCaustics" no;
	setAttr ".accumOpacity" no;
	setAttr ".rouletteDepth" 4;
	setAttr ".rouletteThreshold" 0.20000000298023224;
	setAttr ".clampDepth" 2;
	setAttr ".clampLuminance" 10;
createNode rmanBakingGlobals -s -n "rmanBakingGlobals";
	rename -uid "33ABD54A-49C4-8C09-264E-C3AD26309784";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".bakeMode" 0;
	setAttr ".bakingImageFileFormat" -type "string" "<scene>_<user:bakingIdentifier>_<aov>.<ext>";
	setAttr ".resolution" 512;
	setAttr ".rman_diceDistanceLength" 0.05000000074505806;
	setAttr ".ri_maxSpecularDepth" 4;
	setAttr ".ri_maxDiffuseDepth" 1;
	setAttr ".init" 0;
createNode rmanDisplay -n "rmanDefaultBakeDisplay";
	rename -uid "BDF24B0A-4C4C-9680-B20D-449B47DFEED6";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".denoise" no;
	setAttr ".frameMode" 0;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr -s 2 ".displayChannels";
	setAttr ".name" -type "string" "";
createNode rmanDisplayChannel -n "diffuse";
	rename -uid "FDA2E580-48FC-10F8-9291-13B25A993078";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "color";
	setAttr ".channelSource" -type "string" "lpe:C(D[DS]*[LO])|[LO]";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".filterwidth" -type "float2" -1 -1 ;
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".shadowthreshold" 0.0099999997764825821;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "";
createNode rmanDisplayChannel -n "a";
	rename -uid "B252880D-446C-FD48-FFA5-1DAAD0D9EA7B";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "float";
	setAttr ".channelSource" -type "string" "a";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".filterwidth" -type "float2" -1 -1 ;
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".shadowthreshold" 0.0099999997764825821;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "";
createNode PxrPathTracer -s -n "bake_PxrPathTracer";
	rename -uid "F3E985C6-4BE5-F879-24D5-C2A949D6C457";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".maxIndirectBounces" 8;
	setAttr ".maxContinuationLength" -1;
	setAttr ".maxNonStochasticOpacityEvents" 0;
	setAttr ".sampleMode" -type "string" "bxdf";
	setAttr ".numLightSamples" 1;
	setAttr ".numBxdfSamples" 1;
	setAttr ".numIndirectSamples" 1;
	setAttr ".numDiffuseSamples" 1;
	setAttr ".numSpecularSamples" 1;
	setAttr ".numSubsurfaceSamples" 1;
	setAttr ".numRefractionSamples" 1;
	setAttr ".allowCaustics" no;
	setAttr ".accumOpacity" no;
	setAttr ".rouletteDepth" 4;
	setAttr ".rouletteThreshold" 0.20000000298023224;
	setAttr ".clampDepth" 2;
	setAttr ".clampLuminance" 10;
createNode d_openexr -n "d_openexr";
	rename -uid "208AE15D-4772-6AC0-CEC1-ADAB2BFB4EE6";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".asrgba" yes;
	setAttr ".storage" -type "string" "scanline";
	setAttr ".exrpixeltype" -type "string" "half";
	setAttr ".compression" -type "string" "zips";
	setAttr ".compressionlevel" 45;
	setAttr ".forcepar" 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7A849D23-4F09-3160-17F6-7BB929AC0E30";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 3872.3961594888588 9502.3805747902752 ;
	setAttr ".tgi[0].vh" -type "double2" 8837.127145003873 11927.380478429439 ;
	setAttr -s 36 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 6818.5712890625;
	setAttr ".tgi[0].ni[0].y" 11188.5712890625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 5897.14306640625;
	setAttr ".tgi[0].ni[1].y" 10725.7138671875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 6455.71435546875;
	setAttr ".tgi[0].ni[2].y" 10392.857421875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 5025.71435546875;
	setAttr ".tgi[0].ni[3].y" 10855.7138671875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 5572.85693359375;
	setAttr ".tgi[0].ni[4].y" 11232.857421875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 6204.28564453125;
	setAttr ".tgi[0].ni[5].y" 10725.7138671875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 6818.5712890625;
	setAttr ".tgi[0].ni[6].y" 10002.857421875;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 6427.14306640625;
	setAttr ".tgi[0].ni[7].y" 10905.7138671875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 5025.71435546875;
	setAttr ".tgi[0].ni[8].y" 11058.5712890625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 6204.28564453125;
	setAttr ".tgi[0].ni[9].y" 10624.2861328125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 6762.85693359375;
	setAttr ".tgi[0].ni[10].y" 10392.857421875;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 5025.71435546875;
	setAttr ".tgi[0].ni[11].y" 10957.142578125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 6694.28564453125;
	setAttr ".tgi[0].ni[12].y" 10262.857421875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 5265.71435546875;
	setAttr ".tgi[0].ni[13].y" 11261.4287109375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 5590;
	setAttr ".tgi[0].ni[14].y" 10725.7138671875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 6818.5712890625;
	setAttr ".tgi[0].ni[15].y" 10624.2861328125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 6720;
	setAttr ".tgi[0].ni[16].y" 10132.857421875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 5282.85693359375;
	setAttr ".tgi[0].ni[17].y" 10725.7138671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 5897.14306640625;
	setAttr ".tgi[0].ni[18].y" 10624.2861328125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 5282.85693359375;
	setAttr ".tgi[0].ni[19].y" 10624.2861328125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 6794.28564453125;
	setAttr ".tgi[0].ni[20].y" 10905.7138671875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 6204.28564453125;
	setAttr ".tgi[0].ni[21].y" 10522.857421875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 6818.5712890625;
	setAttr ".tgi[0].ni[22].y" 9872.857421875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 5655.71435546875;
	setAttr ".tgi[0].ni[23].y" 10957.142578125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 5655.71435546875;
	setAttr ".tgi[0].ni[24].y" 10855.7138671875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 5590;
	setAttr ".tgi[0].ni[25].y" 10624.2861328125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 5348.5712890625;
	setAttr ".tgi[0].ni[26].y" 10957.142578125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 6818.5712890625;
	setAttr ".tgi[0].ni[27].y" 11290;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 6511.4287109375;
	setAttr ".tgi[0].ni[28].y" 10624.2861328125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 5897.14306640625;
	setAttr ".tgi[0].ni[29].y" 11232.857421875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 6204.28564453125;
	setAttr ".tgi[0].ni[30].y" 11232.857421875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 6818.5712890625;
	setAttr ".tgi[0].ni[31].y" 9742.857421875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 6511.4287109375;
	setAttr ".tgi[0].ni[32].y" 11188.5712890625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 6120;
	setAttr ".tgi[0].ni[33].y" 10905.7138671875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 4958.5712890625;
	setAttr ".tgi[0].ni[34].y" 11261.4287109375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 7832.85693359375;
	setAttr ".tgi[0].ni[35].y" 10744.2861328125;
	setAttr ".tgi[0].ni[35].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
	setAttr -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".aoam";
	setAttr -av -k on ".mbsof";
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 55 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 6 ".r";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "DecMatX_Leg_L_Ribbon_Surface_01.ot" "Leg_L_Ribbon_Surface_01.t";
connectAttr "DecMatX_Leg_L_Ribbon_Surface_01.or" "Leg_L_Ribbon_Surface_01.r";
connectAttr "DecMatX_Leg_L_Ribbon_Surface_01.os" "Leg_L_Ribbon_Surface_01.s";
connectAttr "Ribbon_BShp_Node_Surface_01GroupId.id" "Leg_L_Ribbon_Surface_Shape1.iog.og[0].gid"
		;
connectAttr "Ribbon_BShp_Node_Surface_01Set.mwc" "Leg_L_Ribbon_Surface_Shape1.iog.og[0].gco"
		;
connectAttr "groupId3.id" "Leg_L_Ribbon_Surface_Shape1.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "Leg_L_Ribbon_Surface_Shape1.iog.og[1].gco";
connectAttr "sine1GroupId.id" "Leg_L_Ribbon_Surface_Shape1.iog.og[2].gid";
connectAttr "sine1Set.mwc" "Leg_L_Ribbon_Surface_Shape1.iog.og[2].gco";
connectAttr "sine1.og[0]" "Leg_L_Ribbon_Surface_Shape1.cr";
connectAttr "tweak2.pl[0].cp[0]" "Leg_L_Ribbon_Surface_Shape1.twl";
connectAttr "makeNurbPlane1.os" "Leg_L_Ribbon_Surface_Shape1Orig1.cr";
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.ctx" "Leg_L_Master_CTRL_Ribbon_Mid_01.tx"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.cty" "Leg_L_Master_CTRL_Ribbon_Mid_01.ty"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.ctz" "Leg_L_Master_CTRL_Ribbon_Mid_01.tz"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01.ro" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.cro"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01.pim" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.cpim"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01.rp" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.crp"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01.rpt" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.crt"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.t" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].tt"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.rp" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].trp"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.rpt" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].trt"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.r" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].tr"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.ro" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].tro"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.s" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].ts"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.pm" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.w0" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[0].tw"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.t" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].tt"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.rp" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].trp"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.rpt" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].trt"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.r" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].tr"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.ro" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].tro"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.s" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].ts"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.pm" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].tpm"
		;
connectAttr "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.w1" "Leg_L_Master_CTRL_Ribbon_Mid_01_parentConstraint1.tg[1].tw"
		;
connectAttr "wire1GroupId.id" "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[0].gid";
connectAttr "wire1Set.mwc" "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[0].gco";
connectAttr "groupId6.id" "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[1].gco";
connectAttr "twist1GroupId.id" "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[2].gid";
connectAttr "twist1Set.mwc" "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[2].gco";
connectAttr "Wire_Attr.og[0]" "Leg_L_Ribbon_BShp_Surface_Shape1.cr";
connectAttr "tweak4.pl[0].cp[0]" "Leg_L_Ribbon_BShp_Surface_Shape1.twl";
connectAttr "Test_A01_DecMatX.otx" "Leg_L_A01_Rivet.tx";
connectAttr "Test_A01_DecMatX.oty" "Leg_L_A01_Rivet.ty";
connectAttr "Test_A01_DecMatX.otz" "Leg_L_A01_Rivet.tz";
connectAttr "Test_A01_DecMatX.orx" "Leg_L_A01_Rivet.rx";
connectAttr "Test_A01_DecMatX.ory" "Leg_L_A01_Rivet.ry";
connectAttr "Test_A01_DecMatX.orz" "Leg_L_A01_Rivet.rz";
connectAttr "DecMatX_Leg_L_A01_Rivet.os" "Leg_L_A01_Rivet.s";
connectAttr "Test_B01_DecMatX.otx" "Leg_L_B01_Rivet.tx";
connectAttr "Test_B01_DecMatX.oty" "Leg_L_B01_Rivet.ty";
connectAttr "Test_B01_DecMatX.otz" "Leg_L_B01_Rivet.tz";
connectAttr "Test_B01_DecMatX.orx" "Leg_L_B01_Rivet.rx";
connectAttr "Test_B01_DecMatX.ory" "Leg_L_B01_Rivet.ry";
connectAttr "Test_B01_DecMatX.orz" "Leg_L_B01_Rivet.rz";
connectAttr "DecMatX_Leg_L_B01_Rivet.os" "Leg_L_B01_Rivet.s";
connectAttr "Test_C01_DecMatX.otx" "Leg_L_C01_Rivet.tx";
connectAttr "Test_C01_DecMatX.oty" "Leg_L_C01_Rivet.ty";
connectAttr "Test_C01_DecMatX.otz" "Leg_L_C01_Rivet.tz";
connectAttr "Test_C01_DecMatX.orx" "Leg_L_C01_Rivet.rx";
connectAttr "Test_C01_DecMatX.ory" "Leg_L_C01_Rivet.ry";
connectAttr "Test_C01_DecMatX.orz" "Leg_L_C01_Rivet.rz";
connectAttr "DecMatX_Leg_L_C01_Rivet.os" "Leg_L_C01_Rivet.s";
connectAttr "Leg_L_D01_DecMatX.otx" "Leg_L_D01_Rivet.tx";
connectAttr "Leg_L_D01_DecMatX.oty" "Leg_L_D01_Rivet.ty";
connectAttr "Leg_L_D01_DecMatX.otz" "Leg_L_D01_Rivet.tz";
connectAttr "Leg_L_D01_DecMatX.orx" "Leg_L_D01_Rivet.rx";
connectAttr "Leg_L_D01_DecMatX.ory" "Leg_L_D01_Rivet.ry";
connectAttr "Leg_L_D01_DecMatX.orz" "Leg_L_D01_Rivet.rz";
connectAttr "DecMatX_Leg_L_D01_Rivet.os" "Leg_L_D01_Rivet.s";
connectAttr "Test_E01_DecMatX.otx" "Leg_L_E01_Rivet.tx";
connectAttr "Test_E01_DecMatX.oty" "Leg_L_E01_Rivet.ty";
connectAttr "Test_E01_DecMatX.otz" "Leg_L_E01_Rivet.tz";
connectAttr "Test_E01_DecMatX.orx" "Leg_L_E01_Rivet.rx";
connectAttr "Test_E01_DecMatX.ory" "Leg_L_E01_Rivet.ry";
connectAttr "Test_E01_DecMatX.orz" "Leg_L_E01_Rivet.rz";
connectAttr "DecMatX_Leg_L_E01_Rivet.os" "Leg_L_E01_Rivet.s";
connectAttr "Leg_L_CTRL_Ribbon_A01.t" "Leg_L_Drv_Jnt_Ribbon_A01.t";
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.ctx" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01.tx"
		;
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.cty" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01.ty"
		;
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.ctz" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01.tz"
		;
connectAttr "Leg_L_CTRL_Ribbon_Mid_01.t" "Leg_L_Drv_Jnt_Ribbon_Mid_01.t";
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01.ro" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.cro"
		;
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01.pim" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.cpim"
		;
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01.rp" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.crp"
		;
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01.rpt" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.crt"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.t" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tt"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.rp" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].trp"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.rpt" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].trt"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.r" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tr"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.ro" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tro"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.s" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].ts"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.pm" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.jo" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tjo"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.ssc" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tsc"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.is" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tis"
		;
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.w0" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[0].tw"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.t" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tt"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.rp" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].trp"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.rpt" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].trt"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.r" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tr"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.ro" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tro"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.s" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].ts"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.pm" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tpm"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.jo" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tjo"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.ssc" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tsc"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.is" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tis"
		;
connectAttr "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.w1" "Leg_L_Master_Drv_Jnt_Ribbon_Mid_01_parentConstraint1.tg[1].tw"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.t" "Leg_L_Drv_Jnt_Ribbon_B01.t";
connectAttr "skinCluster2.og[0]" "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.cr";
connectAttr "tweak3.pl[0].cp[0]" "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.twl";
connectAttr "skinCluster1GroupId1.id" "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.iog.og[0].gid"
		;
connectAttr "skinCluster1Set1.mwc" "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.iog.og[0].gco"
		;
connectAttr "groupId4.id" "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.iog.og[1].gco"
		;
connectAttr "Twist_Attr.msg" "Leg_L_twist1Handle.sml";
connectAttr "Twist_Attr.sa" "Leg_L_twist1HandleShape.sa";
connectAttr "Twist_Attr.ea" "Leg_L_twist1HandleShape.ea";
connectAttr "Twist_Attr.lb" "Leg_L_twist1HandleShape.lb";
connectAttr "Twist_Attr.hb" "Leg_L_twist1HandleShape.hb";
connectAttr "sine1.msg" "sine1Handle.sml";
connectAttr "DecMatX_sine1Handle.ot" "sine1Handle.t";
connectAttr "DecMatX_sine1Handle.or" "sine1Handle.r";
connectAttr "sine1.amp" "sine1HandleShape.amp";
connectAttr "sine1.wav" "sine1HandleShape.wav";
connectAttr "sine1.off" "sine1HandleShape.off";
connectAttr "sine1.dr" "sine1HandleShape.dr";
connectAttr "sine1.lb" "sine1HandleShape.lb";
connectAttr "sine1.hb" "sine1HandleShape.hb";
connectAttr "Ribbon_BShp_Node_Surface_01GroupId.msg" "Ribbon_BShp_Node_Surface_01Set.gn"
		 -na;
connectAttr "Leg_L_Ribbon_Surface_Shape1.iog.og[0]" "Ribbon_BShp_Node_Surface_01Set.dsm"
		 -na;
connectAttr "Ribbon_BShp_Node_Surface_01.msg" "Ribbon_BShp_Node_Surface_01Set.ub[0]"
		;
connectAttr "Ribbon_BShp_Node_Surface_01GroupParts.og" "Ribbon_BShp_Node_Surface_01.ip[0].ig"
		;
connectAttr "Ribbon_BShp_Node_Surface_01GroupId.id" "Ribbon_BShp_Node_Surface_01.ip[0].gi"
		;
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1.ws" "Ribbon_BShp_Node_Surface_01.it[0].itg[0].iti[6000].igt"
		;
connectAttr "shapeEditorManager.obsv[0]" "Ribbon_BShp_Node_Surface_01.tgdt[0].dpvs"
		;
connectAttr "tweak2.og[0]" "Ribbon_BShp_Node_Surface_01GroupParts.ig";
connectAttr "Ribbon_BShp_Node_Surface_01GroupId.id" "Ribbon_BShp_Node_Surface_01GroupParts.gi"
		;
connectAttr "groupParts3.og" "tweak2.ip[0].ig";
connectAttr "groupId3.id" "tweak2.ip[0].gi";
connectAttr "groupId3.msg" "tweakSet2.gn" -na;
connectAttr "Leg_L_Ribbon_Surface_Shape1.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "Leg_L_Ribbon_Surface_Shape1Orig1.ws" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "sine1GroupId.msg" "sine1Set.gn" -na;
connectAttr "Leg_L_Ribbon_Surface_Shape1.iog.og[2]" "sine1Set.dsm" -na;
connectAttr "sine1.msg" "sine1Set.ub[0]";
connectAttr "sine1GroupParts.og" "sine1.ip[0].ig";
connectAttr "sine1GroupId.id" "sine1.ip[0].gi";
connectAttr "sine1HandleShape.dd" "sine1.dd";
connectAttr "sine1Handle.wm" "sine1.ma";
connectAttr "Ribbon_BShp_Node_Surface_01.og[0]" "sine1GroupParts.ig";
connectAttr "sine1GroupId.id" "sine1GroupParts.gi";
connectAttr "lambert2SG10.msg" "materialInfo39.sg";
connectAttr "Ribbon_Shader_01.msg" "materialInfo39.m";
connectAttr "Ribbon_Shader_01.oc" "lambert2SG10.ss";
connectAttr "Leg_L_Ribbon_Surface_Shape1.iog" "lambert2SG10.dsm" -na;
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1.iog" "lambert2SG10.dsm" -na;
connectAttr "wire1GroupId.msg" "wire1Set.gn" -na;
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[0]" "wire1Set.dsm" -na;
connectAttr "Wire_Attr.msg" "wire1Set.ub[0]";
connectAttr "wire1GroupParts.og" "Wire_Attr.ip[0].ig";
connectAttr "wire1GroupId.id" "Wire_Attr.ip[0].gi";
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_01BaseWireShape.ws" "Wire_Attr.bw[0]"
		;
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.ws" "Wire_Attr.dw[0]";
connectAttr "Twist_Attr.og[0]" "wire1GroupParts.ig";
connectAttr "wire1GroupId.id" "wire1GroupParts.gi";
connectAttr "unitConversion63.o" "Twist_Attr.sa";
connectAttr "unitConversion65.o" "Twist_Attr.ea";
connectAttr "twist1GroupParts.og" "Twist_Attr.ip[0].ig";
connectAttr "twist1GroupId.id" "Twist_Attr.ip[0].gi";
connectAttr "Leg_L_twist1HandleShape.dd" "Twist_Attr.dd";
connectAttr "Leg_L_twist1Handle.wm" "Twist_Attr.ma";
connectAttr "twist1GroupId.msg" "twist1Set.gn" -na;
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[2]" "twist1Set.dsm" -na;
connectAttr "Twist_Attr.msg" "twist1Set.ub[0]";
connectAttr "tweak4.og[0]" "twist1GroupParts.ig";
connectAttr "twist1GroupId.id" "twist1GroupParts.gi";
connectAttr "groupParts6.og" "tweak4.ip[0].ig";
connectAttr "groupId6.id" "tweak4.ip[0].gi";
connectAttr "groupId6.msg" "tweakSet4.gn" -na;
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1Orig1.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "skinCluster1GroupParts1.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster1GroupId1.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.wm" "skinCluster2.ma[0]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_Mid_01.wm" "skinCluster2.ma[1]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.wm" "skinCluster2.ma[2]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.liw" "skinCluster2.lw[0]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_Mid_01.liw" "skinCluster2.lw[1]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.liw" "skinCluster2.lw[2]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.obcc" "skinCluster2.ifcl[0]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_Mid_01.obcc" "skinCluster2.ifcl[1]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.obcc" "skinCluster2.ifcl[2]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.msg" "bindPose2.m[0]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_Mid_01.msg" "bindPose2.m[1]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.msg" "bindPose2.m[2]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.w" "bindPose2.p[1]";
connectAttr "bindPose2.w" "bindPose2.p[2]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.bps" "bindPose2.wm[0]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_Mid_01.bps" "bindPose2.wm[1]";
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.bps" "bindPose2.wm[2]";
connectAttr "skinCluster1GroupId1.msg" "skinCluster1Set1.gn" -na;
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.iog.og[0]" "skinCluster1Set1.dsm"
		 -na;
connectAttr "skinCluster2.msg" "skinCluster1Set1.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster1GroupParts1.ig";
connectAttr "skinCluster1GroupId1.id" "skinCluster1GroupParts1.gi";
connectAttr "groupParts4.og" "tweak3.ip[0].ig";
connectAttr "groupId4.id" "tweak3.ip[0].gi";
connectAttr "groupId4.msg" "tweakSet3.gn" -na;
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.iog.og[1]" "tweakSet3.dsm" -na
		;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_Shape1Orig1.ws" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG10.message" ":defaultLightSet.message";
connectAttr "Ribbon_BShp_Node_Surface_01.mlpr" "shapeEditorManager.bspr[0]";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "DecMatX_Offset_Leg_L_Ribbon_Surface_01.imat" "MultMatX_Leg_L_Ribbon_Surface_01.i[0]"
		;
connectAttr "Leg_L_CTRL_Ribbon_01_Global.wm" "MultMatX_Leg_L_Ribbon_Surface_01.i[1]"
		;
connectAttr "Leg_L_Ribbon_Surface_01.pim" "MultMatX_Leg_L_Ribbon_Surface_01.i[2]"
		;
connectAttr "MultMatX_Leg_L_Ribbon_Surface_01.o" "DecMatX_Leg_L_Ribbon_Surface_01.imat"
		;
connectAttr "DecMatX_Offset_sine1Handle.imat" "MultMatX_sine1Handle.i[0]";
connectAttr "Leg_L_CTRL_Ribbon_01_Global.wm" "MultMatX_sine1Handle.i[1]";
connectAttr "sine1Handle.pim" "MultMatX_sine1Handle.i[2]";
connectAttr "MultMatX_sine1Handle.o" "DecMatX_sine1Handle.imat";
connectAttr "DecMatX_Offset_Test_C01_Rivet.imat" "MultMatX_Test_C01_Rivet.i[0]";
connectAttr "Leg_L_C01_Rivet.pim" "MultMatX_Test_C01_Rivet.i[2]";
connectAttr "MultMatX_Test_C01_Rivet.o" "DecMatX_Test_C01_Rivet.imat";
connectAttr "DecMatX_Offset_Test_D01_Rivet.imat" "MultMatX_Test_D01_Rivet.i[0]";
connectAttr "Leg_L_D01_Rivet.pim" "MultMatX_Test_D01_Rivet.i[2]";
connectAttr "MultMatX_Test_D01_Rivet.o" "DecMatX_Test_D01_Rivet.imat";
connectAttr "DecMatX_Offset_Test_E01_Rivet.imat" "MultMatX_Test_E01_Rivet.i[0]";
connectAttr "Leg_L_E01_Rivet.pim" "MultMatX_Test_E01_Rivet.i[2]";
connectAttr "MultMatX_Test_E01_Rivet.o" "DecMatX_Test_E01_Rivet.imat";
connectAttr "DecMatX_Offset_Test_Ribbon_Surface_01.imat" "MultMatX_Test_Ribbon_Surface_01.i[0]"
		;
connectAttr "MultMatX_Test_Ribbon_Surface_01.o" "DecMatX_Test_Ribbon_Surface_01.imat"
		;
connectAttr "Leg_L_Ribbon_Surface_Shape1.ws" "Test_E01_Point_On_Surface.is";
connectAttr "Test_E01_Point_On_Surface.px" "Test_E01_FourByFour_MatX.i30";
connectAttr "Test_E01_Point_On_Surface.py" "Test_E01_FourByFour_MatX.i31";
connectAttr "Test_E01_Point_On_Surface.pz" "Test_E01_FourByFour_MatX.i32";
connectAttr "Test_E01_Point_On_Surface.nx" "Test_E01_FourByFour_MatX.i00";
connectAttr "Test_E01_Point_On_Surface.ny" "Test_E01_FourByFour_MatX.i01";
connectAttr "Test_E01_Point_On_Surface.nz" "Test_E01_FourByFour_MatX.i02";
connectAttr "Test_E01_Point_On_Surface.tux" "Test_E01_FourByFour_MatX.i20";
connectAttr "Test_E01_Point_On_Surface.tuy" "Test_E01_FourByFour_MatX.i21";
connectAttr "Test_E01_Point_On_Surface.tuz" "Test_E01_FourByFour_MatX.i22";
connectAttr "Test_E01_Point_On_Surface.tvx" "Test_E01_FourByFour_MatX.i10";
connectAttr "Test_E01_Point_On_Surface.tvy" "Test_E01_FourByFour_MatX.i11";
connectAttr "Test_E01_Point_On_Surface.tvz" "Test_E01_FourByFour_MatX.i12";
connectAttr "Test_E01_FourByFour_MatX.o" "Test_E01_DecMatX.imat";
connectAttr "Leg_L_Ribbon_Surface_Shape1.ws" "Leg_L_D01_Point_On_Surface.is";
connectAttr "Leg_L_D01_Point_On_Surface.px" "Leg_L_D01_FourByFour_MatX.i30";
connectAttr "Leg_L_D01_Point_On_Surface.py" "Leg_L_D01_FourByFour_MatX.i31";
connectAttr "Leg_L_D01_Point_On_Surface.pz" "Leg_L_D01_FourByFour_MatX.i32";
connectAttr "Leg_L_D01_Point_On_Surface.nx" "Leg_L_D01_FourByFour_MatX.i00";
connectAttr "Leg_L_D01_Point_On_Surface.ny" "Leg_L_D01_FourByFour_MatX.i01";
connectAttr "Leg_L_D01_Point_On_Surface.nz" "Leg_L_D01_FourByFour_MatX.i02";
connectAttr "Leg_L_D01_Point_On_Surface.tux" "Leg_L_D01_FourByFour_MatX.i20";
connectAttr "Leg_L_D01_Point_On_Surface.tuy" "Leg_L_D01_FourByFour_MatX.i21";
connectAttr "Leg_L_D01_Point_On_Surface.tuz" "Leg_L_D01_FourByFour_MatX.i22";
connectAttr "Leg_L_D01_Point_On_Surface.tvx" "Leg_L_D01_FourByFour_MatX.i10";
connectAttr "Leg_L_D01_Point_On_Surface.tvy" "Leg_L_D01_FourByFour_MatX.i11";
connectAttr "Leg_L_D01_Point_On_Surface.tvz" "Leg_L_D01_FourByFour_MatX.i12";
connectAttr "Leg_L_D01_FourByFour_MatX.o" "Leg_L_D01_DecMatX.imat";
connectAttr "Leg_L_Ribbon_Surface_Shape1.ws" "Test_A01_Point_On_Surface.is";
connectAttr "Test_A01_Point_On_Surface.px" "Test_A01_FourByFour_MatX.i30";
connectAttr "Test_A01_Point_On_Surface.py" "Test_A01_FourByFour_MatX.i31";
connectAttr "Test_A01_Point_On_Surface.pz" "Test_A01_FourByFour_MatX.i32";
connectAttr "Test_A01_Point_On_Surface.nx" "Test_A01_FourByFour_MatX.i00";
connectAttr "Test_A01_Point_On_Surface.ny" "Test_A01_FourByFour_MatX.i01";
connectAttr "Test_A01_Point_On_Surface.nz" "Test_A01_FourByFour_MatX.i02";
connectAttr "Test_A01_Point_On_Surface.tux" "Test_A01_FourByFour_MatX.i20";
connectAttr "Test_A01_Point_On_Surface.tuy" "Test_A01_FourByFour_MatX.i21";
connectAttr "Test_A01_Point_On_Surface.tuz" "Test_A01_FourByFour_MatX.i22";
connectAttr "Test_A01_Point_On_Surface.tvx" "Test_A01_FourByFour_MatX.i10";
connectAttr "Test_A01_Point_On_Surface.tvy" "Test_A01_FourByFour_MatX.i11";
connectAttr "Test_A01_Point_On_Surface.tvz" "Test_A01_FourByFour_MatX.i12";
connectAttr "Test_A01_FourByFour_MatX.o" "Test_A01_DecMatX.imat";
connectAttr "Leg_L_Ribbon_Surface_Shape1.ws" "Test_C01_Point_On_Surface.is";
connectAttr "Test_C01_Point_On_Surface.px" "Test_C01_FourByFour_MatX.i30";
connectAttr "Test_C01_Point_On_Surface.py" "Test_C01_FourByFour_MatX.i31";
connectAttr "Test_C01_Point_On_Surface.pz" "Test_C01_FourByFour_MatX.i32";
connectAttr "Test_C01_Point_On_Surface.nx" "Test_C01_FourByFour_MatX.i00";
connectAttr "Test_C01_Point_On_Surface.ny" "Test_C01_FourByFour_MatX.i01";
connectAttr "Test_C01_Point_On_Surface.nz" "Test_C01_FourByFour_MatX.i02";
connectAttr "Test_C01_Point_On_Surface.tux" "Test_C01_FourByFour_MatX.i20";
connectAttr "Test_C01_Point_On_Surface.tuy" "Test_C01_FourByFour_MatX.i21";
connectAttr "Test_C01_Point_On_Surface.tuz" "Test_C01_FourByFour_MatX.i22";
connectAttr "Test_C01_Point_On_Surface.tvx" "Test_C01_FourByFour_MatX.i10";
connectAttr "Test_C01_Point_On_Surface.tvy" "Test_C01_FourByFour_MatX.i11";
connectAttr "Test_C01_Point_On_Surface.tvz" "Test_C01_FourByFour_MatX.i12";
connectAttr "Test_C01_FourByFour_MatX.o" "Test_C01_DecMatX.imat";
connectAttr "Leg_L_Ribbon_Surface_Shape1.ws" "Test_B01_Point_On_Surface.is";
connectAttr "Test_B01_Point_On_Surface.px" "Test_B01_FourByFour_MatX.i30";
connectAttr "Test_B01_Point_On_Surface.py" "Test_B01_FourByFour_MatX.i31";
connectAttr "Test_B01_Point_On_Surface.pz" "Test_B01_FourByFour_MatX.i32";
connectAttr "Test_B01_Point_On_Surface.nx" "Test_B01_FourByFour_MatX.i00";
connectAttr "Test_B01_Point_On_Surface.ny" "Test_B01_FourByFour_MatX.i01";
connectAttr "Test_B01_Point_On_Surface.nz" "Test_B01_FourByFour_MatX.i02";
connectAttr "Test_B01_Point_On_Surface.tux" "Test_B01_FourByFour_MatX.i20";
connectAttr "Test_B01_Point_On_Surface.tuy" "Test_B01_FourByFour_MatX.i21";
connectAttr "Test_B01_Point_On_Surface.tuz" "Test_B01_FourByFour_MatX.i22";
connectAttr "Test_B01_Point_On_Surface.tvx" "Test_B01_FourByFour_MatX.i10";
connectAttr "Test_B01_Point_On_Surface.tvy" "Test_B01_FourByFour_MatX.i11";
connectAttr "Test_B01_Point_On_Surface.tvz" "Test_B01_FourByFour_MatX.i12";
connectAttr "Test_B01_FourByFour_MatX.o" "Test_B01_DecMatX.imat";
connectAttr "DecMatX_Offset_Leg_L_A01_Rivet.imat" "MultMatX_Leg_L_A01_Rivet.i[0]"
		;
connectAttr "Leg_L_CTRL_Ribbon_01_Global.wm" "MultMatX_Leg_L_A01_Rivet.i[1]";
connectAttr "Leg_L_A01_Rivet.pim" "MultMatX_Leg_L_A01_Rivet.i[2]";
connectAttr "MultMatX_Leg_L_A01_Rivet.o" "DecMatX_Leg_L_A01_Rivet.imat";
connectAttr "DecMatX_Offset_Leg_L_B01_Rivet.imat" "MultMatX_Leg_L_B01_Rivet.i[0]"
		;
connectAttr "Leg_L_CTRL_Ribbon_01_Global.wm" "MultMatX_Leg_L_B01_Rivet.i[1]";
connectAttr "Leg_L_B01_Rivet.pim" "MultMatX_Leg_L_B01_Rivet.i[2]";
connectAttr "MultMatX_Leg_L_B01_Rivet.o" "DecMatX_Leg_L_B01_Rivet.imat";
connectAttr "DecMatX_Offset_Leg_L_C01_Rivet.imat" "MultMatX_Leg_L_C01_Rivet.i[0]"
		;
connectAttr "Leg_L_CTRL_Ribbon_01_Global.wm" "MultMatX_Leg_L_C01_Rivet.i[1]";
connectAttr "Leg_L_C01_Rivet.pim" "MultMatX_Leg_L_C01_Rivet.i[2]";
connectAttr "MultMatX_Leg_L_C01_Rivet.o" "DecMatX_Leg_L_C01_Rivet.imat";
connectAttr "DecMatX_Offset_Leg_L_D01_Rivet.imat" "MultMatX_Leg_L_D01_Rivet.i[0]"
		;
connectAttr "Leg_L_CTRL_Ribbon_01_Global.wm" "MultMatX_Leg_L_D01_Rivet.i[1]";
connectAttr "Leg_L_D01_Rivet.pim" "MultMatX_Leg_L_D01_Rivet.i[2]";
connectAttr "MultMatX_Leg_L_D01_Rivet.o" "DecMatX_Leg_L_D01_Rivet.imat";
connectAttr "DecMatX_Offset_Leg_L_E01_Rivet.imat" "MultMatX_Leg_L_E01_Rivet.i[0]"
		;
connectAttr "Leg_L_CTRL_Ribbon_01_Global.wm" "MultMatX_Leg_L_E01_Rivet.i[1]";
connectAttr "Leg_L_E01_Rivet.pim" "MultMatX_Leg_L_E01_Rivet.i[2]";
connectAttr "MultMatX_Leg_L_E01_Rivet.o" "DecMatX_Leg_L_E01_Rivet.imat";
connectAttr "Leg_L_CTRL_Ribbon_A01.rx" "unitConversion62.i";
connectAttr "unitConversion62.o" "Reverse_Twist_Ribbon_A01.ix";
connectAttr "Reverse_Twist_Ribbon_A01.ox" "unitConversion63.i";
connectAttr "Leg_L_CTRL_Ribbon_B01.rx" "unitConversion64.i";
connectAttr "unitConversion64.o" "Reverse_Twist_Ribbon_B01.ix";
connectAttr "Reverse_Twist_Ribbon_B01.ox" "unitConversion65.i";
connectAttr ":PxrPathTracer.msg" ":rmanGlobals.ri_integrator";
connectAttr "rmanDefaultBakeDisplay.msg" ":rmanBakingGlobals.displays[0]";
connectAttr ":bake_PxrPathTracer.msg" ":rmanBakingGlobals.ri_integrator";
connectAttr "diffuse.msg" "rmanDefaultBakeDisplay.displayChannels[0]";
connectAttr "a.msg" "rmanDefaultBakeDisplay.displayChannels[1]";
connectAttr "d_openexr.msg" "rmanDefaultBakeDisplay.displayType";
connectAttr "Leg_L_D01_Rivet.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Reverse_Twist_Ribbon_B01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "makeNurbPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Leg_L_Drv_Jnt_Ribbon_A01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Leg_L_Ribbon_Surface_Shape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "unitConversion65.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "tweak3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_B01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "unitConversion63.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Leg_L_Ribbon_Surface_Shape1Orig1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Leg_L_Drv_Jnt_Ribbon_Mid_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_Shape1Orig1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "sine1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "unitConversion64.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Leg_L_twist1HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Leg_L_Ribbon_BShp_Surface_Shape1Orig1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Leg_L_CTRL_Ribbon_B01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Reverse_Twist_Ribbon_A01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Leg_L_CTRL_Ribbon_A01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Ribbon_BShp_Node_Surface_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Leg_L_twist1Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "tweak4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_Shape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Leg_L_Crv_Wire_Ribbon_Surface_01BaseWireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "unitConversion62.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "skinCluster2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "sine1HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Twist_Attr.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "Leg_L_D01_Point_On_Surface.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Leg_L_D01_FourByFour_MatX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "tweak2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "Leg_L_D01_DecMatX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Wire_Attr.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "sine1Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "d_openexr.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "lambert2SG10.pa" ":renderPartition.st" -na;
connectAttr "Ribbon_Shader_01.msg" ":defaultShaderList1.s" -na;
connectAttr "Reverse_Twist_Ribbon_A01.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Reverse_Twist_Ribbon_B01.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "MultMatX_Leg_L_Ribbon_Surface_01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Leg_L_Ribbon_Surface_01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Offset_Leg_L_Ribbon_Surface_01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Offset_Leg_L_Ribbon_Follicle_B01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Offset_Leg_L_Ribbon_Follicle_C01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Offset_Leg_L_Ribbon_Follicle_D01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Offset_Leg_L_Ribbon_Follicle_E01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "MultMatX_sine1Handle.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_sine1Handle.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_sine1Handle.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_A01_Point_On_Surface.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_A01_FourByFour_MatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_A01_DecMatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_B01_Point_On_Surface.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_B01_FourByFour_MatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_B01_DecMatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_C01_Point_On_Surface.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_C01_FourByFour_MatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_C01_DecMatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Leg_L_D01_Point_On_Surface.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Leg_L_D01_FourByFour_MatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Leg_L_D01_DecMatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_E01_Point_On_Surface.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_E01_FourByFour_MatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Test_E01_DecMatX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "MultMatX_Test_C01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Test_C01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Test_C01_Rivet.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "MultMatX_Test_D01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Test_D01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Test_D01_Rivet.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "MultMatX_Test_E01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Test_E01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Test_E01_Rivet.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "MultMatX_Test_Ribbon_Surface_01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Test_Ribbon_Surface_01.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "DecMatX_Offset_Test_Ribbon_Surface_01.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "DecMatX_Offset_Test_A01_Rivet1.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "MultMatX_Leg_L_A01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Leg_L_A01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Leg_L_A01_Rivet.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "MultMatX_Leg_L_B01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Leg_L_B01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Leg_L_B01_Rivet.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "MultMatX_Leg_L_C01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Leg_L_C01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Leg_L_C01_Rivet.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "MultMatX_Leg_L_D01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Leg_L_D01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Leg_L_D01_Rivet.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "MultMatX_Leg_L_E01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Leg_L_E01_Rivet.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DecMatX_Offset_Leg_L_E01_Rivet.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanBakingGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":bake_PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr "d_openexr.msg" ":defaultRenderingList1.r" -na;
// End of ribbonMatX.ma
