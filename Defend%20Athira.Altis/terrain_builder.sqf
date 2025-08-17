// Export of 'Defend%20Athira.Altis' by lleonardo on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item297 = "";
if (_layerRoot) then {
	_item297 = createMarker ["marker_3",[12489.8,19157.1,0]];
	_this = _item297;
	_markers pushback _this;
	_markerIDs pushback 297;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 113.199;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item298 = "";
if (_layerRoot) then {
	_item298 = createMarker ["marker_4",[12646.6,19535.9,0]];
	_this = _item298;
	_markers pushback _this;
	_markerIDs pushback 298;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 121.827;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item299 = "";
if (_layerRoot) then {
	_item299 = createMarker ["marker_5",[12921.4,19883.4,0]];
	_this = _item299;
	_markers pushback _this;
	_markerIDs pushback 299;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 135;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item300 = "";
if (_layerRoot) then {
	_item300 = createMarker ["marker_6",[13225.3,20061.1,0]];
	_this = _item300;
	_markers pushback _this;
	_markerIDs pushback 300;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 145.289;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item301 = "";
if (_layerRoot) then {
	_item301 = createMarker ["marker_7",[13545.1,20178.7,0]];
	_this = _item301;
	_markers pushback _this;
	_markerIDs pushback 301;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 160.973;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item1160 = "";
if (_layerRoot) then {
	_item1160 = createMarker ["artillery_base",[14714.3,16690.3,0]];
	_this = _item1160;
	_markers pushback _this;
	_markerIDs pushback 1160;
	_this setMarkerType "b_art";
	_this setMarkerText "Papa Bear";
	_this setMarkerDir 310.978;
	_this setMarkerShape "ICON";
};

private _item1426 = "";
if (_layerRoot) then {
	_item1426 = createMarker ["back_up_standby",[14630.2,16614.2,0]];
	_this = _item1426;
	_markers pushback _this;
	_markerIDs pushback 1426;
	_this setMarkerType "b_armor";
	_this setMarkerText "Charlie Mechanized Group";
	_this setMarkerDir 310.978;
	_this setMarkerShape "ICON";
};

private _item1530 = "";
if (_layerRoot) then {
	_item1530 = createMarker ["marker_8",[14772.9,19958.3,0]];
	_this = _item1530;
	_markers pushback _this;
	_markerIDs pushback 1530;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 210.386;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item1581 = "";
if (_layerRoot) then {
	_item1581 = createMarker ["marker_9",[14563,20141,0]];
	_this = _item1581;
	_markers pushback _this;
	_markerIDs pushback 1581;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 202.372;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item1607 = "";
if (_layerRoot) then {
	_item1607 = createMarker ["airbase",[14771,16802.6,0]];
	_this = _item1607;
	_markers pushback _this;
	_markerIDs pushback 1607;
	_this setMarkerType "b_air";
	_this setMarkerText "November Airbase";
	_this setMarkerDir 310.978;
	_this setMarkerShape "ICON";
};

private _item1856 = "";
if (_layerRoot) then {
	_item1856 = createMarker ["marker_10",[14277.6,20315.4,0]];
	_this = _item1856;
	_markers pushback _this;
	_markerIDs pushback 1856;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 188.925;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item1892 = "";
if (_layerRoot) then {
	_item1892 = createMarker ["marker_11",[13945.6,20307.6,0]];
	_this = _item1892;
	_markers pushback _this;
	_markerIDs pushback 1892;
	_this setMarkerType "mil_arrow2";
	_this setMarkerSize [2,2];
	_this setMarkerDir 174.451;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorEAST";
};

private _item1936 = "";
if (_layerRoot) then {
	_item1936 = createMarker ["marker_18",[13714.6,18912.3,0]];
	_this = _item1936;
	_markers pushback _this;
	_markerIDs pushback 1936;
	_this setMarkerType "mil_arrow";
	_this setMarkerText "Hold Bravo";
	_this setMarkerDir 308.481;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
};

private _item1937 = "";
if (_layerRoot) then {
	_item1937 = createMarker ["marker_19",[13874.6,19136.4,0]];
	_this = _item1937;
	_markers pushback _this;
	_markerIDs pushback 1937;
	_this setMarkerType "mil_arrow";
	_this setMarkerText "Hold Alpha";
	_this setMarkerDir 358.831;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
};

private _item1938 = "";
if (_layerRoot) then {
	_item1938 = createMarker ["marker_20",[14127,19056.9,0]];
	_this = _item1938;
	_markers pushback _this;
	_markerIDs pushback 1938;
	_this setMarkerType "mil_arrow";
	_this setMarkerText "Hold Charlie";
	_this setMarkerDir 21.038;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
};

private _item1939 = "";
if (_layerRoot) then {
	_item1939 = createMarker ["marker_21",[14276.1,15987.1,0]];
	_this = _item1939;
	_markers pushback _this;
	_markerIDs pushback 1939;
	_this setMarkerText "BLUFOR";
	_this setMarkerSize [3000,10000];
	_this setMarkerDir 73.074;
	_this setMarkerShape "RECTANGLE";
	_this setMarkerBrush "Horizontal";
	_this setMarkerColor "ColorWEST";
};

private _item1940 = "";
if (_layerRoot) then {
	_item1940 = createMarker ["marker_22",[12583.5,21743.6,0]];
	_this = _item1940;
	_markers pushback _this;
	_markerIDs pushback 1940;
	_this setMarkerText "OPFOR";
	_this setMarkerSize [3000,10000];
	_this setMarkerDir 73.074;
	_this setMarkerShape "RECTANGLE";
	_this setMarkerBrush "Horizontal";
	_this setMarkerColor "ColorEAST";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item27 = grpNull;
if (_layerRoot) then {
	_item27 = createGroup west;
	_this = _item27;
	_groups pushback _this;
	_groupIDs pushback 27;
};

private _item73 = grpNull;
if (_layerRoot) then {
	_item73 = createGroup east;
	_this = _item73;
	_groups pushback _this;
	_groupIDs pushback 73;
};

private _item101 = grpNull;
if (_layerRoot) then {
	_item101 = createGroup east;
	_this = _item101;
	_groups pushback _this;
	_groupIDs pushback 101;
};

private _item115 = grpNull;
if (_layerRoot) then {
	_item115 = createGroup east;
	_this = _item115;
	_groups pushback _this;
	_groupIDs pushback 115;
};

private _item129 = grpNull;
if (_layerRoot) then {
	_item129 = createGroup east;
	_this = _item129;
	_groups pushback _this;
	_groupIDs pushback 129;
};

private _item87 = grpNull;
if (_layerRoot) then {
	_item87 = createGroup east;
	_this = _item87;
	_groups pushback _this;
	_groupIDs pushback 87;
};

private _item841 = grpNull;
if (_layerRoot) then {
	_item841 = createGroup west;
	_this = _item841;
	_groups pushback _this;
	_groupIDs pushback 841;
};

private _item1067 = grpNull;
if (_layerRoot) then {
	_item1067 = createGroup west;
	_this = _item1067;
	_groups pushback _this;
	_groupIDs pushback 1067;
};

private _item1163 = grpNull;
if (_layerRoot) then {
	_item1163 = createGroup west;
	_this = _item1163;
	_groups pushback _this;
	_groupIDs pushback 1163;
};

private _item1494 = grpNull;
if (_layerRoot) then {
	_item1494 = createGroup east;
	_this = _item1494;
	_groups pushback _this;
	_groupIDs pushback 1494;
};

private _item1531 = grpNull;
if (_layerRoot) then {
	_item1531 = createGroup west;
	_this = _item1531;
	_groups pushback _this;
	_groupIDs pushback 1531;
};

private _item1546 = grpNull;
if (_layerRoot) then {
	_item1546 = createGroup east;
	_this = _item1546;
	_groups pushback _this;
	_groupIDs pushback 1546;
};

private _item1588 = grpNull;
if (_layerRoot) then {
	_item1588 = createGroup west;
	_this = _item1588;
	_groups pushback _this;
	_groupIDs pushback 1588;
};

private _item1821 = grpNull;
if (_layerRoot) then {
	_item1821 = createGroup east;
	_this = _item1821;
	_groups pushback _this;
	_groupIDs pushback 1821;
};

private _item1857 = grpNull;
if (_layerRoot) then {
	_item1857 = createGroup east;
	_this = _item1857;
	_groups pushback _this;
	_groupIDs pushback 1857;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item28 = objNull;
if (_layerRoot) then {
	_item28 = _item27 createUnit ["CUP_B_USMC_Soldier_SL",[13841.2,18940.3,-3.24249e-005],[],0,"CAN_COLLIDE"];
	_item27 selectLeader _item28;
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [13841.2,18940.4,20.2331];
	_this setVectorDirAndUp [[-0.603528,0.797342,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_roll_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_SL",[["CUP_30Rnd_556x45_Stanag",8,30],["CUP_HandGrenade_M67",2,1],["SmokeShell",2,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_15Rnd_9x19_M9",3,15]]],["B_AssaultPack_cbr",[["CUP_30Rnd_556x45_Stanag",20,30]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	officer_alpha = _this;
	_this setVehicleVarName "officer_alpha";
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Oliver O'Sullivan";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item310 = objNull;
if (_layerRoot) then {
	_item310 = _item27 createUnit ["CUP_B_USMC_Soldier_MG",[13848.3,18931.8,-9.53674e-005],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [13848.3,18931.9,20.1616];
	_this setVectorDirAndUp [[-0.601731,0.79814,0.0298736],[-0.0771026,-0.0952758,0.99246]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Thomas Harris";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item456 = objNull;
if (_layerRoot) then {
	_item456 = _item27 createUnit ["CUP_B_USMC_Soldier_GL",[13849.7,18924.7,-5.91278e-005],[],0,"CAN_COLLIDE"];
	_this = _item456;
	_objects pushback _this;
	_objectIDs pushback 456;
	_this setPosWorld [13849.7,18924.8,20.1406];
	_this setVectorDirAndUp [[-0.598023,0.800084,-0.0472675],[-0.13476,-0.0422402,0.989978]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Gillian Jackson";;
	_this setface "WhiteHead_09";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item459 = objNull;
if (_layerRoot) then {
	_item459 = _item27 createUnit ["CUP_B_USMC_Soldier_GL",[13845.7,18922.2,1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item459;
	_objects pushback _this;
	_objectIDs pushback 459;
	_this setPosWorld [13845.7,18922.2,19.5031];
	_this setVectorDirAndUp [[-0.598023,0.79766,-0.0781437],[-0.134759,-0.00396021,0.99087]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Jack Snowe";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item469 = objNull;
if (_layerRoot) then {
	_item469 = _item27 createUnit ["CUP_B_USMC_Medic",[13840.9,18918.4,-0.000116348],[],0,"CAN_COLLIDE"];
	_this = _item469;
	_objects pushback _this;
	_objectIDs pushback 469;
	_this setPosWorld [13840.9,18918.5,19.4687];
	_this setVectorDirAndUp [[-0.603463,0.797383,0.00354023],[0.0146639,0.00665851,0.99987]];
	_this setUnitLoadout [["CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",2],["CUP_30Rnd_556x45_Stanag",3,30]]],["CUP_V_B_Eagle_SPC_Corpsman",[["CUP_30Rnd_556x45_Stanag",13,30],["SmokeShell",1,1],["CUP_HandGrenade_M67",1,1]]],["CUP_B_USMC_AssaultPack_Medic",[["FirstAidKit",14],["Medikit",2]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ryan Watson";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item568 = objNull;
if (_layerRoot) then {
	_item568 = _item27 createUnit ["CUP_B_USMC_Soldier_MG",[13851.8,18934.1,0.000133514],[],0,"CAN_COLLIDE"];
	_this = _item568;
	_objects pushback _this;
	_objectIDs pushback 568;
	_this setPosWorld [13851.8,18934.1,20.3926];
	_this setVectorDirAndUp [[-0.603528,0.797199,0.0151357],[-0.00133721,-0.0199946,0.999799]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Terrence Thomas";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item678 = objNull;
if (_layerRoot) then {
	_item678 = _item27 createUnit ["CUP_B_USMC_Soldier_Marksman",[13844.8,18929.2,-0.000127792],[],0,"CAN_COLLIDE"];
	_this = _item678;
	_objects pushback _this;
	_objectIDs pushback 678;
	_this setPosWorld [13844.8,18929.3,19.7019];
	_this setVectorDirAndUp [[-0.603463,0.79624,0.0428334],[0.0146682,-0.042623,0.998984]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",1],["SmokeShell",1,1],["7Rnd_408_Mag",2,7]]],["CUP_V_B_Eagle_SPC_DMR",[["CUP_HandGrenade_M67",2,1],["SmokeShellRed",1,1],["7Rnd_408_Mag",6,7],["CUP_7Rnd_45ACP_1911",2,7]]],["B_AssaultPack_rgr",[["7Rnd_408_Mag",10,7],["CUP_7Rnd_45ACP_1911",3,7]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Harry Snowe";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1099 = objNull;
if (_layerRoot) then {
	_item1099 = _item27 createUnit ["CUP_B_USMC_Soldier_AR",[13857.1,18929.9,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item1099;
	_objects pushback _this;
	_objectIDs pushback 1099;
	_this setPosWorld [13857.1,18930,20.3836];
	_this setVectorDirAndUp [[-0.582772,0.812632,0.00259247],[-0.0159977,-0.0146621,0.999765]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Gillian O'Sullivan";;
	_this setface "WhiteHead_06";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1100 = objNull;
if (_layerRoot) then {
	_item1100 = _item27 createUnit ["CUP_B_USMC_Soldier",[13840.8,18925.2,-2.86102e-005],[],0,"CAN_COLLIDE"];
	_this = _item1100;
	_objects pushback _this;
	_objectIDs pushback 1100;
	_this setPosWorld [13840.8,18925.2,19.5815];
	_this setVectorDirAndUp [[-0.582813,0.811409,0.0440913],[0.0106693,-0.0466135,0.998856]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Chad Allen";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1103 = objNull;
if (_layerRoot) then {
	_item1103 = _item27 createUnit ["CUP_B_USMC_Sniper_M107",[13855.4,18936.2,0.000125885],[],0,"CAN_COLLIDE"];
	_this = _item1103;
	_objects pushback _this;
	_objectIDs pushback 1103;
	_this setPosWorld [13855.4,18936.2,20.476];
	_this setVectorDirAndUp [[-0.603485,0.797356,0.00551408],[-0.012,-0.0159964,0.9998]];
	_this setUnitLoadout [["CUP_srifle_M107_Base","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107",10],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_Ghillie_WDL",[["FirstAidKit",1],["CUP_10Rnd_127x99_M107",3,10],["CUP_HandGrenade_M67",1,1],["CUP_7Rnd_45ACP_1911",2,7]]],["V_BandollierB_oli",[["CUP_10Rnd_127x99_M107",4,10],["SmokeShell",1,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_7Rnd_45ACP_1911",1,7]]],["B_AssaultPack_dgtl",[["CUP_10Rnd_127x99_M107",10,10],["CUP_7Rnd_45ACP_1911",1,7]]],"","CUP_G_Shades_Black",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Liam Scott";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1106 = objNull;
if (_layerRoot) then {
	_item1106 = _item27 createUnit ["CUP_B_USMC_Soldier",[13853.1,18927,-6.10352e-005],[],0,"CAN_COLLIDE"];
	_this = _item1106;
	_objects pushback _this;
	_objectIDs pushback 1106;
	_this setPosWorld [13853.1,18927,20.351];
	_this setVectorDirAndUp [[-0.582784,0.812615,-0.0044537],[0.0146639,0.015996,0.999765]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Daniel Brown";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1349 = objNull;
if (_layerRoot) then {
	_item1349 = _item27 createUnit ["CUP_B_USMC_Soldier_FROG_WDL",[13837.1,18921.7,9.15527e-005],[],0,"CAN_COLLIDE"];
	_this = _item1349;
	_objects pushback _this;
	_objectIDs pushback 1349;
	_this setPosWorld [13837.1,18921.7,19.5071];
	_this setVectorDirAndUp [[-0.737059,0.675636,0.016133],[0.0279894,0.00666556,0.999586]];
	_this setSkill 1;
	_this setname "Sykes MacDonald";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.01;;
};

private _item1934 = objNull;
if (_layerRoot) then {
	_item1934 = _item27 createUnit ["CUP_B_USMC_Soldier_Marksman",[13861.4,18933.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1934;
	_objects pushback _this;
	_objectIDs pushback 1934;
	_this setPosWorld [13861.4,18933.1,20.4654];
	_this setVectorDirAndUp [[-0.603494,0.797137,0.0191954],[0.0106636,-0.0160028,0.999815]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Deagle","","","",["CUP_7Rnd_50AE_Deagle",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["CUP_7Rnd_50AE_Deagle",5,7]]],["CUP_V_B_Eagle_SPC_DMR",[["7Rnd_408_Mag",8,7],["CUP_7Rnd_50AE_Deagle",1,7]]],["B_AssaultPack_cbr",[["7Rnd_408_Mag",11,7]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	selectPlayer _this;
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Brian Smith";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = _item73 createUnit ["CUP_O_RU_Soldier_SL",[12696.7,19071.6,0],[],0,"CAN_COLLIDE"];
	_item73 selectLeader _item74;
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [12696.7,19071.7,30.4168];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Stepan Pecharov";;
	_this setface "WhiteHead_30";;
	_this setspeaker "Male01RUS";;
	_this setpitch 0.97;;
};

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = _item73 createUnit ["CUP_O_RU_Soldier_MG",[12699.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [12699.7,19066.7,30.812];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Vasil Yakushkin";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03191;;
};

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = _item73 createUnit ["CUP_O_RU_Soldier_AT",[12701.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [12701.7,19066.7,30.8653];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Lev Golovko";;
	_this setface "WhiteHead_11";;
	_this setspeaker "male03rus";;
	_this setpitch 0.984629;;
};

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = _item73 createUnit ["CUP_O_RU_Soldier_LAT",[12703.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [12703.7,19066.7,30.8734];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Daniil Lermontov";;
	_this setface "RussianHead_2";;
	_this setspeaker "male03rus";;
	_this setpitch 0.9839;;
};

private _item78 = objNull;
if (_layerRoot) then {
	_item78 = _item73 createUnit ["CUP_O_RU_Soldier_GL",[12705.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [12705.7,19066.7,30.6158];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Egor Rogozhkin";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male01rus";;
	_this setpitch 0.954212;;
};

private _item79 = objNull;
if (_layerRoot) then {
	_item79 = _item73 createUnit ["CUP_O_RU_Soldier_Marksman",[12707.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [12707.7,19066.7,30.2799];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Aleksei Mamayev";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00589;;
};

private _item80 = objNull;
if (_layerRoot) then {
	_item80 = _item73 createUnit ["CUP_O_RU_Soldier_MG",[12709.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [12709.7,19066.7,29.9438];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vladimir Timoshenko";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02865;;
};

private _item81 = objNull;
if (_layerRoot) then {
	_item81 = _item73 createUnit ["CUP_O_RU_Soldier_AT",[12711.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [12711.7,19066.7,29.6557];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vasil Zverev";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male02rus";;
	_this setpitch 0.985868;;
};

private _item82 = objNull;
if (_layerRoot) then {
	_item82 = _item73 createUnit ["CUP_O_RU_Soldier_AR",[12713.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [12713.7,19066.7,29.3915];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Grigoriy Bychkov";;
	_this setface "RussianHead_5";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01927;;
};

private _item83 = objNull;
if (_layerRoot) then {
	_item83 = _item73 createUnit ["CUP_O_RU_Soldier_LAT",[12715.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [12715.7,19066.7,29.0981];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Pyotr Bychkov";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male02rus";;
	_this setpitch 0.968351;;
};

private _item84 = objNull;
if (_layerRoot) then {
	_item84 = _item73 createUnit ["CUP_O_RU_Soldier_GL",[12717.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [12717.7,19066.7,28.8049];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Aleksander Dobryakov";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male01rus";;
	_this setpitch 1.0387;;
};

private _item85 = objNull;
if (_layerRoot) then {
	_item85 = _item73 createUnit ["CUP_O_RU_Soldier",[12719.7,19066.6,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [12719.7,19066.7,28.6879];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Boris Glebov";;
	_this setface "LivonianHead_3";;
	_this setspeaker "male03rus";;
	_this setpitch 0.982884;;
};

private _item222 = objNull;
if (_layerRoot) then {
	_item222 = _item73 createUnit ["CUP_O_RU_Soldier_MG",[12700.3,19061.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [12700.3,19061.9,30.9375];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Vitaly Timoshenko";;
	_this setface "LivonianHead_3";;
	_this setspeaker "male02rus";;
	_this setpitch 0.979893;;
};

private _item223 = objNull;
if (_layerRoot) then {
	_item223 = _item73 createUnit ["CUP_O_RU_Soldier_AT",[12702.3,19061.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [12702.3,19061.9,30.9871];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Timofey Glebov";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male02rus";;
	_this setpitch 0.98668;;
};

private _item224 = objNull;
if (_layerRoot) then {
	_item224 = _item73 createUnit ["CUP_O_RU_Soldier_LAT",[12704.3,19061.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [12704.3,19061.9,31.0404];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Lev Yakushkin";;
	_this setface "LivonianHead_8";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02247;;
};

private _item225 = objNull;
if (_layerRoot) then {
	_item225 = _item73 createUnit ["CUP_O_RU_Soldier_GL",[12706.3,19061.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [12706.3,19061.9,30.9768];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Nikolay Turchinsky";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male01rus";;
	_this setpitch 0.966657;;
};

private _item226 = objNull;
if (_layerRoot) then {
	_item226 = _item73 createUnit ["CUP_O_RU_Soldier_Marksman",[12708.3,19061.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [12708.3,19061.9,30.8329];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vyacheslav Kamenev";;
	_this setface "RussianHead_2";;
	_this setspeaker "male01rus";;
	_this setpitch 0.957904;;
};

private _item227 = objNull;
if (_layerRoot) then {
	_item227 = _item73 createUnit ["CUP_O_RU_Soldier_MG",[12710.3,19061.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [12710.3,19061.9,30.4969];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vladimir Timoshenko";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 1.02978;;
};

private _item228 = objNull;
if (_layerRoot) then {
	_item228 = _item73 createUnit ["CUP_O_RU_Soldier_AT",[12712.3,19061.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [12712.3,19061.9,30.1609];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Yevgeniy Glebov";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male01rus";;
	_this setpitch 0.959571;;
};

private _item229 = objNull;
if (_layerRoot) then {
	_item229 = _item73 createUnit ["CUP_O_RU_Soldier_AR",[12714.3,19061.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [12714.3,19061.9,29.8487];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Arkadiy Nikolayev";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male03rus";;
	_this setpitch 0.996101;;
};

private _item230 = objNull;
if (_layerRoot) then {
	_item230 = _item73 createUnit ["CUP_O_RU_Soldier_LAT",[12716.3,19061.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [12716.3,19061.9,29.5447];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Kiril Putin";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male03rus";;
	_this setpitch 0.99348;;
};

private _item231 = objNull;
if (_layerRoot) then {
	_item231 = _item73 createUnit ["CUP_O_RU_Soldier_GL",[12718.3,19061.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [12718.3,19061.9,29.2513];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Konstantin Rogozhkin";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male01rus";;
	_this setpitch 1.0068;;
};

private _item232 = objNull;
if (_layerRoot) then {
	_item232 = _item73 createUnit ["CUP_O_RU_Soldier",[12720.3,19061.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [12720.3,19061.9,28.9526];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Egor Morozov";;
	_this setface "RussianHead_2";;
	_this setspeaker "male02rus";;
	_this setpitch 0.964447;;
};

private _item371 = objNull;
if (_layerRoot) then {
	_item371 = _item73 createUnit ["CUP_O_RU_Soldier_MG",[12700.2,19055.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [12700.2,19056,30.9149];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Pyotr Beregovoi";;
	_this setface "RussianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 0.995924;;
};

private _item372 = objNull;
if (_layerRoot) then {
	_item372 = _item73 createUnit ["CUP_O_RU_Soldier_AT",[12702.2,19055.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [12702.2,19056,30.9469];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Maksim Yagudin";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male02rus";;
	_this setpitch 0.980061;;
};

private _item373 = objNull;
if (_layerRoot) then {
	_item373 = _item73 createUnit ["CUP_O_RU_Soldier_LAT",[12704.2,19055.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item373;
	_objects pushback _this;
	_objectIDs pushback 373;
	_this setPosWorld [12704.2,19056,30.9789];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Oleg Yakushkin";;
	_this setface "RussianHead_2";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03503;;
};

private _item374 = objNull;
if (_layerRoot) then {
	_item374 = _item73 createUnit ["CUP_O_RU_Soldier_GL",[12706.2,19055.9,0.000478745],[],0,"CAN_COLLIDE"];
	_this = _item374;
	_objects pushback _this;
	_objectIDs pushback 374;
	_this setPosWorld [12706.2,19056,31.0093];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Leonid Golovko";;
	_this setface "RussianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 1.02042;;
};

private _item375 = objNull;
if (_layerRoot) then {
	_item375 = _item73 createUnit ["CUP_O_RU_Soldier_Marksman",[12708.2,19055.9,0],[],0,"CAN_COLLIDE"];
	_this = _item375;
	_objects pushback _this;
	_objectIDs pushback 375;
	_this setPosWorld [12708.2,19056,30.9109];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Produnov";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male03RUS";;
	_this setpitch 0.96;;
};

private _item376 = objNull;
if (_layerRoot) then {
	_item376 = _item73 createUnit ["CUP_O_RU_Soldier_MG",[12710.2,19055.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item376;
	_objects pushback _this;
	_objectIDs pushback 376;
	_this setPosWorld [12710.2,19056,30.7833];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Lermontov";;
	_this setface "LivonianHead_8";;
	_this setspeaker "male01rus";;
	_this setpitch 0.979362;;
};

private _item377 = objNull;
if (_layerRoot) then {
	_item377 = _item73 createUnit ["CUP_O_RU_Soldier_AT",[12712.2,19055.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [12712.2,19056,30.6553];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "German Kuznetsov";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01356;;
};

private _item378 = objNull;
if (_layerRoot) then {
	_item378 = _item73 createUnit ["CUP_O_RU_Soldier_AR",[12714.2,19055.9,0.00047493],[],0,"CAN_COLLIDE"];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [12714.2,19056,30.5082];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Nikolay Zhitkov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02785;;
};

private _item379 = objNull;
if (_layerRoot) then {
	_item379 = _item73 createUnit ["CUP_O_RU_Soldier_LAT",[12716.2,19055.9,0.000482559],[],0,"CAN_COLLIDE"];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [12716.2,19056,30.1988];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Filip Kirygin";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male01rus";;
	_this setpitch 0.974601;;
};

private _item380 = objNull;
if (_layerRoot) then {
	_item380 = _item73 createUnit ["CUP_O_RU_Soldier_GL",[12718.2,19055.9,0.000476837],[],0,"CAN_COLLIDE"];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [12718.2,19056,29.8895];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Nikita Yagudin";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male03rus";;
	_this setpitch 0.983827;;
};

private _item381 = objNull;
if (_layerRoot) then {
	_item381 = _item73 createUnit ["CUP_O_RU_Soldier",[12720.2,19055.9,0],[],0,"CAN_COLLIDE"];
	_this = _item381;
	_objects pushback _this;
	_objectIDs pushback 381;
	_this setPosWorld [12720.2,19056,29.5666];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Roman Putin";;
	_this setface "LivonianHead_1";;
	_this setspeaker "Male03RUS";;
	_this setpitch 1.04;;
};

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = _item101 createUnit ["CUP_O_RU_Soldier_SL",[13075.4,19714.4,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_item101 selectLeader _item102;
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [13075.4,19714.5,38.2094];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Timofey Nikolayev";;
	_this setface "WhiteHead_09";;
	_this setspeaker "Male03RUS";;
	_this setpitch 0.97;;
};

private _item103 = objNull;
if (_layerRoot) then {
	_item103 = _item101 createUnit ["CUP_O_RU_Soldier_MG",[13078.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [13078.4,19709.5,37.761];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Abram Morotov";;
	_this setface "RussianHead_3";;
	_this setspeaker "male03rus";;
	_this setpitch 1.04518;;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = _item101 createUnit ["CUP_O_RU_Soldier_AT",[13080.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [13080.4,19709.5,37.6567];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Viktor Petrov";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01771;;
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = _item101 createUnit ["CUP_O_RU_Soldier_LAT",[13082.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [13082.4,19709.5,37.554];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Nikita Rogozhkin";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male03rus";;
	_this setpitch 0.97844;;
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = _item101 createUnit ["CUP_O_RU_Soldier_GL",[13084.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [13084.4,19709.5,37.4499];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Oleg Morozov";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male01rus";;
	_this setpitch 0.990748;;
};

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = _item101 createUnit ["CUP_O_RU_Soldier_Marksman",[13086.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [13086.4,19709.5,37.3459];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Valentin Bychkov";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male01rus";;
	_this setpitch 0.956421;;
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = _item101 createUnit ["CUP_O_RU_Soldier_MG",[13088.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [13088.4,19709.5,37.239];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Aleksander Krasko";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03626;;
};

private _item109 = objNull;
if (_layerRoot) then {
	_item109 = _item101 createUnit ["CUP_O_RU_Soldier_AT",[13090.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [13090.4,19709.5,37.1243];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Boris Pecharov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male01rus";;
	_this setpitch 1.03237;;
};

private _item110 = objNull;
if (_layerRoot) then {
	_item110 = _item101 createUnit ["CUP_O_RU_Soldier_AR",[13092.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [13092.4,19709.5,37.0096];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Aleksander Malyukov";;
	_this setface "Sturrock";;
	_this setspeaker "male03rus";;
	_this setpitch 0.97837;;
};

private _item111 = objNull;
if (_layerRoot) then {
	_item111 = _item101 createUnit ["CUP_O_RU_Soldier_LAT",[13094.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [13094.4,19709.5,36.8949];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Konstantin Mamayev";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male02rus";;
	_this setpitch 0.978657;;
};

private _item112 = objNull;
if (_layerRoot) then {
	_item112 = _item101 createUnit ["CUP_O_RU_Soldier_GL",[13096.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [13096.4,19709.5,36.7846];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Stepan Shcherbakov";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male01rus";;
	_this setpitch 0.970026;;
};

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = _item101 createUnit ["CUP_O_RU_Soldier",[13098.4,19709.4,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [13098.4,19709.5,36.6646];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Kuzma Sudakov";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00758;;
};

private _item246 = objNull;
if (_layerRoot) then {
	_item246 = _item101 createUnit ["CUP_O_RU_Soldier_MG",[13078.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [13078.8,19704.2,37.5755];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Nikita Dobryakov";;
	_this setface "Sturrock";;
	_this setspeaker "male03rus";;
	_this setpitch 1.01132;;
};

private _item247 = objNull;
if (_layerRoot) then {
	_item247 = _item101 createUnit ["CUP_O_RU_Soldier_AT",[13080.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [13080.8,19704.2,37.4744];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Roman Tolstoy";;
	_this setface "WhiteHead_01";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00155;;
};

private _item248 = objNull;
if (_layerRoot) then {
	_item248 = _item101 createUnit ["CUP_O_RU_Soldier_LAT",[13082.8,19704.2,0.334511],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [13082.8,19704.2,37.7156];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vyacheslav Krasko";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male02rus";;
	_this setpitch 0.995326;;
};

private _item249 = objNull;
if (_layerRoot) then {
	_item249 = _item101 createUnit ["CUP_O_RU_Soldier_GL",[13084.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [13084.8,19704.2,37.2878];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Aleksei Shcherbakov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male01rus";;
	_this setpitch 0.999147;;
};

private _item250 = objNull;
if (_layerRoot) then {
	_item250 = _item101 createUnit ["CUP_O_RU_Soldier_Marksman",[13086.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [13086.8,19704.2,37.189];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Fyodor Privalov";;
	_this setface "Sturrock";;
	_this setspeaker "male01rus";;
	_this setpitch 0.969678;;
};

private _item251 = objNull;
if (_layerRoot) then {
	_item251 = _item101 createUnit ["CUP_O_RU_Soldier_MG",[13088.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [13088.8,19704.2,37.0814];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Timofey Yefremov";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01025;;
};

private _item252 = objNull;
if (_layerRoot) then {
	_item252 = _item101 createUnit ["CUP_O_RU_Soldier_AT",[13090.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [13090.8,19704.2,36.9721];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Viktor Pashinin";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male02rus";;
	_this setpitch 0.953592;;
};

private _item253 = objNull;
if (_layerRoot) then {
	_item253 = _item101 createUnit ["CUP_O_RU_Soldier_AR",[13092.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [13092.8,19704.2,36.8627];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Kiril Zhitkov";;
	_this setface "LivonianHead_3";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00368;;
};

private _item254 = objNull;
if (_layerRoot) then {
	_item254 = _item101 createUnit ["CUP_O_RU_Soldier_LAT",[13094.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [13094.8,19704.2,36.7493];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Maksim Pushkin";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male01rus";;
	_this setpitch 0.957685;;
};

private _item255 = objNull;
if (_layerRoot) then {
	_item255 = _item101 createUnit ["CUP_O_RU_Soldier_GL",[13096.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [13096.8,19704.2,36.6542];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "German Ivanov";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01398;;
};

private _item256 = objNull;
if (_layerRoot) then {
	_item256 = _item101 createUnit ["CUP_O_RU_Soldier",[13098.8,19704.2,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [13098.8,19704.2,36.5609];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vasili Malyukov";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male02RUS";;
	_this setpitch 1.05;;
};

private _item397 = objNull;
if (_layerRoot) then {
	_item397 = _item101 createUnit ["CUP_O_RU_Soldier_LAT",[13083.5,19697.3,0.334507],[],0,"CAN_COLLIDE"];
	_this = _item397;
	_objects pushback _this;
	_objectIDs pushback 397;
	_this setPosWorld [13083.5,19697.3,37.6495];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vadim Sudakov";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male02rus";;
	_this setpitch 0.99976;;
};

private _item398 = objNull;
if (_layerRoot) then {
	_item398 = _item101 createUnit ["CUP_O_RU_Soldier_GL",[13085.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item398;
	_objects pushback _this;
	_objectIDs pushback 398;
	_this setPosWorld [13085.5,19697.3,37.2263];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Yevgeniy Medvedev";;
	_this setface "LivonianHead_10";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02159;;
};

private _item399 = objNull;
if (_layerRoot) then {
	_item399 = _item101 createUnit ["CUP_O_RU_Soldier_Marksman",[13087.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item399;
	_objects pushback _this;
	_objectIDs pushback 399;
	_this setPosWorld [13087.5,19697.3,37.1329];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vasili Golovko";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male01rus";;
	_this setpitch 0.988115;;
};

private _item400 = objNull;
if (_layerRoot) then {
	_item400 = _item101 createUnit ["CUP_O_RU_Soldier_MG",[13089.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item400;
	_objects pushback _this;
	_objectIDs pushback 400;
	_this setPosWorld [13089.5,19697.3,37.0184];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Alyosha Tolstoy";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male01rus";;
	_this setpitch 1.03542;;
};

private _item401 = objNull;
if (_layerRoot) then {
	_item401 = _item101 createUnit ["CUP_O_RU_Soldier_AT",[13091.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item401;
	_objects pushback _this;
	_objectIDs pushback 401;
	_this setPosWorld [13091.5,19697.3,36.9037];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Abram Zubov";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01906;;
};

private _item402 = objNull;
if (_layerRoot) then {
	_item402 = _item101 createUnit ["CUP_O_RU_Soldier_AR",[13093.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item402;
	_objects pushback _this;
	_objectIDs pushback 402;
	_this setPosWorld [13093.5,19697.3,36.7912];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Lev Naryshkin";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male03rus";;
	_this setpitch 1.03066;;
};

private _item403 = objNull;
if (_layerRoot) then {
	_item403 = _item101 createUnit ["CUP_O_RU_Soldier_LAT",[13095.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item403;
	_objects pushback _this;
	_objectIDs pushback 403;
	_this setPosWorld [13095.5,19697.3,36.6786];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Yuri Kamenev";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04313;;
};

private _item404 = objNull;
if (_layerRoot) then {
	_item404 = _item101 createUnit ["CUP_O_RU_Soldier_GL",[13097.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item404;
	_objects pushback _this;
	_objectIDs pushback 404;
	_this setPosWorld [13097.5,19697.3,36.5559];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Dimitri Lermontov";;
	_this setface "WhiteHead_30";;
	_this setspeaker "male03rus";;
	_this setpitch 0.951035;;
};

private _item395 = objNull;
if (_layerRoot) then {
	_item395 = _item101 createUnit ["CUP_O_RU_Soldier_MG",[13079.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item395;
	_objects pushback _this;
	_objectIDs pushback 395;
	_this setPosWorld [13079.5,19697.3,37.493];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Boris Petrov";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male01RUS";;
	_this setpitch 0.96;;
};

private _item396 = objNull;
if (_layerRoot) then {
	_item396 = _item101 createUnit ["CUP_O_RU_Soldier_AT",[13081.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item396;
	_objects pushback _this;
	_objectIDs pushback 396;
	_this setPosWorld [13081.5,19697.3,37.403];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Maksim Fisenko";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male03rus";;
	_this setpitch 0.97215;;
};

private _item405 = objNull;
if (_layerRoot) then {
	_item405 = _item101 createUnit ["CUP_O_RU_Soldier",[13099.5,19697.3,0],[],0,"CAN_COLLIDE"];
	_this = _item405;
	_objects pushback _this;
	_objectIDs pushback 405;
	_this setPosWorld [13099.5,19697.3,36.4332];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Kuzma Strugackiy";;
	_this setface "LivonianHead_1";;
	_this setspeaker "Male02RUS";;
	_this setpitch 1.05;;
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = _item115 createUnit ["CUP_O_RU_Soldier_SL",[13357.9,19873,0],[],0,"CAN_COLLIDE"];
	_item115 selectLeader _item116;
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [13357.9,19873,29.537];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Pavel Yefremov";;
	_this setface "RussianHead_1";;
	_this setspeaker "Male01RUS";;
	_this setpitch 0.97;;
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = _item115 createUnit ["CUP_O_RU_Soldier_MG",[13360.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [13360.9,19868,29.5716];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Vladimir Zhitkov";;
	_this setface "WhiteHead_30";;
	_this setspeaker "male03rus";;
	_this setpitch 0.973185;;
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = _item115 createUnit ["CUP_O_RU_Soldier_AT",[13362.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [13362.9,19868,29.6436];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Maksim Popov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male01rus";;
	_this setpitch 1.032;;
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = _item115 createUnit ["CUP_O_RU_Soldier_LAT",[13364.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [13364.9,19868,29.6907];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vasil Golovko";;
	_this setface "WhiteHead_01";;
	_this setspeaker "male01rus";;
	_this setpitch 1.03682;;
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = _item115 createUnit ["CUP_O_RU_Soldier_GL",[13366.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [13366.9,19868,29.4804];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "German Morozov";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0177;;
};

private _item121 = objNull;
if (_layerRoot) then {
	_item121 = _item115 createUnit ["CUP_O_RU_Soldier_Marksman",[13368.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [13368.9,19868,29.2644];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Nikita Yefremov";;
	_this setface "RussianHead_2";;
	_this setspeaker "male01rus";;
	_this setpitch 0.966059;;
};

private _item122 = objNull;
if (_layerRoot) then {
	_item122 = _item115 createUnit ["CUP_O_RU_Soldier_MG",[13370.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [13370.9,19868,29.0484];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ilya Petrov";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male01rus";;
	_this setpitch 1.02852;;
};

private _item123 = objNull;
if (_layerRoot) then {
	_item123 = _item115 createUnit ["CUP_O_RU_Soldier_AT",[13372.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [13372.9,19868,28.8847];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vladimir Golovko";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male01rus";;
	_this setpitch 0.977457;;
};

private _item124 = objNull;
if (_layerRoot) then {
	_item124 = _item115 createUnit ["CUP_O_RU_Soldier_AR",[13374.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [13374.9,19868,28.7807];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Valentin Maksimov";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04816;;
};

private _item125 = objNull;
if (_layerRoot) then {
	_item125 = _item115 createUnit ["CUP_O_RU_Soldier_LAT",[13376.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [13376.9,19868,28.6767];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vadim Zverev";;
	_this setface "WhiteHead_30";;
	_this setspeaker "male01rus";;
	_this setpitch 0.973914;;
};

private _item126 = objNull;
if (_layerRoot) then {
	_item126 = _item115 createUnit ["CUP_O_RU_Soldier_GL",[13378.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [13378.9,19868,28.5727];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Oleg Soloveychik";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male03rus";;
	_this setpitch 0.950809;;
};

private _item127 = objNull;
if (_layerRoot) then {
	_item127 = _item115 createUnit ["CUP_O_RU_Soldier",[13380.9,19868,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [13380.9,19868,28.5015];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Filip Yagudin";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male01rus";;
	_this setpitch 0.977165;;
};

private _item265 = objNull;
if (_layerRoot) then {
	_item265 = _item115 createUnit ["CUP_O_RU_Soldier_AR",[13376.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [13376.2,19863.5,28.4867];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Nikita Bulgakov";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01157;;
};

private _item266 = objNull;
if (_layerRoot) then {
	_item266 = _item115 createUnit ["CUP_O_RU_Soldier_LAT",[13378.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [13378.2,19863.5,28.379];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Semyon Gorbunov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 0.951926;;
};

private _item267 = objNull;
if (_layerRoot) then {
	_item267 = _item115 createUnit ["CUP_O_RU_Soldier_GL",[13380.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [13380.2,19863.5,28.2848];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vladimir Timoshenko";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male03rus";;
	_this setpitch 1.03546;;
};

private _item268 = objNull;
if (_layerRoot) then {
	_item268 = _item115 createUnit ["CUP_O_RU_Soldier",[13382.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [13382.2,19863.5,28.2608];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Andrey Pashinin";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male03rus";;
	_this setpitch 1.01115;;
};

private _item258 = objNull;
if (_layerRoot) then {
	_item258 = _item115 createUnit ["CUP_O_RU_Soldier_MG",[13362.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [13362.2,19863.5,29.2303];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Abram Pushkin";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male03rus";;
	_this setpitch 1.03993;;
};

private _item259 = objNull;
if (_layerRoot) then {
	_item259 = _item115 createUnit ["CUP_O_RU_Soldier_AT",[13364.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [13364.2,19863.5,29.3023];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Timofey Sudakov";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00627;;
};

private _item260 = objNull;
if (_layerRoot) then {
	_item260 = _item115 createUnit ["CUP_O_RU_Soldier_LAT",[13366.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [13366.2,19863.5,29.2564];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Kamenev";;
	_this setface "RussianHead_5";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0069;;
};

private _item261 = objNull;
if (_layerRoot) then {
	_item261 = _item115 createUnit ["CUP_O_RU_Soldier_GL",[13368.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [13368.2,19863.5,29.1391];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Maksim Yeltsin";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03284;;
};

private _item262 = objNull;
if (_layerRoot) then {
	_item262 = _item115 createUnit ["CUP_O_RU_Soldier_Marksman",[13370.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [13370.2,19863.5,28.9649];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Stepan Morotov";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male02rus";;
	_this setpitch 0.995155;;
};

private _item263 = objNull;
if (_layerRoot) then {
	_item263 = _item115 createUnit ["CUP_O_RU_Soldier_MG",[13372.2,19863.4,0],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [13372.2,19863.5,28.749];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Fyodor Kirygin";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male01rus";;
	_this setpitch 1.02788;;
};

private _item264 = objNull;
if (_layerRoot) then {
	_item264 = _item115 createUnit ["CUP_O_RU_Soldier_AT",[13374.2,19863.4,-0.000230789],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [13374.2,19863.5,28.6118];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Fisenko";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male02rus";;
	_this setpitch 0.974503;;
};

private _item411 = objNull;
if (_layerRoot) then {
	_item411 = _item115 createUnit ["CUP_O_RU_Soldier_MG",[13362,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item411;
	_objects pushback _this;
	_objectIDs pushback 411;
	_this setPosWorld [13362,19858,29.122];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Stepan Blagonravov";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male02rus";;
	_this setpitch 0.993205;;
};

private _item412 = objNull;
if (_layerRoot) then {
	_item412 = _item115 createUnit ["CUP_O_RU_Soldier_AT",[13364,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item412;
	_objects pushback _this;
	_objectIDs pushback 412;
	_this setPosWorld [13364,19858,29.0233];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Valentin Privalov";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00405;;
};

private _item413 = objNull;
if (_layerRoot) then {
	_item413 = _item115 createUnit ["CUP_O_RU_Soldier_LAT",[13366,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item413;
	_objects pushback _this;
	_objectIDs pushback 413;
	_this setPosWorld [13366,19858,28.9455];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Valery Produnov";;
	_this setface "RussianHead_5";;
	_this setspeaker "male03rus";;
	_this setpitch 0.988908;;
};

private _item414 = objNull;
if (_layerRoot) then {
	_item414 = _item115 createUnit ["CUP_O_RU_Soldier_GL",[13368,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item414;
	_objects pushback _this;
	_objectIDs pushback 414;
	_this setPosWorld [13368,19858,28.8616];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Roman Zverev";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male03rus";;
	_this setpitch 0.984599;;
};

private _item415 = objNull;
if (_layerRoot) then {
	_item415 = _item115 createUnit ["CUP_O_RU_Soldier_Marksman",[13370,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item415;
	_objects pushback _this;
	_objectIDs pushback 415;
	_this setPosWorld [13370,19858,28.7442];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vyacheslav Pecharov";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01073;;
};

private _item416 = objNull;
if (_layerRoot) then {
	_item416 = _item115 createUnit ["CUP_O_RU_Soldier_MG",[13372,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item416;
	_objects pushback _this;
	_objectIDs pushback 416;
	_this setPosWorld [13372,19858,28.6269];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Egor Vasilyev";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00444;;
};

private _item417 = objNull;
if (_layerRoot) then {
	_item417 = _item115 createUnit ["CUP_O_RU_Soldier_AT",[13374,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item417;
	_objects pushback _this;
	_objectIDs pushback 417;
	_this setPosWorld [13374,19858,28.4997];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vitaly Zhegalov";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male01rus";;
	_this setpitch 1.0323;;
};

private _item407 = objNull;
if (_layerRoot) then {
	_item407 = _item115 createUnit ["CUP_O_RU_Soldier_AR",[13376,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item407;
	_objects pushback _this;
	_objectIDs pushback 407;
	_this setPosWorld [13376,19858,28.3728];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vyacheslav Pecharov";;
	_this setface "WhiteHead_19";;
	_this setspeaker "male03rus";;
	_this setpitch 1.01131;;
};

private _item408 = objNull;
if (_layerRoot) then {
	_item408 = _item115 createUnit ["CUP_O_RU_Soldier_LAT",[13378,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item408;
	_objects pushback _this;
	_objectIDs pushback 408;
	_this setPosWorld [13378,19858,28.2475];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Konstantin Yefremov";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00454;;
};

private _item409 = objNull;
if (_layerRoot) then {
	_item409 = _item115 createUnit ["CUP_O_RU_Soldier_GL",[13380,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item409;
	_objects pushback _this;
	_objectIDs pushback 409;
	_this setPosWorld [13380,19858,28.1221];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Lev Maksimov";;
	_this setface "LivonianHead_10";;
	_this setspeaker "male02rus";;
	_this setpitch 0.981339;;
};

private _item410 = objNull;
if (_layerRoot) then {
	_item410 = _item115 createUnit ["CUP_O_RU_Soldier",[13382,19857.9,0],[],0,"CAN_COLLIDE"];
	_this = _item410;
	_objects pushback _this;
	_objectIDs pushback 410;
	_this setPosWorld [13382,19858,28.0891];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Pavel Alekseev";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male02RUS";;
	_this setpitch 1.04;;
};

private _item130 = objNull;
if (_layerRoot) then {
	_item130 = _item129 createUnit ["CUP_O_RU_Soldier_SL",[13609.8,20010.4,0],[],0,"CAN_COLLIDE"];
	_item129 selectLeader _item130;
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [13609.8,20010.4,28.6887];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Nikita Maksimov";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male01RUS";;
	_this setpitch 1.01;;
};

private _item131 = objNull;
if (_layerRoot) then {
	_item131 = _item129 createUnit ["CUP_O_RU_Soldier_MG",[13612.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [13612.8,20005.4,28.6063];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Dimitri Ivanov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male02rus";;
	_this setpitch 0.996831;;
};

private _item132 = objNull;
if (_layerRoot) then {
	_item132 = _item129 createUnit ["CUP_O_RU_Soldier_AT",[13614.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [13614.8,20005.4,28.5876];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Aleksei Soloveychik";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01004;;
};

private _item133 = objNull;
if (_layerRoot) then {
	_item133 = _item129 createUnit ["CUP_O_RU_Soldier_LAT",[13616.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [13616.8,20005.4,28.5689];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "German Davidov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 0.970176;;
};

private _item134 = objNull;
if (_layerRoot) then {
	_item134 = _item129 createUnit ["CUP_O_RU_Soldier_GL",[13618.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [13618.8,20005.4,28.5525];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Kuzma Malyukov";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male03rus";;
	_this setpitch 0.99579;;
};

private _item135 = objNull;
if (_layerRoot) then {
	_item135 = _item129 createUnit ["CUP_O_RU_Soldier_Marksman",[13620.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [13620.8,20005.4,28.523];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Roman Litvinov";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male03rus";;
	_this setpitch 0.978056;;
};

private _item136 = objNull;
if (_layerRoot) then {
	_item136 = _item129 createUnit ["CUP_O_RU_Soldier_MG",[13622.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [13622.8,20005.4,28.475];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Konstantin Zhegalov";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male03rus";;
	_this setpitch 1.012;;
};

private _item137 = objNull;
if (_layerRoot) then {
	_item137 = _item129 createUnit ["CUP_O_RU_Soldier_AT",[13624.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [13624.8,20005.4,28.4267];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Kiril Mamayev";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male01rus";;
	_this setpitch 0.9762;;
};

private _item138 = objNull;
if (_layerRoot) then {
	_item138 = _item129 createUnit ["CUP_O_RU_Soldier_AR",[13626.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [13626.8,20005.4,28.376];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Pavel Glebov";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male02rus";;
	_this setpitch 0.983555;;
};

private _item139 = objNull;
if (_layerRoot) then {
	_item139 = _item129 createUnit ["CUP_O_RU_Soldier_LAT",[13628.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [13628.8,20005.4,28.3182];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Timofey Putin";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male02rus";;
	_this setpitch 0.994597;;
};

private _item140 = objNull;
if (_layerRoot) then {
	_item140 = _item129 createUnit ["CUP_O_RU_Soldier_GL",[13630.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [13630.8,20005.4,28.2569];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Arkadiy Lermontov";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male03rus";;
	_this setpitch 0.967335;;
};

private _item141 = objNull;
if (_layerRoot) then {
	_item141 = _item129 createUnit ["CUP_O_RU_Soldier",[13632.8,20005.4,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [13632.8,20005.4,28.1908];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Aleksander Pashinin";;
	_this setface "Sturrock";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04361;;
};

private _item270 = objNull;
if (_layerRoot) then {
	_item270 = _item129 createUnit ["CUP_O_RU_Soldier_MG",[13616.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [13616.9,19994.3,28.426];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Ivan Lermontov";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male03rus";;
	_this setpitch 0.969166;;
};

private _item271 = objNull;
if (_layerRoot) then {
	_item271 = _item129 createUnit ["CUP_O_RU_Soldier_AT",[13618.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [13618.9,19994.3,28.3913];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Vasil Smirnov";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0104;;
};

private _item272 = objNull;
if (_layerRoot) then {
	_item272 = _item129 createUnit ["CUP_O_RU_Soldier_LAT",[13620.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [13620.9,19994.3,28.3484];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Konstantin Malyukov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02188;;
};

private _item273 = objNull;
if (_layerRoot) then {
	_item273 = _item129 createUnit ["CUP_O_RU_Soldier_GL",[13622.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [13622.9,19994.3,28.3057];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Igor Sudakov";;
	_this setface "WhiteHead_19";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00442;;
};

private _item274 = objNull;
if (_layerRoot) then {
	_item274 = _item129 createUnit ["CUP_O_RU_Soldier_Marksman",[13624.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [13624.9,19994.3,28.263];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Daniil Soloveychik";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male03rus";;
	_this setpitch 1.0337;;
};

private _item275 = objNull;
if (_layerRoot) then {
	_item275 = _item129 createUnit ["CUP_O_RU_Soldier_MG",[13626.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [13626.9,19994.3,28.2204];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Mikhail Zubov";;
	_this setface "RussianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 1.02652;;
};

private _item276 = objNull;
if (_layerRoot) then {
	_item276 = _item129 createUnit ["CUP_O_RU_Soldier_AT",[13628.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [13628.9,19994.3,28.1695];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Viktor Popov";;
	_this setface "LivonianHead_8";;
	_this setspeaker "male03rus";;
	_this setpitch 0.985554;;
};

private _item277 = objNull;
if (_layerRoot) then {
	_item277 = _item129 createUnit ["CUP_O_RU_Soldier_AR",[13630.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [13630.9,19994.3,28.1108];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Oleg Pushkin";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02785;;
};

private _item278 = objNull;
if (_layerRoot) then {
	_item278 = _item129 createUnit ["CUP_O_RU_Soldier_LAT",[13632.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [13632.9,19994.3,28.0521];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Fedor Pushkin";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male02rus";;
	_this setpitch 0.976118;;
};

private _item279 = objNull;
if (_layerRoot) then {
	_item279 = _item129 createUnit ["CUP_O_RU_Soldier_GL",[13634.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [13634.9,19994.3,27.9935];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vasil Mamayev";;
	_this setface "LivonianHead_10";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03427;;
};

private _item280 = objNull;
if (_layerRoot) then {
	_item280 = _item129 createUnit ["CUP_O_RU_Soldier",[13636.9,19994.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [13636.9,19994.3,27.9669];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Andrey Yagudin";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male01rus";;
	_this setpitch 0.972132;;
};

private _item428 = objNull;
if (_layerRoot) then {
	_item428 = _item129 createUnit ["CUP_O_RU_Soldier_GL",[13627.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item428;
	_objects pushback _this;
	_objectIDs pushback 428;
	_this setPosWorld [13627.7,19985.3,28.041];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "German Pecharov";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male03rus";;
	_this setpitch 0.959961;;
};

private _item429 = objNull;
if (_layerRoot) then {
	_item429 = _item129 createUnit ["CUP_O_RU_Soldier",[13629.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item429;
	_objects pushback _this;
	_objectIDs pushback 429;
	_this setPosWorld [13629.7,19985.3,27.9983];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Nikita Titov";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male02RUS";;
	_this setpitch 0.97;;
};

private _item419 = objNull;
if (_layerRoot) then {
	_item419 = _item129 createUnit ["CUP_O_RU_Soldier_MG",[13609.7,19985.2,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item419;
	_objects pushback _this;
	_objectIDs pushback 419;
	_this setPosWorld [13609.7,19985.3,28.4275];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Kiril Medvedev";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male02rus";;
	_this setpitch 1.04508;;
};

private _item420 = objNull;
if (_layerRoot) then {
	_item420 = _item129 createUnit ["CUP_O_RU_Soldier_AT",[13611.7,19985.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item420;
	_objects pushback _this;
	_objectIDs pushback 420;
	_this setPosWorld [13611.7,19985.3,28.4035];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Kiril Malyukov";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male01rus";;
	_this setpitch 0.989372;;
};

private _item421 = objNull;
if (_layerRoot) then {
	_item421 = _item129 createUnit ["CUP_O_RU_Soldier_LAT",[13613.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item421;
	_objects pushback _this;
	_objectIDs pushback 421;
	_this setPosWorld [13613.7,19985.3,28.3687];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Kiril Krasko";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male01rus";;
	_this setpitch 1.03532;;
};

private _item422 = objNull;
if (_layerRoot) then {
	_item422 = _item129 createUnit ["CUP_O_RU_Soldier_GL",[13615.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item422;
	_objects pushback _this;
	_objectIDs pushback 422;
	_this setPosWorld [13615.7,19985.3,28.326];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Viktor Kirygin";;
	_this setface "RussianHead_3";;
	_this setspeaker "male03rus";;
	_this setpitch 0.982368;;
};

private _item423 = objNull;
if (_layerRoot) then {
	_item423 = _item129 createUnit ["CUP_O_RU_Soldier_Marksman",[13617.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item423;
	_objects pushback _this;
	_objectIDs pushback 423;
	_this setPosWorld [13617.7,19985.3,28.2833];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vadim Ivanov";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male01rus";;
	_this setpitch 1.02727;;
};

private _item424 = objNull;
if (_layerRoot) then {
	_item424 = _item129 createUnit ["CUP_O_RU_Soldier_MG",[13619.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item424;
	_objects pushback _this;
	_objectIDs pushback 424;
	_this setPosWorld [13619.7,19985.3,28.2407];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Viktor Baranov";;
	_this setface "LivonianHead_1";;
	_this setspeaker "male03rus";;
	_this setpitch 0.968616;;
};

private _item425 = objNull;
if (_layerRoot) then {
	_item425 = _item129 createUnit ["CUP_O_RU_Soldier_AT",[13621.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item425;
	_objects pushback _this;
	_objectIDs pushback 425;
	_this setPosWorld [13621.7,19985.3,28.2024];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Dimitri Mamayev";;
	_this setface "RussianHead_3";;
	_this setspeaker "male02rus";;
	_this setpitch 0.989213;;
};

private _item426 = objNull;
if (_layerRoot) then {
	_item426 = _item129 createUnit ["CUP_O_RU_Soldier_AR",[13623.7,19985.2,0],[],0,"CAN_COLLIDE"];
	_this = _item426;
	_objects pushback _this;
	_objectIDs pushback 426;
	_this setPosWorld [13623.7,19985.3,28.1519];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "German Zhegalov";;
	_this setface "RussianHead_5";;
	_this setspeaker "male03rus";;
	_this setpitch 0.961914;;
};

private _item427 = objNull;
if (_layerRoot) then {
	_item427 = _item129 createUnit ["CUP_O_RU_Soldier_LAT",[13625.7,19985.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item427;
	_objects pushback _this;
	_objectIDs pushback 427;
	_this setPosWorld [13625.7,19985.3,28.0959];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Fyodor Mamayev";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male03rus";;
	_this setpitch 0.990492;;
};

private _item88 = objNull;
if (_layerRoot) then {
	_item88 = _item87 createUnit ["CUP_O_RU_Soldier_SL",[12856.7,19411.4,0],[],0,"CAN_COLLIDE"];
	_item87 selectLeader _item88;
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [12856.7,19411.5,29.6654];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Vladimir Putin";;
	_this setface "LivonianHead_4";;
	_this setspeaker "Male03RUS";;
	_this setpitch 0.98;;
};

private _item1186 = objNull;
if (_layerRoot) then {
	_item1186 = _item87 createUnit ["CUP_O_RU_Soldier_MG",[12858.2,19402.4,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1186;
	_objects pushback _this;
	_objectIDs pushback 1186;
	_this setPosWorld [12858.2,19402.4,29.7006];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Fedor Rogozhkin";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male02rus";;
	_this setpitch 0.97714;;
};

private _item1187 = objNull;
if (_layerRoot) then {
	_item1187 = _item87 createUnit ["CUP_O_RU_Soldier_AT",[12860.2,19402.4,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1187;
	_objects pushback _this;
	_objectIDs pushback 1187;
	_this setPosWorld [12860.2,19402.4,29.6553];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Daniil Morotov";;
	_this setface "LivonianHead_8";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00182;;
};

private _item1188 = objNull;
if (_layerRoot) then {
	_item1188 = _item87 createUnit ["CUP_O_RU_Soldier_LAT",[12862.2,19402.4,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1188;
	_objects pushback _this;
	_objectIDs pushback 1188;
	_this setPosWorld [12862.2,19402.4,29.6099];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Morotov";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00876;;
};

private _item1189 = objNull;
if (_layerRoot) then {
	_item1189 = _item87 createUnit ["CUP_O_RU_Soldier_GL",[12864.2,19402.4,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1189;
	_objects pushback _this;
	_objectIDs pushback 1189;
	_this setPosWorld [12864.2,19402.4,29.8479];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vladimir Zubov";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male03rus";;
	_this setpitch 0.9749;;
};

private _item1190 = objNull;
if (_layerRoot) then {
	_item1190 = _item87 createUnit ["CUP_O_RU_Soldier_Marksman",[12866.2,19402.4,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1190;
	_objects pushback _this;
	_objectIDs pushback 1190;
	_this setPosWorld [12866.2,19402.4,30.1411];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Zhegalov";;
	_this setface "WhiteHead_19";;
	_this setspeaker "male01rus";;
	_this setpitch 0.995073;;
};

private _item1191 = objNull;
if (_layerRoot) then {
	_item1191 = _item87 createUnit ["CUP_O_RU_Soldier_MG",[12868.2,19402.4,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1191;
	_objects pushback _this;
	_objectIDs pushback 1191;
	_this setPosWorld [12868.2,19402.4,30.4345];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Andrey Beregovoi";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male02rus";;
	_this setpitch 1.04166;;
};

private _item1192 = objNull;
if (_layerRoot) then {
	_item1192 = _item87 createUnit ["CUP_O_RU_Soldier_AT",[12870.2,19402.4,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1192;
	_objects pushback _this;
	_objectIDs pushback 1192;
	_this setPosWorld [12870.2,19402.4,30.7017];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Aleksander Glebov";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00708;;
};

private _item1193 = objNull;
if (_layerRoot) then {
	_item1193 = _item87 createUnit ["CUP_O_RU_Soldier_AR",[12872.2,19402.4,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1193;
	_objects pushback _this;
	_objectIDs pushback 1193;
	_this setPosWorld [12872.2,19402.4,30.7818];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Grigoriy Maksimov";;
	_this setface "RussianHead_5";;
	_this setspeaker "male03rus";;
	_this setpitch 0.964496;;
};

private _item1194 = objNull;
if (_layerRoot) then {
	_item1194 = _item87 createUnit ["CUP_O_RU_Soldier_LAT",[12874.2,19402.4,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1194;
	_objects pushback _this;
	_objectIDs pushback 1194;
	_this setPosWorld [12874.2,19402.4,30.8617];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Pyotr Naryshkin";;
	_this setface "LivonianHead_1";;
	_this setspeaker "male02rus";;
	_this setpitch 0.994444;;
};

private _item1195 = objNull;
if (_layerRoot) then {
	_item1195 = _item87 createUnit ["CUP_O_RU_Soldier_GL",[12876.2,19402.4,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1195;
	_objects pushback _this;
	_objectIDs pushback 1195;
	_this setPosWorld [12876.2,19402.4,30.9418];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Lev Potapenko";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male03rus";;
	_this setpitch 0.953156;;
};

private _item1196 = objNull;
if (_layerRoot) then {
	_item1196 = _item87 createUnit ["CUP_O_RU_Soldier",[12878.2,19402.4,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1196;
	_objects pushback _this;
	_objectIDs pushback 1196;
	_this setPosWorld [12878.2,19402.4,31.0085];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Ilya Yeltsin";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01094;;
};

private _item1197 = objNull;
if (_layerRoot) then {
	_item1197 = _item87 createUnit ["CUP_O_RU_Soldier_MG",[12858.8,19397.6,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1197;
	_objects pushback _this;
	_objectIDs pushback 1197;
	_this setPosWorld [12858.8,19397.6,29.9006];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Kiril Strugackiy";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male03rus";;
	_this setpitch 0.990733;;
};

private _item1198 = objNull;
if (_layerRoot) then {
	_item1198 = _item87 createUnit ["CUP_O_RU_Soldier_AT",[12860.8,19397.6,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1198;
	_objects pushback _this;
	_objectIDs pushback 1198;
	_this setPosWorld [12860.8,19397.6,29.7118];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Pavel Zverev";;
	_this setface "WhiteHead_11";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02475;;
};

private _item1199 = objNull;
if (_layerRoot) then {
	_item1199 = _item87 createUnit ["CUP_O_RU_Soldier_LAT",[12862.8,19397.6,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1199;
	_objects pushback _this;
	_objectIDs pushback 1199;
	_this setPosWorld [12862.8,19397.6,29.7026];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Nikita Zhitkov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01478;;
};

private _item1200 = objNull;
if (_layerRoot) then {
	_item1200 = _item87 createUnit ["CUP_O_RU_Soldier_GL",[12864.8,19397.6,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1200;
	_objects pushback _this;
	_objectIDs pushback 1200;
	_this setPosWorld [12864.8,19397.6,29.8892];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Kiril Krasko";;
	_this setface "LivonianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 0.997359;;
};

private _item1201 = objNull;
if (_layerRoot) then {
	_item1201 = _item87 createUnit ["CUP_O_RU_Soldier_Marksman",[12866.8,19397.6,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1201;
	_objects pushback _this;
	_objectIDs pushback 1201;
	_this setPosWorld [12866.8,19397.6,30.0759];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vyacheslav Privalov";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male02rus";;
	_this setpitch 0.979102;;
};

private _item1202 = objNull;
if (_layerRoot) then {
	_item1202 = _item87 createUnit ["CUP_O_RU_Soldier_MG",[12868.8,19397.6,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1202;
	_objects pushback _this;
	_objectIDs pushback 1202;
	_this setPosWorld [12868.8,19397.6,30.3374];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vitaly Timoshenko";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04429;;
};

private _item1203 = objNull;
if (_layerRoot) then {
	_item1203 = _item87 createUnit ["CUP_O_RU_Soldier_AT",[12870.8,19397.6,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1203;
	_objects pushback _this;
	_objectIDs pushback 1203;
	_this setPosWorld [12870.8,19397.6,30.5236];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Egor Dobryakov";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male01rus";;
	_this setpitch 0.964176;;
};

private _item1204 = objNull;
if (_layerRoot) then {
	_item1204 = _item87 createUnit ["CUP_O_RU_Soldier_AR",[12872.8,19397.6,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1204;
	_objects pushback _this;
	_objectIDs pushback 1204;
	_this setPosWorld [12872.8,19397.6,30.553];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Arkadiy Morozov";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male03rus";;
	_this setpitch 0.965552;;
};

private _item1205 = objNull;
if (_layerRoot) then {
	_item1205 = _item87 createUnit ["CUP_O_RU_Soldier_LAT",[12874.8,19397.6,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1205;
	_objects pushback _this;
	_objectIDs pushback 1205;
	_this setPosWorld [12874.8,19397.6,30.5823];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Kuzma Glebov";;
	_this setface "RussianHead_3";;
	_this setspeaker "male01rus";;
	_this setpitch 1.00509;;
};

private _item1206 = objNull;
if (_layerRoot) then {
	_item1206 = _item87 createUnit ["CUP_O_RU_Soldier_GL",[12876.8,19397.6,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1206;
	_objects pushback _this;
	_objectIDs pushback 1206;
	_this setPosWorld [12876.8,19397.6,30.6598];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Roman Davidov";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male01rus";;
	_this setpitch 1.02862;;
};

private _item1207 = objNull;
if (_layerRoot) then {
	_item1207 = _item87 createUnit ["CUP_O_RU_Soldier",[12878.8,19397.6,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1207;
	_objects pushback _this;
	_objectIDs pushback 1207;
	_this setPosWorld [12878.8,19397.6,30.7241];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Arkadiy Kamenev";;
	_this setface "LivonianHead_3";;
	_this setspeaker "male01rus";;
	_this setpitch 0.979188;;
};

private _item1208 = objNull;
if (_layerRoot) then {
	_item1208 = _item87 createUnit ["CUP_O_RU_Soldier_MG",[12858.7,19391.7,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1208;
	_objects pushback _this;
	_objectIDs pushback 1208;
	_this setPosWorld [12858.7,19391.7,30.7873];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Oleg Timoshenko";;
	_this setface "RussianHead_1";;
	_this setspeaker "male02rus";;
	_this setpitch 0.96662;;
};

private _item1209 = objNull;
if (_layerRoot) then {
	_item1209 = _item87 createUnit ["CUP_O_RU_Soldier_AT",[12860.7,19391.7,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1209;
	_objects pushback _this;
	_objectIDs pushback 1209;
	_this setPosWorld [12860.7,19391.7,30.4806];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Vitaly Turchinsky";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male03rus";;
	_this setpitch 0.953183;;
};

private _item1210 = objNull;
if (_layerRoot) then {
	_item1210 = _item87 createUnit ["CUP_O_RU_Soldier_LAT",[12862.7,19391.7,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1210;
	_objects pushback _this;
	_objectIDs pushback 1210;
	_this setPosWorld [12862.7,19391.7,30.1973];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Fyodor Lermontov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male01rus";;
	_this setpitch 0.969071;;
};

private _item1211 = objNull;
if (_layerRoot) then {
	_item1211 = _item87 createUnit ["CUP_O_RU_Soldier_GL",[12864.7,19391.7,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1211;
	_objects pushback _this;
	_objectIDs pushback 1211;
	_this setPosWorld [12864.7,19391.7,30.1253];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Yuri Privalov";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male01rus";;
	_this setpitch 0.964042;;
};

private _item1212 = objNull;
if (_layerRoot) then {
	_item1212 = _item87 createUnit ["CUP_O_RU_Soldier_Marksman",[12866.7,19391.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1212;
	_objects pushback _this;
	_objectIDs pushback 1212;
	_this setPosWorld [12866.7,19391.7,30.1655];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Viktor Blagonravov";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male03RUS";;
	_this setpitch 0.96;;
};

private _item1213 = objNull;
if (_layerRoot) then {
	_item1213 = _item87 createUnit ["CUP_O_RU_Soldier_MG",[12868.7,19391.7,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1213;
	_objects pushback _this;
	_objectIDs pushback 1213;
	_this setPosWorld [12868.7,19391.7,30.3523];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Stepan Tolstoy";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03349;;
};

private _item1214 = objNull;
if (_layerRoot) then {
	_item1214 = _item87 createUnit ["CUP_O_RU_Soldier_AT",[12870.7,19391.7,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1214;
	_objects pushback _this;
	_objectIDs pushback 1214;
	_this setPosWorld [12870.7,19391.7,30.469];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Popov";;
	_this setface "LivonianHead_3";;
	_this setspeaker "male01rus";;
	_this setpitch 0.998704;;
};

private _item1215 = objNull;
if (_layerRoot) then {
	_item1215 = _item87 createUnit ["CUP_O_RU_Soldier_AR",[12872.7,19391.7,9.72748e-005],[],0,"CAN_COLLIDE"];
	_this = _item1215;
	_objects pushback _this;
	_objectIDs pushback 1215;
	_this setPosWorld [12872.7,19391.7,30.4557];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Konstantin Zhitkov";;
	_this setface "LivonianHead_10";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04774;;
};

private _item1216 = objNull;
if (_layerRoot) then {
	_item1216 = _item87 createUnit ["CUP_O_RU_Soldier_LAT",[12874.7,19391.7,0.000101089],[],0,"CAN_COLLIDE"];
	_this = _item1216;
	_objects pushback _this;
	_objectIDs pushback 1216;
	_this setPosWorld [12874.7,19391.7,30.4716];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Roman Zykov";;
	_this setface "RussianHead_2";;
	_this setspeaker "male03rus";;
	_this setpitch 1.0059;;
};

private _item1217 = objNull;
if (_layerRoot) then {
	_item1217 = _item87 createUnit ["CUP_O_RU_Soldier_GL",[12876.7,19391.7,9.34601e-005],[],0,"CAN_COLLIDE"];
	_this = _item1217;
	_objects pushback _this;
	_objectIDs pushback 1217;
	_this setPosWorld [12876.7,19391.7,30.5009];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vyacheslav Vasilyev";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male02rus";;
	_this setpitch 0.951047;;
};

private _item1218 = objNull;
if (_layerRoot) then {
	_item1218 = _item87 createUnit ["CUP_O_RU_Soldier",[12878.7,19391.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1218;
	_objects pushback _this;
	_objectIDs pushback 1218;
	_this setPosWorld [12878.7,19391.7,30.4934];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Valery Yeltsin";;
	_this setface "LivonianHead_2";;
	_this setspeaker "Male03RUS";;
	_this setpitch 1.04;;
};

private _item819 = objNull;
if (_layerRoot) then {
	_item819 = _item841 createUnit ["CUP_B_USMC_Officer",[14683.3,16692.9,0.00200081],[],0,"CAN_COLLIDE"];
	_item841 selectLeader _item819;
	_this = _item819;
	_objects pushback _this;
	_objectIDs pushback 819;
	_this setPosWorld [14683.3,16693,17.9134];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	papa_bear = _this;
	_this setVehicleVarName "papa_bear";
	_this setSkill 1;
	_this setRank "COLONEL";
	_this setname "Jack O'Connor";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1;;
};

private _item818 = objNull;
if (_layerRoot) then {
	_item818 = _item841 createUnit ["CUP_B_USMC_Soldier",[14689.3,16688.9,0],[],0,"CAN_COLLIDE"];
	_this = _item818;
	_objects pushback _this;
	_objectIDs pushback 818;
	_this setPosWorld [14689.3,16689,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Cameron Murphy";;
	_this setface "WhiteHead_09";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.04;;
};

private _item843 = objNull;
if (_layerRoot) then {
	_item843 = _item841 createUnit ["CUP_B_USMC_Medic",[14684.3,16687.7,0],[],0,"CAN_COLLIDE"];
	_this = _item843;
	_objects pushback _this;
	_objectIDs pushback 843;
	_this setPosWorld [14684.3,16687.7,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Cameron Jones";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.04;;
};

private _item874 = objNull;
if (_layerRoot) then {
	_item874 = _item841 createUnit ["CUP_B_USMC_Soldier_MG",[14687.6,16695.2,0],[],0,"CAN_COLLIDE"];
	_this = _item874;
	_objects pushback _this;
	_objectIDs pushback 874;
	_this setPosWorld [14687.6,16695.2,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Jack Conrad";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.96;;
};

private _item1308 = objNull;
if (_layerRoot) then {
	_item1308 = _item841 createUnit ["CUP_B_USMC_Soldier",[14681.1,16685.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1308;
	_objects pushback _this;
	_objectIDs pushback 1308;
	_this setPosWorld [14681.1,16685.5,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setname "Joshua Roberts";;
	_this setface "AfricanHead_03";;
	_this setspeaker "male05eng";;
	_this setpitch 1.03406;;
};

private _item1314 = objNull;
if (_layerRoot) then {
	_item1314 = _item841 createUnit ["CUP_B_US_Soldier",[14658.2,16697.3,0.00111198],[],0,"CAN_COLLIDE"];
	_this = _item1314;
	_objects pushback _this;
	_objectIDs pushback 1314;
	_this setPosWorld [14658.2,16697.3,18.8344];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Oscar Thomson";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.96;;
};

private _item1355 = objNull;
if (_layerRoot) then {
	_item1355 = _item841 createUnit ["CUP_B_US_Soldier",[14664.3,16703.8,0.00134659],[],0,"CAN_COLLIDE"];
	_this = _item1355;
	_objects pushback _this;
	_objectIDs pushback 1355;
	_this setPosWorld [14664.3,16703.8,18.8346];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Henry Scott";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.01;;
};

private _item1358 = objNull;
if (_layerRoot) then {
	_item1358 = _item841 createUnit ["CUP_B_US_Soldier",[14676.1,16717,0.00200081],[],0,"CAN_COLLIDE"];
	_this = _item1358;
	_objects pushback _this;
	_objectIDs pushback 1358;
	_this setPosWorld [14676.1,16717,18.8353];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Callum Thompson";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male10ENG";;
	_this setpitch 1.01;;
};

private _item1361 = objNull;
if (_layerRoot) then {
	_item1361 = _item841 createUnit ["CUP_B_US_Soldier",[14670.2,16709.9,0.00123596],[],0,"CAN_COLLIDE"];
	_this = _item1361;
	_objects pushback _this;
	_objectIDs pushback 1361;
	_this setPosWorld [14670.2,16709.9,18.8345];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Ryan Davis";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.97;;
};

private _item1367 = objNull;
if (_layerRoot) then {
	_item1367 = _item841 createUnit ["CUP_B_US_Soldier",[14666.7,16694.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1367;
	_objects pushback _this;
	_objectIDs pushback 1367;
	_this setPosWorld [14666.7,16694.6,18.8333];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Cameron MacDonald";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1;;
};

private _item1370 = objNull;
if (_layerRoot) then {
	_item1370 = _item841 createUnit ["CUP_B_US_Soldier",[14678.5,16707.9,0.00200081],[],0,"CAN_COLLIDE"];
	_this = _item1370;
	_objects pushback _this;
	_objectIDs pushback 1370;
	_this setPosWorld [14678.5,16707.9,18.8353];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Thomas Campbell";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.02;;
};

private _item1373 = objNull;
if (_layerRoot) then {
	_item1373 = _item841 createUnit ["CUP_B_US_Soldier",[14672.7,16700.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1373;
	_objects pushback _this;
	_objectIDs pushback 1373;
	_this setPosWorld [14672.7,16700.7,18.8333];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Conor Wilson";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1.05;;
};

private _item1364 = objNull;
if (_layerRoot) then {
	_item1364 = _item841 createUnit ["CUP_B_US_Soldier",[14660.7,16688.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1364;
	_objects pushback _this;
	_objectIDs pushback 1364;
	_this setPosWorld [14660.7,16688.1,18.8333];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Tavish Brown";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1;;
};

private _item1484 = objNull;
if (_layerRoot) then {
	_item1484 = _item841 createUnit ["CUP_B_US_Soldier",[14652.4,16691.2,0.0017395],[],0,"CAN_COLLIDE"];
	_this = _item1484;
	_objects pushback _this;
	_objectIDs pushback 1484;
	_this setPosWorld [14652.4,16691.2,18.835];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Joseph Roberts";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.96;;
};

private _item1584 = objNull;
if (_layerRoot) then {
	_item1584 = _item841 createUnit ["CUP_B_US_Soldier",[14684,16713.6,0.00200081],[],0,"CAN_COLLIDE"];
	_this = _item1584;
	_objects pushback _this;
	_objectIDs pushback 1584;
	_this setPosWorld [14684,16713.6,18.8353];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Daniel Kelly";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.02;;
};

private _item1655 = objNull;
if (_layerRoot) then {
	_item1655 = _item841 createUnit ["CUP_B_USMC_Soldier_SL",[14679.9,16691.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1655;
	_objects pushback _this;
	_objectIDs pushback 1655;
	_this setPosWorld [14679.9,16691.5,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Sean Young";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.96;;
};

private _item746 = objNull;
if (_layerRoot) then {
	_item746 = _item841 createUnit ["CUP_B_USMC_Soldier_Marksman",[14769,16823.9,0],[],0,"CAN_COLLIDE"];
	_this = _item746;
	_objects pushback _this;
	_objectIDs pushback 746;
	_this setPosWorld [14769,16823.9,17.9114];
	_this setVectorDirAndUp [[0.171344,-0.985211,0],[0,0,1]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",1],["SmokeShell",1,1],["7Rnd_408_Mag",2,7]]],["CUP_V_B_Eagle_SPC_DMR",[["CUP_HandGrenade_M67",2,1],["SmokeShellRed",1,1],["7Rnd_408_Mag",6,7],["CUP_7Rnd_45ACP_1911",2,7]]],["B_AssaultPack_rgr",[["7Rnd_408_Mag",10,7],["CUP_7Rnd_45ACP_1911",3,7]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Jack Bayh";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item968 = objNull;
if (_layerRoot) then {
	_item968 = createVehicle ["CUP_BOX_USMC_Ammo_F",[13768.4,18940.2,-3.8147e-005],[],0,"CAN_COLLIDE"];
	_this = _item968;
	_objects pushback _this;
	_objectIDs pushback 968;
	_this setPosWorld [13768.4,18940.2,20.5558];
	_this setVectorDirAndUp [[0.740187,-0.672386,0.00458333],[-0.0146643,-0.00932753,0.999849]];
	[_this,"[[[[],[]],[[""CUP_30Rnd_556x45_Stanag"",""CUP_30Rnd_556x45_PMAG_QP"",""CUP_30Rnd_9x19_MP5"",""CUP_15Rnd_9x19_M9"",""CUP_12Rnd_45ACP_mk23"",""CUP_1Rnd_HEDP_M203"",""CUP_7Rnd_45ACP_1911""],[25,25,25,25,25,25,25]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item969 = objNull;
if (_layerRoot) then {
	_item969 = createVehicle ["CUP_BOX_USMC_Ammo_F",[13767.3,18938.7,-0.000183105],[],0,"CAN_COLLIDE"];
	_this = _item969;
	_objects pushback _this;
	_objectIDs pushback 969;
	_this setPosWorld [13767.3,18938.7,20.5514];
	_this setVectorDirAndUp [[0.740262,-0.672309,0.00341601],[0.00265199,0.00800087,0.999964]];
	[_this,"[[[[],[]],[[""CUP_30Rnd_556x45_Stanag"",""CUP_30Rnd_556x45_PMAG_QP"",""CUP_30Rnd_9x19_MP5"",""CUP_15Rnd_9x19_M9"",""CUP_12Rnd_45ACP_mk23"",""CUP_1Rnd_HEDP_M203"",""CUP_7Rnd_45ACP_1911""],[25,25,25,25,25,25,25]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item971 = objNull;
if (_layerRoot) then {
	_item971 = createVehicle ["CUP_BOX_USMC_WpsSpecial_F",[13768.7,18937.8,0],[],0,"CAN_COLLIDE"];
	_this = _item971;
	_objects pushback _this;
	_objectIDs pushback 971;
	_this setPosWorld [13768.7,18937.8,21.7119];
	_this setVectorDirAndUp [[0.740262,-0.672309,0.00341035],[0.00265294,0.0079935,0.999965]];
	[_this,"[[[[""CUP_srifle_M107_Base"",""CUP_srifle_M110_black"",""CUP_srifle_Mk18_blk"",""CUP_srifle_M14_DMR"",""CUP_srifle_M40A3"",""CUP_lmg_M240"",""CUP_lmg_m249_pip1"",""CUP_lmg_m249_pip4"",""CUP_lmg_Mk48_des"",""CUP_lmg_Mk48"",""CUP_arifle_mk18_m203_black"",""CUP_hgun_M9"",""CUP_sgun_M1014""],[1,1,1,1,1,1,1,1,1,1,1,4,4]],[[""CUP_10Rnd_127x99_M107"",""CUP_20Rnd_762x51_B_M110"",""CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"",""CUP_200Rnd_TE4_Red_Tracer_556x45_M249"",""CUP_100Rnd_TE4_Green_Tracer_556x45_M249"",""CUP_1Rnd_HEDP_M203"",""CUP_1Rnd_SmokeGreen_M203"",""CUP_1Rnd_SmokeRed_M203"",""CUP_20Rnd_762x51_DMR"",""CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR"",""CUP_30Rnd_556x45_Stanag"",""CUP_15Rnd_9x19_M9"",""CUP_5Rnd_762x51_M24"",""CUP_8Rnd_12Gauge_Pellets_No00_Buck"",""CUP_8Rnd_12Gauge_Slug""],[10,10,5,5,5,10,10,10,10,10,25,10,10,10,10]],[[""CUP_optic_ACOG"",""CUP_optic_ACOG2"",""CUP_optic_CompM2_low"",""CUP_optic_CompM2_low_coyote"",""CUP_optic_CompM2_low_OD"",""CUP_optic_Elcan_SpecterDR_RMR_black"",""CUP_optic_HoloBlack"",""CUP_optic_HoloWdl"",""CUP_optic_LeupoldMk4"",""CUP_optic_LeupoldMk4_25x50_LRT"",""CUP_optic_SB_11_4x20_PM"",""CUP_muzzle_snds_M110_black"",""CUP_muzzle_snds_M16"",""CUP_muzzle_snds_M9"",""CUP_muzzle_snds_mk23"",""CUP_acc_ANPEQ_15_Black"",""CUP_acc_ANPEQ_15_Black_Top"",""CUP_acc_ANPEQ_15_Top_Flashlight_Black_L"",""CUP_acc_ANPEQ_2_camo"",""CUP_acc_ANPEQ_2_desert"",""CUP_acc_Flashlight"",""CUP_acc_Flashlight_wdl"",""CUP_acc_mk23_lam_l"",""CUP_bipod_Harris_1A2_L"",""CUP_bipod_Harris_1A2_L_BLK"",""CUP_bipod_VLTOR_Modpod_black""],[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item974 = objNull;
if (_layerRoot) then {
	_item974 = createVehicle ["CUP_BOX_USMC_Wps_F",[13769.5,18939.1,0],[],0,"CAN_COLLIDE"];
	_this = _item974;
	_objects pushback _this;
	_objectIDs pushback 974;
	_this setPosWorld [13769.4,18939.1,21.6314];
	_this setVectorDirAndUp [[0.740185,-0.672387,0.00457419],[-0.0146602,-0.00933659,0.999849]];
	[_this,"[[[[""CUP_arifle_M16A4_Base"",""CUP_arifle_M16A4_GL"",""CUP_arifle_M4A1"",""CUP_arifle_M4A1_black"",""CUP_arifle_M4A1_BUIS_camo_GL"",""CUP_arifle_M4A1_BUIS_GL"",""CUP_arifle_M4A1_camo"",""CUP_arifle_M4A1_SOMMOD_black"",""CUP_arifle_M4A1_standard_black"",""CUP_hgun_Colt1911"",""CUP_hgun_M9"",""CUP_hgun_Mk23"",""CUP_smg_MP5A5""],[4,4,4,4,4,4,4,4,4,4,4,4,4]],[[""CUP_30Rnd_556x45_Stanag"",""CUP_30Rnd_556x45_PMAG_QP"",""CUP_30Rnd_9x19_MP5"",""CUP_15Rnd_9x19_M9"",""CUP_12Rnd_45ACP_mk23"",""CUP_1Rnd_HEDP_M203"",""CUP_7Rnd_45ACP_1911""],[25,25,25,25,25,25,25]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item976 = objNull;
if (_layerRoot) then {
	_item976 = createVehicle ["CUP_BOX_US_ARMY_WpsSpecial_F",[13767.3,18936.3,-2.47955e-005],[],0,"CAN_COLLIDE"];
	_this = _item976;
	_objects pushback _this;
	_objectIDs pushback 976;
	_this setPosWorld [13767.3,18936.3,21.6757];
	_this setVectorDirAndUp [[0.740262,-0.671843,-0.0252548],[0.00265199,-0.0346455,0.999396]];
	[_this,"[[[[""CUP_srifle_M107_Base"",""CUP_srifle_M110"",""CUP_srifle_Mk18_blk"",""CUP_srifle_M14"",""CUP_lmg_M240_B"",""CUP_lmg_m249_pip1"",""CUP_lmg_m249_pip4"",""CUP_lmg_Mk48_des"",""CUP_arifle_Mk17_STD_FG"",""CUP_arifle_mk18_m203_black"",""CUP_arifle_Mk20"",""CUP_hgun_M9""],[1,1,1,1,1,1,1,1,1,1,1,4]],[[""20Rnd_762x51_Mag"",""CUP_10Rnd_127x99_M107"",""CUP_20Rnd_762x51_B_M110"",""CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"",""CUP_200Rnd_TE4_Red_Tracer_556x45_M249"",""CUP_100Rnd_TE4_Green_Tracer_556x45_M249"",""CUP_1Rnd_HEDP_M203"",""CUP_1Rnd_SmokeGreen_M203"",""CUP_1Rnd_SmokeRed_M203"",""CUP_20Rnd_762x51_B_SCAR"",""CUP_20Rnd_762x51_DMR"",""CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR"",""CUP_30Rnd_556x45_Stanag"",""CUP_15Rnd_9x19_M9""],[10,10,10,5,5,5,10,10,10,10,10,10,25,10]],[[""CUP_bipod_Harris_1A2_L_BLK"",""CUP_bipod_VLTOR_Modpod"",""CUP_optic_ACOG2"",""CUP_optic_AN_PAS_13c1"",""CUP_optic_AN_PVS_10"",""CUP_optic_CompM2_low"",""CUP_optic_ElcanM145"",""CUP_optic_LeupoldMk4"",""CUP_optic_MAAWS_Scope"",""CUP_acc_ANPEQ_15"",""CUP_acc_ANPEQ_15_Black"",""CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L"",""CUP_acc_ANPEQ_2_desert"",""CUP_muzzle_snds_M16"",""CUP_muzzle_snds_M9"",""CUP_muzzle_snds_SCAR_H""],[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item977 = objNull;
if (_layerRoot) then {
	_item977 = createVehicle ["Box_NATO_WpsSpecial_F",[13765.9,18937.3,1.14441e-005],[],0,"CAN_COLLIDE"];
	_this = _item977;
	_objects pushback _this;
	_objectIDs pushback 977;
	_this setPosWorld [13765.9,18937.3,20.5422];
	_this setVectorDirAndUp [[0.740262,-0.671843,-0.0252548],[0.00265199,-0.0346455,0.999396]];
	[_this,"[[[[""arifle_SDAR_F"",""arifle_MXM_F"",""srifle_LRR_F"",""srifle_DMR_03_F"",""srifle_DMR_02_F"",""MMG_02_black_F""],[1,1,1,1,1,1]],[[""30Rnd_65x39_caseless_mag"",""7Rnd_408_Mag"",""20Rnd_762x51_Mag"",""20Rnd_556x45_UW_mag"",""30Rnd_556x45_Stanag_red"",""10Rnd_338_Mag"",""130Rnd_338_Mag""],[6,8,6,3,3,8,3]],[[""optic_Aco"",""optic_Aco_smg"",""optic_Hamr"",""optic_SOS"",""optic_Holosight"",""optic_NVS"",""optic_tws"",""optic_tws_mg"",""optic_MRD"",""optic_DMS"",""optic_LRPS"",""optic_AMS"",""optic_AMS_khk"",""optic_AMS_snd""],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item978 = objNull;
if (_layerRoot) then {
	_item978 = createVehicle ["CUP_BOX_US_ARMY_Wps_F",[13764.3,18938.1,1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item978;
	_objects pushback _this;
	_objectIDs pushback 978;
	_this setPosWorld [13764.3,18938.1,21.6346];
	_this setVectorDirAndUp [[0.740262,-0.672309,0.00341601],[0.00265199,0.00800087,0.999964]];
	[_this,"[[[[""CUP_arifle_M4A1"",""CUP_arifle_M4A1_black"",""CUP_arifle_M4A1_BUIS_GL"",""CUP_arifle_M4A3_black"",""CUP_hgun_M9""],[4,4,4,4,4]],[[""CUP_30Rnd_556x45_Stanag"",""CUP_15Rnd_9x19_M9"",""CUP_1Rnd_HEDP_M203"",""CUP_1Rnd_SmokeRed_M203""],[25,25,25,25]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item979 = objNull;
if (_layerRoot) then {
	_item979 = createVehicle ["Box_NATO_WpsSpecial_F",[13766,18939.7,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item979;
	_objects pushback _this;
	_objectIDs pushback 979;
	_this setPosWorld [13766,18939.7,20.5296];
	_this setVectorDirAndUp [[0.740262,-0.672309,0.00341601],[0.00265199,0.00800087,0.999964]];
	[_this,"[[[[""arifle_SDAR_F"",""arifle_MXM_F"",""srifle_LRR_F"",""srifle_DMR_03_F"",""srifle_DMR_02_F"",""MMG_02_black_F""],[1,1,1,1,1,1]],[[""30Rnd_65x39_caseless_mag"",""7Rnd_408_Mag"",""20Rnd_762x51_Mag"",""20Rnd_556x45_UW_mag"",""30Rnd_556x45_Stanag_red"",""10Rnd_338_Mag"",""130Rnd_338_Mag""],[6,8,6,3,3,8,3]],[[""optic_Aco"",""optic_Aco_smg"",""optic_Hamr"",""optic_SOS"",""optic_Holosight"",""optic_NVS"",""optic_tws"",""optic_tws_mg"",""optic_MRD"",""optic_DMS"",""optic_LRPS"",""optic_AMS"",""optic_AMS_khk"",""optic_AMS_snd""],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item980 = objNull;
if (_layerRoot) then {
	_item980 = createVehicle ["CamoNet_BLUFOR_open_F",[13767.8,18937.5,2.09808e-005],[],0,"CAN_COLLIDE"];
	_this = _item980;
	_objects pushback _this;
	_objectIDs pushback 980;
	_this setPosWorld [13767.8,18937.5,21.5235];
	_this setVectorDirAndUp [[0.740262,-0.672309,0.00341601],[0.00265199,0.00800087,0.999964]];
};

private _item1068 = objNull;
if (_layerRoot) then {
	_item1068 = _item1067 createUnit ["CUP_B_USMC_Soldier_SL",[13800.7,18893.1,0],[],0,"CAN_COLLIDE"];
	_item1067 selectLeader _item1068;
	_this = _item1068;
	_objects pushback _this;
	_objectIDs pushback 1068;
	_this setPosWorld [13800.7,18893.2,20.087];
	_this setVectorDirAndUp [[-0.603528,0.797342,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_roll_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_SL",[["CUP_30Rnd_556x45_Stanag",8,30],["CUP_HandGrenade_M67",2,1],["SmokeShell",2,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_15Rnd_9x19_M9",3,15]]],["B_AssaultPack_cbr",[["CUP_30Rnd_556x45_Stanag",20,30]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	officer_bravo = _this;
	_this setVehicleVarName "officer_bravo";
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "James Evans";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item1121 = objNull;
if (_layerRoot) then {
	_item1121 = _item1067 createUnit ["CUP_B_USMC_Soldier_MG",[13805,18885.4,0.00018692],[],0,"CAN_COLLIDE"];
	_this = _item1121;
	_objects pushback _this;
	_objectIDs pushback 1121;
	_this setPosWorld [13805,18885.4,19.9462];
	_this setVectorDirAndUp [[-0.603407,0.79711,0.0226959],[0.0199947,-0.0133287,0.999711]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Cameron Baker";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item1124 = objNull;
if (_layerRoot) then {
	_item1124 = _item1067 createUnit ["CUP_B_USMC_Medic",[13797.6,18872,0],[],0,"CAN_COLLIDE"];
	_this = _item1124;
	_objects pushback _this;
	_objectIDs pushback 1124;
	_this setPosWorld [13797.6,18872,20.6476];
	_this setVectorDirAndUp [[-0.603485,0.797351,0.00616508],[0.0119906,0.00134381,0.999927]];
	_this setUnitLoadout [["CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",2],["CUP_30Rnd_556x45_Stanag",3,30]]],["CUP_V_B_Eagle_SPC_Corpsman",[["CUP_30Rnd_556x45_Stanag",13,30],["SmokeShell",1,1],["CUP_HandGrenade_M67",1,1]]],["CUP_B_USMC_AssaultPack_Medic",[["FirstAidKit",14],["Medikit",2]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "George Thomas";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item1125 = objNull;
if (_layerRoot) then {
	_item1125 = _item1067 createUnit ["CUP_B_USMC_Soldier_MG",[13808.5,18887.7,3.62396e-005],[],0,"CAN_COLLIDE"];
	_this = _item1125;
	_objects pushback _this;
	_objectIDs pushback 1125;
	_this setPosWorld [13808.5,18887.7,19.7813];
	_this setVectorDirAndUp [[-0.603292,0.797485,-0.00755518],[0.0279894,0.0306394,0.999139]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Oliver Walker";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item1127 = objNull;
if (_layerRoot) then {
	_item1127 = _item1067 createUnit ["CUP_B_USMC_Soldier_Marksman",[13820.8,18887.9,0.00018692],[],0,"CAN_COLLIDE"];
	_this = _item1127;
	_objects pushback _this;
	_objectIDs pushback 1127;
	_this setPosWorld [13820.8,18887.9,19.2558];
	_this setVectorDirAndUp [[-0.603519,0.796754,0.030777],[-0.0053265,-0.042627,0.999077]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",1],["SmokeShell",1,1],["CUP_HandGrenade_M67",2,1],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_B_Eagle_SPC_DMR",[["SmokeShellRed",1,1],["CUP_HandGrenade_M67",5,1],["CUP_7Rnd_45ACP_1911",4,7],["7Rnd_408_Mag",3,7]]],["B_AssaultPack_cbr",[["7Rnd_408_Mag",8,7],["CUP_7Rnd_45ACP_1911",1,7],["CUP_HandGrenade_M67",4,1]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Ewan Newton";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1128 = objNull;
if (_layerRoot) then {
	_item1128 = _item1067 createUnit ["CUP_B_USMC_Soldier_AR",[13816.9,18885.1,0.00018692],[],0,"CAN_COLLIDE"];
	_this = _item1128;
	_objects pushback _this;
	_objectIDs pushback 1128;
	_this setPosWorld [13816.9,18885.1,19.5388];
	_this setVectorDirAndUp [[-0.581342,0.813545,0.0136793],[0.0718145,0.0345561,0.996819]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Harry O'Connor";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1129 = objNull;
if (_layerRoot) then {
	_item1129 = _item1067 createUnit ["CUP_B_USMC_Soldier",[13793.6,18876.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1129;
	_objects pushback _this;
	_objectIDs pushback 1129;
	_this setPosWorld [13793.6,18876.9,20.6725];
	_this setVectorDirAndUp [[-0.582317,0.812961,-0.00115685],[0.042629,0.0319558,0.99858]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Thomas Leahy";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1130 = objNull;
if (_layerRoot) then {
	_item1130 = _item1067 createUnit ["CUP_B_USMC_Sniper_M107",[13812.2,18889.8,0.00018692],[],0,"CAN_COLLIDE"];
	_this = _item1130;
	_objects pushback _this;
	_objectIDs pushback 1130;
	_this setPosWorld [13812.2,18889.8,19.6079];
	_this setVectorDirAndUp [[-0.603219,0.797532,-0.00833331],[0.031983,0.0346278,0.998888]];
	_this setUnitLoadout [["CUP_srifle_M107_Base","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107",10],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_Ghillie_WDL",[["FirstAidKit",1],["CUP_10Rnd_127x99_M107",3,10],["CUP_HandGrenade_M67",1,1],["CUP_7Rnd_45ACP_1911",2,7]]],["V_BandollierB_oli",[["CUP_10Rnd_127x99_M107",4,10],["SmokeShell",1,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_7Rnd_45ACP_1911",1,7]]],["B_AssaultPack_dgtl",[["CUP_10Rnd_127x99_M107",10,10],["CUP_7Rnd_45ACP_1911",1,7]]],"","CUP_G_Shades_Black",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Lee Stewart";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1131 = objNull;
if (_layerRoot) then {
	_item1131 = _item1067 createUnit ["CUP_B_USMC_Soldier",[13809.8,18880.5,0.00018692],[],0,"CAN_COLLIDE"];
	_this = _item1131;
	_objects pushback _this;
	_objectIDs pushback 1131;
	_this setPosWorld [13809.8,18880.6,19.8682];
	_this setVectorDirAndUp [[-0.582523,0.812757,0.00966519],[0.033315,0.0119933,0.999373]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "William Williams";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1122 = objNull;
if (_layerRoot) then {
	_item1122 = _item1067 createUnit ["CUP_B_USMC_Soldier_GL",[13806.4,18878.3,0.00018692],[],0,"CAN_COLLIDE"];
	_this = _item1122;
	_objects pushback _this;
	_objectIDs pushback 1122;
	_this setPosWorld [13806.4,18878.4,20.0058];
	_this setVectorDirAndUp [[-0.602672,0.797979,-0.00399975],[0.0532574,0.0452226,0.997556]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Jammie Johnson";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1126 = objNull;
if (_layerRoot) then {
	_item1126 = _item1067 createUnit ["CUP_B_USMC_Soldier_Marksman",[13801.5,18882.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1126;
	_objects pushback _this;
	_objectIDs pushback 1126;
	_this setPosWorld [13801.5,18882.9,20.0603];
	_this setVectorDirAndUp [[-0.602672,0.797979,-0.00400344],[0.0532597,0.045229,0.997556]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",1],["SmokeShell",1,1],["7Rnd_408_Mag",2,7]]],["CUP_V_B_Eagle_SPC_DMR",[["CUP_HandGrenade_M67",2,1],["SmokeShellRed",1,1],["7Rnd_408_Mag",6,7],["CUP_7Rnd_45ACP_1911",2,7]]],["B_AssaultPack_rgr",[["7Rnd_408_Mag",10,7],["CUP_7Rnd_45ACP_1911",3,7]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "William Roberts";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1123 = objNull;
if (_layerRoot) then {
	_item1123 = _item1067 createUnit ["CUP_B_USMC_Soldier_GL",[13802.4,18875.7,0.00018692],[],0,"CAN_COLLIDE"];
	_this = _item1123;
	_objects pushback _this;
	_objectIDs pushback 1123;
	_this setPosWorld [13802.4,18875.8,20.3107];
	_this setVectorDirAndUp [[-0.602672,0.797962,0.00662449],[0.0532574,0.0319376,0.99807]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ethan Young";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1353 = objNull;
if (_layerRoot) then {
	_item1353 = _item1067 createUnit ["CUP_B_USMC_Soldier_FROG_WDL",[13797.6,18879.8,4.00543e-005],[],0,"CAN_COLLIDE"];
	_this = _item1353;
	_objects pushback _this;
	_objectIDs pushback 1353;
	_this setPosWorld [13797.6,18879.8,20.4035];
	_this setVectorDirAndUp [[-0.736678,0.676196,0.00800898],[0.0426276,0.0346141,0.998491]];
	_this setSkill 1;
	_this setname "Lucas Walker";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.01;;
};

private _item1133 = objNull;
if (_layerRoot) then {
	_item1133 = createVehicle ["CUP_BOX_USMC_Ammo_F",[13826.5,18977.5,-4.76837e-005],[],0,"CAN_COLLIDE"];
	_this = _item1133;
	_objects pushback _this;
	_objectIDs pushback 1133;
	_this setPosWorld [13826.5,18977.5,20.3561];
	_this setVectorDirAndUp [[0.662974,-0.748266,-0.0237513],[-0.0213272,-0.0505901,0.998492]];
	[_this,"[[[[],[]],[[""CUP_30Rnd_556x45_Stanag"",""CUP_30Rnd_556x45_PMAG_QP"",""CUP_30Rnd_9x19_MP5"",""CUP_15Rnd_9x19_M9"",""CUP_12Rnd_45ACP_mk23"",""CUP_1Rnd_HEDP_M203"",""CUP_7Rnd_45ACP_1911""],[25,25,25,25,25,25,25]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1135 = objNull;
if (_layerRoot) then {
	_item1135 = createVehicle ["CUP_BOX_USMC_WpsSpecial_F",[13826.5,18975.1,-0.000766754],[],0,"CAN_COLLIDE"];
	_this = _item1135;
	_objects pushback _this;
	_objectIDs pushback 1135;
	_this setPosWorld [13826.5,18975,21.3882];
	_this setVectorDirAndUp [[0.662972,-0.748267,-0.0237514],[-0.0213272,-0.0505901,0.998492]];
	[_this,"[[[[""CUP_srifle_M107_Base"",""CUP_srifle_M110_black"",""CUP_srifle_Mk18_blk"",""CUP_srifle_M14_DMR"",""CUP_srifle_M40A3"",""CUP_lmg_M240"",""CUP_lmg_m249_pip1"",""CUP_lmg_m249_pip4"",""CUP_lmg_Mk48_des"",""CUP_lmg_Mk48"",""CUP_arifle_mk18_m203_black"",""CUP_hgun_M9"",""CUP_sgun_M1014""],[1,1,1,1,1,1,1,1,1,1,1,4,4]],[[""CUP_10Rnd_127x99_M107"",""CUP_20Rnd_762x51_B_M110"",""CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"",""CUP_200Rnd_TE4_Red_Tracer_556x45_M249"",""CUP_100Rnd_TE4_Green_Tracer_556x45_M249"",""CUP_1Rnd_HEDP_M203"",""CUP_1Rnd_SmokeGreen_M203"",""CUP_1Rnd_SmokeRed_M203"",""CUP_20Rnd_762x51_DMR"",""CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR"",""CUP_30Rnd_556x45_Stanag"",""CUP_15Rnd_9x19_M9"",""CUP_5Rnd_762x51_M24"",""CUP_8Rnd_12Gauge_Pellets_No00_Buck"",""CUP_8Rnd_12Gauge_Slug""],[10,10,5,5,5,10,10,10,10,10,25,10,10,10,10]],[[""CUP_optic_ACOG"",""CUP_optic_ACOG2"",""CUP_optic_CompM2_low"",""CUP_optic_CompM2_low_coyote"",""CUP_optic_CompM2_low_OD"",""CUP_optic_Elcan_SpecterDR_RMR_black"",""CUP_optic_HoloBlack"",""CUP_optic_HoloWdl"",""CUP_optic_LeupoldMk4"",""CUP_optic_LeupoldMk4_25x50_LRT"",""CUP_optic_SB_11_4x20_PM"",""CUP_muzzle_snds_M110_black"",""CUP_muzzle_snds_M16"",""CUP_muzzle_snds_M9"",""CUP_muzzle_snds_mk23"",""CUP_acc_ANPEQ_15_Black"",""CUP_acc_ANPEQ_15_Black_Top"",""CUP_acc_ANPEQ_15_Top_Flashlight_Black_L"",""CUP_acc_ANPEQ_2_camo"",""CUP_acc_ANPEQ_2_desert"",""CUP_acc_Flashlight"",""CUP_acc_Flashlight_wdl"",""CUP_acc_mk23_lam_l"",""CUP_bipod_Harris_1A2_L"",""CUP_bipod_Harris_1A2_L_BLK"",""CUP_bipod_VLTOR_Modpod_black""],[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1136 = objNull;
if (_layerRoot) then {
	_item1136 = createVehicle ["CUP_BOX_USMC_Wps_F",[13827.5,18976.4,-0.000770569],[],0,"CAN_COLLIDE"];
	_this = _item1136;
	_objects pushback _this;
	_objectIDs pushback 1136;
	_this setPosWorld [13827.4,18976.3,21.3858];
	_this setVectorDirAndUp [[0.662972,-0.748267,-0.0237514],[-0.0213272,-0.0505901,0.998492]];
	[_this,"[[[[""CUP_arifle_M16A4_Base"",""CUP_arifle_M16A4_GL"",""CUP_arifle_M4A1"",""CUP_arifle_M4A1_black"",""CUP_arifle_M4A1_BUIS_camo_GL"",""CUP_arifle_M4A1_BUIS_GL"",""CUP_arifle_M4A1_camo"",""CUP_arifle_M4A1_SOMMOD_black"",""CUP_arifle_M4A1_standard_black"",""CUP_hgun_Colt1911"",""CUP_hgun_M9"",""CUP_hgun_Mk23"",""CUP_smg_MP5A5""],[4,4,4,4,4,4,4,4,4,4,4,4,4]],[[""CUP_30Rnd_556x45_Stanag"",""CUP_30Rnd_556x45_PMAG_QP"",""CUP_30Rnd_9x19_MP5"",""CUP_15Rnd_9x19_M9"",""CUP_12Rnd_45ACP_mk23"",""CUP_1Rnd_HEDP_M203"",""CUP_7Rnd_45ACP_1911""],[25,25,25,25,25,25,25]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1137 = objNull;
if (_layerRoot) then {
	_item1137 = createVehicle ["CUP_BOX_US_ARMY_WpsSpecial_F",[13825,18973.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1137;
	_objects pushback _this;
	_objectIDs pushback 1137;
	_this setPosWorld [13825,18973.7,21.3315];
	_this setVectorDirAndUp [[0.662972,-0.748643,0.00116948],[-0.02133,-0.0173276,0.999622]];
	[_this,"[[[[""CUP_srifle_M107_Base"",""CUP_srifle_M110"",""CUP_srifle_Mk18_blk"",""CUP_srifle_M14"",""CUP_lmg_M240_B"",""CUP_lmg_m249_pip1"",""CUP_lmg_m249_pip4"",""CUP_lmg_Mk48_des"",""CUP_arifle_Mk17_STD_FG"",""CUP_arifle_mk18_m203_black"",""CUP_arifle_Mk20"",""CUP_hgun_M9""],[1,1,1,1,1,1,1,1,1,1,1,4]],[[""20Rnd_762x51_Mag"",""CUP_10Rnd_127x99_M107"",""CUP_20Rnd_762x51_B_M110"",""CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"",""CUP_200Rnd_TE4_Red_Tracer_556x45_M249"",""CUP_100Rnd_TE4_Green_Tracer_556x45_M249"",""CUP_1Rnd_HEDP_M203"",""CUP_1Rnd_SmokeGreen_M203"",""CUP_1Rnd_SmokeRed_M203"",""CUP_20Rnd_762x51_B_SCAR"",""CUP_20Rnd_762x51_DMR"",""CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR"",""CUP_30Rnd_556x45_Stanag"",""CUP_15Rnd_9x19_M9""],[10,10,10,5,5,5,10,10,10,10,10,10,25,10]],[[""CUP_bipod_Harris_1A2_L_BLK"",""CUP_bipod_VLTOR_Modpod"",""CUP_optic_ACOG2"",""CUP_optic_AN_PAS_13c1"",""CUP_optic_AN_PVS_10"",""CUP_optic_CompM2_low"",""CUP_optic_ElcanM145"",""CUP_optic_LeupoldMk4"",""CUP_optic_MAAWS_Scope"",""CUP_acc_ANPEQ_15"",""CUP_acc_ANPEQ_15_Black"",""CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L"",""CUP_acc_ANPEQ_2_desert"",""CUP_muzzle_snds_M16"",""CUP_muzzle_snds_M9"",""CUP_muzzle_snds_SCAR_H""],[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1138 = objNull;
if (_layerRoot) then {
	_item1138 = createVehicle ["Box_NATO_WpsSpecial_F",[13823.7,18974.9,2.47955e-005],[],0,"CAN_COLLIDE"];
	_this = _item1138;
	_objects pushback _this;
	_objectIDs pushback 1138;
	_this setPosWorld [13823.7,18974.9,20.1502];
	_this setVectorDirAndUp [[0.662972,-0.748643,0.00116948],[-0.02133,-0.0173276,0.999622]];
	[_this,"[[[[""arifle_SDAR_F"",""arifle_MXM_F"",""srifle_LRR_F"",""srifle_DMR_03_F"",""srifle_DMR_02_F"",""MMG_02_black_F""],[1,1,1,1,1,1]],[[""30Rnd_65x39_caseless_mag"",""7Rnd_408_Mag"",""20Rnd_762x51_Mag"",""20Rnd_556x45_UW_mag"",""30Rnd_556x45_Stanag_red"",""10Rnd_338_Mag"",""130Rnd_338_Mag""],[6,8,6,3,3,8,3]],[[""optic_Aco"",""optic_Aco_smg"",""optic_Hamr"",""optic_SOS"",""optic_Holosight"",""optic_NVS"",""optic_tws"",""optic_tws_mg"",""optic_MRD"",""optic_DMS"",""optic_LRPS"",""optic_AMS"",""optic_AMS_khk"",""optic_AMS_snd""],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1139 = objNull;
if (_layerRoot) then {
	_item1139 = createVehicle ["CUP_BOX_US_ARMY_Wps_F",[13822.3,18975.9,-0.000919342],[],0,"CAN_COLLIDE"];
	_this = _item1139;
	_objects pushback _this;
	_objectIDs pushback 1139;
	_this setPosWorld [13822.2,18975.8,21.2499];
	_this setVectorDirAndUp [[0.662863,-0.748491,-0.0193406],[-0.0279873,-0.0505818,0.998328]];
	[_this,"[[[[""CUP_arifle_M4A1"",""CUP_arifle_M4A1_black"",""CUP_arifle_M4A1_BUIS_GL"",""CUP_arifle_M4A3_black"",""CUP_hgun_M9""],[4,4,4,4,4]],[[""CUP_30Rnd_556x45_Stanag"",""CUP_15Rnd_9x19_M9"",""CUP_1Rnd_HEDP_M203"",""CUP_1Rnd_SmokeRed_M203""],[25,25,25,25]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1140 = objNull;
if (_layerRoot) then {
	_item1140 = createVehicle ["Box_NATO_WpsSpecial_F",[13824.1,18977.3,-3.8147e-005],[],0,"CAN_COLLIDE"];
	_this = _item1140;
	_objects pushback _this;
	_objectIDs pushback 1140;
	_this setPosWorld [13824.1,18977.3,20.2752];
	_this setVectorDirAndUp [[0.662972,-0.748267,-0.0237514],[-0.0213272,-0.0505901,0.998492]];
	[_this,"[[[[""arifle_SDAR_F"",""arifle_MXM_F"",""srifle_LRR_F"",""srifle_DMR_03_F"",""srifle_DMR_02_F"",""MMG_02_black_F""],[1,1,1,1,1,1]],[[""30Rnd_65x39_caseless_mag"",""7Rnd_408_Mag"",""20Rnd_762x51_Mag"",""20Rnd_556x45_UW_mag"",""30Rnd_556x45_Stanag_red"",""10Rnd_338_Mag"",""130Rnd_338_Mag""],[6,8,6,3,3,8,3]],[[""optic_Aco"",""optic_Aco_smg"",""optic_Hamr"",""optic_SOS"",""optic_Holosight"",""optic_NVS"",""optic_tws"",""optic_tws_mg"",""optic_MRD"",""optic_DMS"",""optic_LRPS"",""optic_AMS"",""optic_AMS_khk"",""optic_AMS_snd""],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1141 = objNull;
if (_layerRoot) then {
	_item1141 = createVehicle ["CamoNet_BLUFOR_open_F",[13825.6,18974.9,3.62396e-005],[],0,"CAN_COLLIDE"];
	_this = _item1141;
	_objects pushback _this;
	_objectIDs pushback 1141;
	_this setPosWorld [13825.6,18974.9,21.1717];
	_this setVectorDirAndUp [[0.662972,-0.748643,0.00116948],[-0.02133,-0.0173276,0.999622]];
};

private _item1164 = objNull;
if (_layerRoot) then {
	_item1164 = _item1163 createUnit ["CUP_B_USMC_Soldier_SL",[14636,16654.1,0],[],0,"CAN_COLLIDE"];
	_item1163 selectLeader _item1164;
	_this = _item1164;
	_objects pushback _this;
	_objectIDs pushback 1164;
	_this setPosWorld [14636,16654.2,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_roll_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_SL",[["CUP_30Rnd_556x45_Stanag",8,30],["CUP_HandGrenade_M67",2,1],["SmokeShell",2,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_15Rnd_9x19_M9",3,15]]],["B_AssaultPack_cbr",[["CUP_30Rnd_556x45_Stanag",20,30]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	officer_charlie = _this;
	_this setVehicleVarName "officer_charlie";
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Geoff Robinson";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item1165 = objNull;
if (_layerRoot) then {
	_item1165 = _item1163 createUnit ["CUP_B_USMC_Soldier_MG",[14634.5,16657.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1165;
	_objects pushback _this;
	_objectIDs pushback 1165;
	_this setPosWorld [14634.5,16657.6,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Harry Wood";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item1166 = objNull;
if (_layerRoot) then {
	_item1166 = _item1163 createUnit ["CUP_B_USMC_Soldier_GL",[14638.5,16660.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1166;
	_objects pushback _this;
	_objectIDs pushback 1166;
	_this setPosWorld [14638.5,16660.2,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "William Thompson";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1167 = objNull;
if (_layerRoot) then {
	_item1167 = _item1163 createUnit ["CUP_B_USMC_Soldier_GL",[14633.9,16649.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1167;
	_objects pushback _this;
	_objectIDs pushback 1167;
	_this setPosWorld [14633.9,16649.9,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Tyler Jackson";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1168 = objNull;
if (_layerRoot) then {
	_item1168 = _item1163 createUnit ["CUP_B_USMC_Medic",[14638.5,16651.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1168;
	_objects pushback _this;
	_objectIDs pushback 1168;
	_this setPosWorld [14638.5,16651.4,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",2],["CUP_30Rnd_556x45_Stanag",3,30]]],["CUP_V_B_Eagle_SPC_Corpsman",[["CUP_30Rnd_556x45_Stanag",13,30],["SmokeShell",1,1],["CUP_HandGrenade_M67",1,1]]],["CUP_B_USMC_AssaultPack_Medic",[["FirstAidKit",14],["Medikit",2]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Toby Lee";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item1169 = objNull;
if (_layerRoot) then {
	_item1169 = _item1163 createUnit ["CUP_B_USMC_Soldier_MG",[14638.4,16657.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1169;
	_objects pushback _this;
	_objectIDs pushback 1169;
	_this setPosWorld [14638.4,16657.1,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Samuel Harrison";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item1170 = objNull;
if (_layerRoot) then {
	_item1170 = _item1163 createUnit ["CUP_B_USMC_Soldier_Marksman",[14636.3,16651.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1170;
	_objects pushback _this;
	_objectIDs pushback 1170;
	_this setPosWorld [14636.3,16651.9,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",1],["SmokeShell",1,1],["7Rnd_408_Mag",2,7]]],["CUP_V_B_Eagle_SPC_DMR",[["CUP_HandGrenade_M67",2,1],["SmokeShellRed",1,1],["7Rnd_408_Mag",6,7],["CUP_7Rnd_45ACP_1911",2,7]]],["B_AssaultPack_rgr",[["7Rnd_408_Mag",10,7],["CUP_7Rnd_45ACP_1911",3,7]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Oscar Robinson";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1171 = objNull;
if (_layerRoot) then {
	_item1171 = _item1163 createUnit ["CUP_B_USMC_Soldier_Marksman",[14635.3,16664.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1171;
	_objects pushback _this;
	_objectIDs pushback 1171;
	_this setPosWorld [14635.3,16664.7,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",1],["SmokeShell",1,1],["CUP_HandGrenade_M67",2,1],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_B_Eagle_SPC_DMR",[["SmokeShellRed",1,1],["CUP_HandGrenade_M67",5,1],["CUP_7Rnd_45ACP_1911",4,7],["7Rnd_408_Mag",3,7]]],["B_AssaultPack_cbr",[["7Rnd_408_Mag",8,7],["CUP_7Rnd_45ACP_1911",1,7],["CUP_HandGrenade_M67",4,1]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Joseph Turner";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1172 = objNull;
if (_layerRoot) then {
	_item1172 = _item1163 createUnit ["CUP_B_USMC_Soldier_AR",[14637.9,16654.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1172;
	_objects pushback _this;
	_objectIDs pushback 1172;
	_this setPosWorld [14637.9,16654.6,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Brian Robertson";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1173 = objNull;
if (_layerRoot) then {
	_item1173 = _item1163 createUnit ["CUP_B_USMC_Soldier",[14633.5,16654.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1173;
	_objects pushback _this;
	_objectIDs pushback 1173;
	_this setPosWorld [14633.5,16654.5,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Chris White";;
	_this setface "WhiteHead_06";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1174 = objNull;
if (_layerRoot) then {
	_item1174 = _item1163 createUnit ["CUP_B_USMC_Sniper_M107",[14633.1,16661.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1174;
	_objects pushback _this;
	_objectIDs pushback 1174;
	_this setPosWorld [14633.1,16661.6,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_srifle_M107_Base","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107",10],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_Ghillie_WDL",[["FirstAidKit",1],["CUP_10Rnd_127x99_M107",3,10],["CUP_HandGrenade_M67",1,1],["CUP_7Rnd_45ACP_1911",2,7]]],["V_BandollierB_oli",[["CUP_10Rnd_127x99_M107",4,10],["SmokeShell",1,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_7Rnd_45ACP_1911",1,7]]],["B_AssaultPack_dgtl",[["CUP_10Rnd_127x99_M107",10,10],["CUP_7Rnd_45ACP_1911",1,7]]],"","CUP_G_Shades_Black",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Daniel White";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1175 = objNull;
if (_layerRoot) then {
	_item1175 = _item1163 createUnit ["CUP_B_USMC_Soldier",[14636.8,16649.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1175;
	_objects pushback _this;
	_objectIDs pushback 1175;
	_this setPosWorld [14636.8,16649.2,17.9114];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Jacob Lee";;
	_this setface "WhiteHead_09";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1423 = objNull;
if (_layerRoot) then {
	_item1423 = _item1163 createUnit ["CUP_B_USMC_Crew",[14627.9,16653.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1423;
	_objects pushback _this;
	_objectIDs pushback 1423;
	_this setPosWorld [14627.9,16653.3,20.375];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Donald Dayton";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male01ENG";;
	_this setpitch 0.99;;
};

private _item1424 = objNull;
if (_layerRoot) then {
	_item1424 = _item1163 createUnit ["CUP_B_USMC_Crew",[14627.9,16653.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1424;
	_objects pushback _this;
	_objectIDs pushback 1424;
	_this setPosWorld [14627.9,16653.3,20.375];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "David Hill";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.04;;
};

private _item1425 = objNull;
if (_layerRoot) then {
	_item1425 = _item1163 createUnit ["CUP_B_USMC_Crew",[14627.9,16653.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1425;
	_objects pushback _this;
	_objectIDs pushback 1425;
	_this setPosWorld [14627.9,16653.3,20.375];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Thomas Harrison";;
	_this setface "WhiteHead_15";;
	_this setspeaker "Male12ENG";;
	_this setpitch 1.04;;
};

private _item1313 = objNull;
if (_layerRoot) then {
	_item1313 = createVehicle ["CUP_B_M119_US",[14658.2,16697.3,0.00111198],[],0,"CAN_COLLIDE"];
	_this = _item1313;
	_objects pushback _this;
	_objectIDs pushback 1313;
	_this setPosWorld [14658.2,16697.3,18.8344];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1356 = objNull;
if (_layerRoot) then {
	_item1356 = createVehicle ["CUP_B_M119_US",[14664.3,16703.8,0.00134659],[],0,"CAN_COLLIDE"];
	_this = _item1356;
	_objects pushback _this;
	_objectIDs pushback 1356;
	_this setPosWorld [14664.3,16703.8,18.8346];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1359 = objNull;
if (_layerRoot) then {
	_item1359 = createVehicle ["CUP_B_M119_US",[14676.1,16717,0.00200081],[],0,"CAN_COLLIDE"];
	_this = _item1359;
	_objects pushback _this;
	_objectIDs pushback 1359;
	_this setPosWorld [14676.1,16717,18.8353];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1362 = objNull;
if (_layerRoot) then {
	_item1362 = createVehicle ["CUP_B_M119_US",[14670.2,16709.9,0.00123596],[],0,"CAN_COLLIDE"];
	_this = _item1362;
	_objects pushback _this;
	_objectIDs pushback 1362;
	_this setPosWorld [14670.2,16709.9,18.8345];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1365 = objNull;
if (_layerRoot) then {
	_item1365 = createVehicle ["CUP_B_M119_US",[14660.7,16688.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1365;
	_objects pushback _this;
	_objectIDs pushback 1365;
	_this setPosWorld [14660.7,16688.1,18.8333];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1368 = objNull;
if (_layerRoot) then {
	_item1368 = createVehicle ["CUP_B_M119_US",[14666.7,16694.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1368;
	_objects pushback _this;
	_objectIDs pushback 1368;
	_this setPosWorld [14666.7,16694.6,18.8333];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1371 = objNull;
if (_layerRoot) then {
	_item1371 = createVehicle ["CUP_B_M119_US",[14678.5,16707.9,0.00200081],[],0,"CAN_COLLIDE"];
	_this = _item1371;
	_objects pushback _this;
	_objectIDs pushback 1371;
	_this setPosWorld [14678.5,16707.9,18.8353];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1374 = objNull;
if (_layerRoot) then {
	_item1374 = createVehicle ["CUP_B_M119_US",[14672.7,16700.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1374;
	_objects pushback _this;
	_objectIDs pushback 1374;
	_this setPosWorld [14672.7,16700.7,18.8333];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1422 = objNull;
if (_layerRoot) then {
	_item1422 = createVehicle ["CUP_B_AAV_USMC",[14627.9,16653.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1422;
	_objects pushback _this;
	_objectIDs pushback 1422;
	_this setPosWorld [14627.9,16653.3,20.375];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1485 = objNull;
if (_layerRoot) then {
	_item1485 = createVehicle ["CUP_B_M119_US",[14652.4,16691.2,0.0017395],[],0,"CAN_COLLIDE"];
	_this = _item1485;
	_objects pushback _this;
	_objectIDs pushback 1485;
	_this setPosWorld [14652.4,16691.2,18.835];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1495 = objNull;
if (_layerRoot) then {
	_item1495 = _item1494 createUnit ["CUP_O_RU_Soldier_SL",[14682.6,19781.9,0.368032],[],0,"CAN_COLLIDE"];
	_item1494 selectLeader _item1495;
	_this = _item1495;
	_objects pushback _this;
	_objectIDs pushback 1495;
	_this setPosWorld [14682.6,19781.9,30.7977];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Leonid Morozov";;
	_this setface "WhiteHead_01";;
	_this setspeaker "Male01RUS";;
	_this setpitch 1.01;;
};

private _item1496 = objNull;
if (_layerRoot) then {
	_item1496 = _item1494 createUnit ["CUP_O_RU_Soldier_MG",[14685.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1496;
	_objects pushback _this;
	_objectIDs pushback 1496;
	_this setPosWorld [14685.6,19776.9,30.9789];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Ruslan Yefremov";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male03rus";;
	_this setpitch 0.982691;;
};

private _item1497 = objNull;
if (_layerRoot) then {
	_item1497 = _item1494 createUnit ["CUP_O_RU_Soldier_AT",[14687.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1497;
	_objects pushback _this;
	_objectIDs pushback 1497;
	_this setPosWorld [14687.6,19776.9,30.9922];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Pyotr Pashinin";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03059;;
};

private _item1498 = objNull;
if (_layerRoot) then {
	_item1498 = _item1494 createUnit ["CUP_O_RU_Soldier_LAT",[14689.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1498;
	_objects pushback _this;
	_objectIDs pushback 1498;
	_this setPosWorld [14689.6,19776.9,31.0056];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vitaly Potapenko";;
	_this setface "RussianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 0.990263;;
};

private _item1499 = objNull;
if (_layerRoot) then {
	_item1499 = _item1494 createUnit ["CUP_O_RU_Soldier_GL",[14691.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1499;
	_objects pushback _this;
	_objectIDs pushback 1499;
	_this setPosWorld [14691.6,19776.9,31.0189];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Konstantin Malyukov";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male03rus";;
	_this setpitch 1.02544;;
};

private _item1500 = objNull;
if (_layerRoot) then {
	_item1500 = _item1494 createUnit ["CUP_O_RU_Soldier_Marksman",[14693.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1500;
	_objects pushback _this;
	_objectIDs pushback 1500;
	_this setPosWorld [14693.6,19776.9,31.0855];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Kiril Titov";;
	_this setface "Sturrock";;
	_this setspeaker "male01rus";;
	_this setpitch 1.03778;;
};

private _item1501 = objNull;
if (_layerRoot) then {
	_item1501 = _item1494 createUnit ["CUP_O_RU_Soldier_MG",[14695.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1501;
	_objects pushback _this;
	_objectIDs pushback 1501;
	_this setPosWorld [14695.6,19776.9,31.1842];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Beregovoi";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male02rus";;
	_this setpitch 0.992189;;
};

private _item1502 = objNull;
if (_layerRoot) then {
	_item1502 = _item1494 createUnit ["CUP_O_RU_Soldier_AT",[14697.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1502;
	_objects pushback _this;
	_objectIDs pushback 1502;
	_this setPosWorld [14697.6,19776.9,31.2828];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Viktor Popov";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01002;;
};

private _item1503 = objNull;
if (_layerRoot) then {
	_item1503 = _item1494 createUnit ["CUP_O_RU_Soldier_AR",[14699.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1503;
	_objects pushback _this;
	_objectIDs pushback 1503;
	_this setPosWorld [14699.6,19776.9,31.3815];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vitaly Titov";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male02rus";;
	_this setpitch 1.04265;;
};

private _item1504 = objNull;
if (_layerRoot) then {
	_item1504 = _item1494 createUnit ["CUP_O_RU_Soldier_LAT",[14701.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1504;
	_objects pushback _this;
	_objectIDs pushback 1504;
	_this setPosWorld [14701.6,19776.9,31.4706];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Kuzma Krasko";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male03rus";;
	_this setpitch 1.01619;;
};

private _item1505 = objNull;
if (_layerRoot) then {
	_item1505 = _item1494 createUnit ["CUP_O_RU_Soldier_GL",[14703.6,19776.9,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1505;
	_objects pushback _this;
	_objectIDs pushback 1505;
	_this setPosWorld [14703.6,19776.9,31.5586];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Alyosha Yeltsin";;
	_this setface "RussianHead_1";;
	_this setspeaker "male02rus";;
	_this setpitch 0.957517;;
};

private _item1506 = objNull;
if (_layerRoot) then {
	_item1506 = _item1494 createUnit ["CUP_O_RU_Soldier",[14705.6,19776.9,0.36804],[],0,"CAN_COLLIDE"];
	_this = _item1506;
	_objects pushback _this;
	_objectIDs pushback 1506;
	_this setPosWorld [14705.6,19776.9,31.6467];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Mikhail Beregovoi";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 0.972471;;
};

private _item1507 = objNull;
if (_layerRoot) then {
	_item1507 = _item1494 createUnit ["CUP_O_RU_Soldier_MG",[14689.7,19765.8,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1507;
	_objects pushback _this;
	_objectIDs pushback 1507;
	_this setPosWorld [14689.7,19765.9,31.2612];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Yuri Davidov";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male03rus";;
	_this setpitch 1.04083;;
};

private _item1508 = objNull;
if (_layerRoot) then {
	_item1508 = _item1494 createUnit ["CUP_O_RU_Soldier_AT",[14691.7,19765.8,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1508;
	_objects pushback _this;
	_objectIDs pushback 1508;
	_this setPosWorld [14691.7,19765.9,31.2239];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Kiril Kirygin";;
	_this setface "RussianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00451;;
};

private _item1509 = objNull;
if (_layerRoot) then {
	_item1509 = _item1494 createUnit ["CUP_O_RU_Soldier_LAT",[14693.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1509;
	_objects pushback _this;
	_objectIDs pushback 1509;
	_this setPosWorld [14693.7,19765.9,31.2068];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Stepan Zhegalov";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male01rus";;
	_this setpitch 0.954083;;
};

private _item1510 = objNull;
if (_layerRoot) then {
	_item1510 = _item1494 createUnit ["CUP_O_RU_Soldier_GL",[14695.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1510;
	_objects pushback _this;
	_objectIDs pushback 1510;
	_this setPosWorld [14695.7,19765.9,31.2042];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Ivanov";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male03rus";;
	_this setpitch 1.04721;;
};

private _item1511 = objNull;
if (_layerRoot) then {
	_item1511 = _item1494 createUnit ["CUP_O_RU_Soldier_Marksman",[14697.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1511;
	_objects pushback _this;
	_objectIDs pushback 1511;
	_this setPosWorld [14697.7,19765.9,31.2605];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Kiril Gorbunov";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01323;;
};

private _item1512 = objNull;
if (_layerRoot) then {
	_item1512 = _item1494 createUnit ["CUP_O_RU_Soldier_MG",[14699.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1512;
	_objects pushback _this;
	_objectIDs pushback 1512;
	_this setPosWorld [14699.7,19765.9,31.3751];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Arkadiy Dobryakov";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01193;;
};

private _item1513 = objNull;
if (_layerRoot) then {
	_item1513 = _item1494 createUnit ["CUP_O_RU_Soldier_AT",[14701.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1513;
	_objects pushback _this;
	_objectIDs pushback 1513;
	_this setPosWorld [14701.7,19765.9,31.4519];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Roman Turchinsky";;
	_this setface "WhiteHead_11";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0109;;
};

private _item1514 = objNull;
if (_layerRoot) then {
	_item1514 = _item1494 createUnit ["CUP_O_RU_Soldier_AR",[14703.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1514;
	_objects pushback _this;
	_objectIDs pushback 1514;
	_this setPosWorld [14703.7,19765.9,31.5212];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Viktor Soloveychik";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male01rus";;
	_this setpitch 0.979551;;
};

private _item1515 = objNull;
if (_layerRoot) then {
	_item1515 = _item1494 createUnit ["CUP_O_RU_Soldier_LAT",[14705.7,19765.8,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1515;
	_objects pushback _this;
	_objectIDs pushback 1515;
	_this setPosWorld [14705.7,19765.9,31.6026];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Daniil Zubov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01682;;
};

private _item1516 = objNull;
if (_layerRoot) then {
	_item1516 = _item1494 createUnit ["CUP_O_RU_Soldier_GL",[14707.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1516;
	_objects pushback _this;
	_objectIDs pushback 1516;
	_this setPosWorld [14707.7,19765.9,31.6863];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Igor Davidov";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male03rus";;
	_this setpitch 0.978608;;
};

private _item1517 = objNull;
if (_layerRoot) then {
	_item1517 = _item1494 createUnit ["CUP_O_RU_Soldier",[14709.7,19765.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1517;
	_objects pushback _this;
	_objectIDs pushback 1517;
	_this setPosWorld [14709.7,19765.9,31.753];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vadim Smirnov";;
	_this setface "WhiteHead_11";;
	_this setspeaker "male03rus";;
	_this setpitch 0.951865;;
};

private _item1518 = objNull;
if (_layerRoot) then {
	_item1518 = _item1494 createUnit ["CUP_O_RU_Soldier_GL",[14700.4,19756.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1518;
	_objects pushback _this;
	_objectIDs pushback 1518;
	_this setPosWorld [14700.4,19756.8,31.4008];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Lev Rogozhkin";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male03rus";;
	_this setpitch 1.0278;;
};

private _item1519 = objNull;
if (_layerRoot) then {
	_item1519 = _item1494 createUnit ["CUP_O_RU_Soldier",[14702.4,19756.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1519;
	_objects pushback _this;
	_objectIDs pushback 1519;
	_this setPosWorld [14702.4,19756.8,31.4515];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Semyon Malyukov";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male02RUS";;
	_this setpitch 0.97;;
};

private _item1520 = objNull;
if (_layerRoot) then {
	_item1520 = _item1494 createUnit ["CUP_O_RU_Soldier_MG",[14682.4,19756.8,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1520;
	_objects pushback _this;
	_objectIDs pushback 1520;
	_this setPosWorld [14682.4,19756.8,31.1383];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Kiril Litvinov";;
	_this setface "WhiteHead_11";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01792;;
};

private _item1521 = objNull;
if (_layerRoot) then {
	_item1521 = _item1494 createUnit ["CUP_O_RU_Soldier_AT",[14684.4,19756.8,0.36804],[],0,"CAN_COLLIDE"];
	_this = _item1521;
	_objects pushback _this;
	_objectIDs pushback 1521;
	_this setPosWorld [14684.4,19756.8,31.2297];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Grigoriy Mamayev";;
	_this setface "LivonianHead_3";;
	_this setspeaker "male02rus";;
	_this setpitch 0.992082;;
};

private _item1522 = objNull;
if (_layerRoot) then {
	_item1522 = _item1494 createUnit ["CUP_O_RU_Soldier_LAT",[14686.4,19756.8,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1522;
	_objects pushback _this;
	_objectIDs pushback 1522;
	_this setPosWorld [14686.4,19756.8,31.3285];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Oleg Medvedev";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male03rus";;
	_this setpitch 1.04842;;
};

private _item1523 = objNull;
if (_layerRoot) then {
	_item1523 = _item1494 createUnit ["CUP_O_RU_Soldier_GL",[14688.4,19756.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1523;
	_objects pushback _this;
	_objectIDs pushback 1523;
	_this setPosWorld [14688.4,19756.8,31.4325];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Pavel Golovko";;
	_this setface "RussianHead_3";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02974;;
};

private _item1524 = objNull;
if (_layerRoot) then {
	_item1524 = _item1494 createUnit ["CUP_O_RU_Soldier_Marksman",[14690.4,19756.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1524;
	_objects pushback _this;
	_objectIDs pushback 1524;
	_this setPosWorld [14690.4,19756.8,31.5365];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vasil Zhitkov";;
	_this setface "WhiteHead_12";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01204;;
};

private _item1525 = objNull;
if (_layerRoot) then {
	_item1525 = _item1494 createUnit ["CUP_O_RU_Soldier_MG",[14692.4,19756.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1525;
	_objects pushback _this;
	_objectIDs pushback 1525;
	_this setPosWorld [14692.4,19756.8,31.6034];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vitaly Malyukov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male03rus";;
	_this setpitch 0.974476;;
};

private _item1526 = objNull;
if (_layerRoot) then {
	_item1526 = _item1494 createUnit ["CUP_O_RU_Soldier_AT",[14694.4,19756.8,0.368032],[],0,"CAN_COLLIDE"];
	_this = _item1526;
	_objects pushback _this;
	_objectIDs pushback 1526;
	_this setPosWorld [14694.4,19756.8,31.5323];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Dimitri Pushkin";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male03rus";;
	_this setpitch 0.98806;;
};

private _item1527 = objNull;
if (_layerRoot) then {
	_item1527 = _item1494 createUnit ["CUP_O_RU_Soldier_AR",[14696.4,19756.8,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1527;
	_objects pushback _this;
	_objectIDs pushback 1527;
	_this setPosWorld [14696.4,19756.8,31.4576];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Filip Privalov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male02rus";;
	_this setpitch 0.963276;;
};

private _item1528 = objNull;
if (_layerRoot) then {
	_item1528 = _item1494 createUnit ["CUP_O_RU_Soldier_LAT",[14698.4,19756.8,0.368036],[],0,"CAN_COLLIDE"];
	_this = _item1528;
	_objects pushback _this;
	_objectIDs pushback 1528;
	_this setPosWorld [14698.4,19756.8,31.3915];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Filip Zhitkov";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0497;;
};

private _item1532 = objNull;
if (_layerRoot) then {
	_item1532 = _item1531 createUnit ["CUP_B_USMC_Soldier_SL",[13848.7,18875,0],[],0,"CAN_COLLIDE"];
	_item1531 selectLeader _item1532;
	_this = _item1532;
	_objects pushback _this;
	_objectIDs pushback 1532;
	_this setPosWorld [13848.7,18875,19.0872];
	_this setVectorDirAndUp [[-0.603528,0.797342,0],[0,0,1]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_roll_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_SL",[["CUP_30Rnd_556x45_Stanag",8,30],["CUP_HandGrenade_M67",2,1],["SmokeShell",2,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_15Rnd_9x19_M9",3,15]]],["B_AssaultPack_cbr",[["CUP_30Rnd_556x45_Stanag",20,30]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	officer_alpha_1 = _this;
	_this setVehicleVarName "officer_alpha_1";
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Tavish Clarke";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item1533 = objNull;
if (_layerRoot) then {
	_item1533 = _item1531 createUnit ["CUP_B_USMC_Soldier_MG",[13855.8,18866.5,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1533;
	_objects pushback _this;
	_objectIDs pushback 1533;
	_this setPosWorld [13855.8,18866.5,19.1024];
	_this setVectorDirAndUp [[-0.603437,0.797407,0.00229878],[-0.0173282,-0.0159951,0.999722]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Brian Davies";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item1534 = objNull;
if (_layerRoot) then {
	_item1534 = _item1531 createUnit ["CUP_B_USMC_Soldier_GL",[13857.2,18859.4,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1534;
	_objects pushback _this;
	_objectIDs pushback 1534;
	_this setPosWorld [13857.2,18859.4,19.0582];
	_this setVectorDirAndUp [[-0.603437,0.797355,-0.00939208],[-0.0173282,-0.00133668,0.999849]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "James Scott";;
	_this setface "WhiteHead_12";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1535 = objNull;
if (_layerRoot) then {
	_item1535 = _item1531 createUnit ["CUP_B_USMC_Soldier_GL",[13853.2,18856.8,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1535;
	_objects pushback _this;
	_objectIDs pushback 1535;
	_this setPosWorld [13853.2,18856.9,19.0458];
	_this setVectorDirAndUp [[-0.603519,0.797262,-0.0117174],[-0.0053265,0.0106639,0.999929]];
	_this setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_GL",[["CUP_30Rnd_556x45_Stanag",14,30],["CUP_1Rnd_HE_M203",5,1]]],["B_AssaultPack_cbr",[["CUP_1Rnd_HE_M203",39,1]]],"CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_G_Oakleys_Clr",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Benjamin James";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1536 = objNull;
if (_layerRoot) then {
	_item1536 = _item1531 createUnit ["CUP_B_USMC_Medic",[13848.4,18853.1,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1536;
	_objects pushback _this;
	_objectIDs pushback 1536;
	_this setPosWorld [13848.4,18853.1,19.1471];
	_this setVectorDirAndUp [[-0.603474,0.797368,-0.00471083],[0.0133313,0.0159963,0.999783]];
	_this setUnitLoadout [["CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",2],["CUP_30Rnd_556x45_Stanag",3,30]]],["CUP_V_B_Eagle_SPC_Corpsman",[["CUP_30Rnd_556x45_Stanag",13,30],["SmokeShell",1,1],["CUP_HandGrenade_M67",1,1]]],["CUP_B_USMC_AssaultPack_Medic",[["FirstAidKit",14],["Medikit",2]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Oliver White";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male02ENG";;
	_this setpitch 0.95;;
};

private _item1537 = objNull;
if (_layerRoot) then {
	_item1537 = _item1531 createUnit ["CUP_B_USMC_Soldier_MG",[13859.3,18868.7,0.000165939],[],0,"CAN_COLLIDE"];
	_this = _item1537;
	_objects pushback _this;
	_objectIDs pushback 1537;
	_this setPosWorld [13859.3,18868.8,19.029];
	_this setVectorDirAndUp [[-0.603474,0.797374,-0.00364751],[0.0133313,0.014663,0.999804]];
	_this setUnitLoadout [["CUP_lmg_M240","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1]]],["CUP_V_B_Eagle_SPC_MG",[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",3,100]]],["CUP_B_USMC_MOLLE_MG",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4,100],["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",2,100]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Dwan Rollins";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
};

private _item1538 = objNull;
if (_layerRoot) then {
	_item1538 = _item1531 createUnit ["CUP_B_USMC_Soldier_Marksman",[13852.3,18863.9,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1538;
	_objects pushback _this;
	_objectIDs pushback 1538;
	_this setPosWorld [13852.3,18863.9,19.0015];
	_this setVectorDirAndUp [[-0.603485,0.797356,0.00551408],[-0.012,-0.0159964,0.9998]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["FirstAidKit",1],["SmokeShell",1,1],["7Rnd_408_Mag",2,7]]],["CUP_V_B_Eagle_SPC_DMR",[["CUP_HandGrenade_M67",2,1],["SmokeShellRed",1,1],["7Rnd_408_Mag",6,7],["CUP_7Rnd_45ACP_1911",2,7]]],["B_AssaultPack_rgr",[["7Rnd_408_Mag",10,7],["CUP_7Rnd_45ACP_1911",3,7]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Ewan Roberts";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1539 = objNull;
if (_layerRoot) then {
	_item1539 = _item1531 createUnit ["CUP_B_USMC_Soldier_AR",[13864.6,18864.6,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1539;
	_objects pushback _this;
	_objectIDs pushback 1539;
	_this setPosWorld [13864.6,18864.6,19.2454];
	_this setVectorDirAndUp [[-0.582469,0.812187,-0.0328825],[-0.0359766,0.0146548,0.999245]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Thomas Anderson";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1540 = objNull;
if (_layerRoot) then {
	_item1540 = _item1531 createUnit ["CUP_B_USMC_Soldier",[13867.4,18873.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1540;
	_objects pushback _this;
	_objectIDs pushback 1540;
	_this setPosWorld [13867.4,18873.7,19.5739];
	_this setVectorDirAndUp [[-0.582139,0.811845,-0.044963],[-0.0492736,0.0199734,0.998586]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Dylan Patel";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1541 = objNull;
if (_layerRoot) then {
	_item1541 = _item1531 createUnit ["CUP_B_USMC_Sniper_M107",[13862.9,18870.8,0.000154495],[],0,"CAN_COLLIDE"];
	_this = _item1541;
	_objects pushback _this;
	_objectIDs pushback 1541;
	_this setPosWorld [13862.9,18870.9,19.2718];
	_this setVectorDirAndUp [[-0.601274,0.798125,-0.0382861],[-0.086343,-0.0172635,0.996116]];
	_this setUnitLoadout [["CUP_srifle_M107_Base","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107",10],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_Ghillie_WDL",[["FirstAidKit",1],["CUP_10Rnd_127x99_M107",3,10],["CUP_HandGrenade_M67",1,1],["CUP_7Rnd_45ACP_1911",2,7]]],["V_BandollierB_oli",[["CUP_10Rnd_127x99_M107",4,10],["SmokeShell",1,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["CUP_7Rnd_45ACP_1911",1,7]]],["B_AssaultPack_dgtl",[["CUP_10Rnd_127x99_M107",10,10],["CUP_7Rnd_45ACP_1911",1,7]]],"","CUP_G_Shades_Black",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Chad Morris";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1542 = objNull;
if (_layerRoot) then {
	_item1542 = _item1531 createUnit ["CUP_B_USMC_Soldier",[13860.6,18861.6,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1542;
	_objects pushback _this;
	_objectIDs pushback 1542;
	_this setPosWorld [13860.6,18861.7,19.1406];
	_this setVectorDirAndUp [[-0.582139,0.81262,-0.0276326],[-0.0492736,-0.00133525,0.998784]];
	_this setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Black","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["FirstAidKit",1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_V_B_Eagle_SPC_Patrol",[["CUP_30Rnd_556x45_Stanag",12,30],["CUP_HandGrenade_M67",4,1]]],["B_AssaultPack_dgtl",[["CUP_60Rnd_556x45_SureFire",10,60]]],"CUP_H_LWHv2_MARPAT_cov_fr","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Sykes Wood";;
	_this setface "Sturrock";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1.03;;
};

private _item1543 = objNull;
if (_layerRoot) then {
	_item1543 = _item1531 createUnit ["CUP_B_USMC_Soldier_Marksman",[13868.9,18867.7,0.000112534],[],0,"CAN_COLLIDE"];
	_this = _item1543;
	_objects pushback _this;
	_objectIDs pushback 1543;
	_this setPosWorld [13868.9,18867.8,19.6259];
	_this setVectorDirAndUp [[-0.603046,0.797693,0.00458027],[-0.0399685,-0.0359493,0.998554]];
	_this setUnitLoadout [["srifle_LRR_camo_F","","","optic_AMS_khk",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_Deagle","","","",["CUP_7Rnd_50AE_Deagle",7],[],""],["CUP_U_B_USMC_MCCUU_roll",[["CUP_7Rnd_50AE_Deagle",5,7]]],["CUP_V_B_Eagle_SPC_DMR",[["7Rnd_408_Mag",8,7],["CUP_7Rnd_50AE_Deagle",1,7]]],["B_AssaultPack_cbr",[["7Rnd_408_Mag",10,7]]],"CUP_H_LWHv2_MARPAT_cov_fr","CUP_G_Shades_Green",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","CUP_NVG_PVS7_Hide"]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Max Kelly";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1544 = objNull;
if (_layerRoot) then {
	_item1544 = _item1531 createUnit ["CUP_B_USMC_Soldier_FROG_WDL",[13846.2,18859.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1544;
	_objects pushback _this;
	_objectIDs pushback 1544;
	_this setPosWorld [13846.2,18859.9,18.972];
	_this setVectorDirAndUp [[-0.737283,0.675429,-0.0144792],[0.0133313,0.0359734,0.999264]];
	_this setSkill 1;
	_this setname "Owen Turner";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.01;;
};

private _item1547 = objNull;
if (_layerRoot) then {
	_item1547 = _item1546 createUnit ["CUP_O_RU_Soldier_SL",[14477.4,19966.4,0.367802],[],0,"CAN_COLLIDE"];
	_item1546 selectLeader _item1547;
	_this = _item1547;
	_objects pushback _this;
	_objectIDs pushback 1547;
	_this setPosWorld [14477.4,19966.5,28.8777];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Lev Kuznetsov";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male01RUS";;
	_this setpitch 1.01;;
};

private _item1548 = objNull;
if (_layerRoot) then {
	_item1548 = _item1546 createUnit ["CUP_O_RU_Soldier_MG",[14480.4,19961.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1548;
	_objects pushback _this;
	_objectIDs pushback 1548;
	_this setPosWorld [14480.4,19961.5,28.9531];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Ivan Pecharov";;
	_this setface "Sturrock";;
	_this setspeaker "male03rus";;
	_this setpitch 1.0093;;
};

private _item1549 = objNull;
if (_layerRoot) then {
	_item1549 = _item1546 createUnit ["CUP_O_RU_Soldier_AT",[14482.4,19961.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1549;
	_objects pushback _this;
	_objectIDs pushback 1549;
	_this setPosWorld [14482.4,19961.5,28.9958];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Leonid Blagonravov";;
	_this setface "WhiteHead_19";;
	_this setspeaker "male03rus";;
	_this setpitch 0.986882;;
};

private _item1550 = objNull;
if (_layerRoot) then {
	_item1550 = _item1546 createUnit ["CUP_O_RU_Soldier_LAT",[14484.4,19961.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1550;
	_objects pushback _this;
	_objectIDs pushback 1550;
	_this setPosWorld [14484.4,19961.5,29.026];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Igor Strugackiy";;
	_this setface "WhiteHead_19";;
	_this setspeaker "male03rus";;
	_this setpitch 1.04631;;
};

private _item1551 = objNull;
if (_layerRoot) then {
	_item1551 = _item1546 createUnit ["CUP_O_RU_Soldier_GL",[14486.4,19961.4,0.367809],[],0,"CAN_COLLIDE"];
	_this = _item1551;
	_objects pushback _this;
	_objectIDs pushback 1551;
	_this setPosWorld [14486.4,19961.5,29.0508];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Valery Zykov";;
	_this setface "Sturrock";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01369;;
};

private _item1552 = objNull;
if (_layerRoot) then {
	_item1552 = _item1546 createUnit ["CUP_O_RU_Soldier_Marksman",[14488.4,19961.4,0.367809],[],0,"CAN_COLLIDE"];
	_this = _item1552;
	_objects pushback _this;
	_objectIDs pushback 1552;
	_this setPosWorld [14488.4,19961.5,29.0508];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Mikhail Yeltsin";;
	_this setface "LivonianHead_10";;
	_this setspeaker "male02rus";;
	_this setpitch 0.991783;;
};

private _item1553 = objNull;
if (_layerRoot) then {
	_item1553 = _item1546 createUnit ["CUP_O_RU_Soldier_MG",[14490.4,19961.4,0.367809],[],0,"CAN_COLLIDE"];
	_this = _item1553;
	_objects pushback _this;
	_objectIDs pushback 1553;
	_this setPosWorld [14490.4,19961.5,29.0658];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vladimir Zykov";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00427;;
};

private _item1554 = objNull;
if (_layerRoot) then {
	_item1554 = _item1546 createUnit ["CUP_O_RU_Soldier_AT",[14492.4,19961.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1554;
	_objects pushback _this;
	_objectIDs pushback 1554;
	_this setPosWorld [14492.4,19961.5,29.1485];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vladimir Krasko";;
	_this setface "RussianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 0.990434;;
};

private _item1555 = objNull;
if (_layerRoot) then {
	_item1555 = _item1546 createUnit ["CUP_O_RU_Soldier_AR",[14494.4,19961.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1555;
	_objects pushback _this;
	_objectIDs pushback 1555;
	_this setPosWorld [14494.4,19961.5,29.2312];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Kuzma Zverev";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male03rus";;
	_this setpitch 0.957947;;
};

private _item1556 = objNull;
if (_layerRoot) then {
	_item1556 = _item1546 createUnit ["CUP_O_RU_Soldier_LAT",[14496.4,19961.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1556;
	_objects pushback _this;
	_objectIDs pushback 1556;
	_this setPosWorld [14496.4,19961.5,29.3138];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Egor Gusakov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male01rus";;
	_this setpitch 0.954578;;
};

private _item1557 = objNull;
if (_layerRoot) then {
	_item1557 = _item1546 createUnit ["CUP_O_RU_Soldier_GL",[14498.4,19961.4,0.367809],[],0,"CAN_COLLIDE"];
	_this = _item1557;
	_objects pushback _this;
	_objectIDs pushback 1557;
	_this setPosWorld [14498.4,19961.5,29.3746];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Andrey Maksimov";;
	_this setface "LivonianHead_2";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01383;;
};

private _item1558 = objNull;
if (_layerRoot) then {
	_item1558 = _item1546 createUnit ["CUP_O_RU_Soldier",[14500.4,19961.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1558;
	_objects pushback _this;
	_objectIDs pushback 1558;
	_this setPosWorld [14500.4,19961.5,29.4066];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Aleksei Bychkov";;
	_this setface "LivonianHead_6";;
	_this setspeaker "male01rus";;
	_this setpitch 0.951334;;
};

private _item1559 = objNull;
if (_layerRoot) then {
	_item1559 = _item1546 createUnit ["CUP_O_RU_Soldier_MG",[14484.4,19950.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1559;
	_objects pushback _this;
	_objectIDs pushback 1559;
	_this setPosWorld [14484.4,19950.4,29.0681];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Mikhail Petrov";;
	_this setface "RussianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00477;;
};

private _item1560 = objNull;
if (_layerRoot) then {
	_item1560 = _item1546 createUnit ["CUP_O_RU_Soldier_AT",[14486.4,19950.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1560;
	_objects pushback _this;
	_objectIDs pushback 1560;
	_this setPosWorld [14486.4,19950.4,29.1001];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Fyodor Kirygin";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00044;;
};

private _item1561 = objNull;
if (_layerRoot) then {
	_item1561 = _item1546 createUnit ["CUP_O_RU_Soldier_LAT",[14488.4,19950.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1561;
	_objects pushback _this;
	_objectIDs pushback 1561;
	_this setPosWorld [14488.4,19950.4,29.1321];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Arkadiy Turchinsky";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male01rus";;
	_this setpitch 0.951593;;
};

private _item1562 = objNull;
if (_layerRoot) then {
	_item1562 = _item1546 createUnit ["CUP_O_RU_Soldier_GL",[14490.4,19950.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1562;
	_objects pushback _this;
	_objectIDs pushback 1562;
	_this setPosWorld [14490.4,19950.4,29.178];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Andrey Golovko";;
	_this setface "LivonianHead_10";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04169;;
};

private _item1563 = objNull;
if (_layerRoot) then {
	_item1563 = _item1546 createUnit ["CUP_O_RU_Soldier_Marksman",[14492.4,19950.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1563;
	_objects pushback _this;
	_objectIDs pushback 1563;
	_this setPosWorld [14492.4,19950.4,29.282];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Valentin Zverev";;
	_this setface "RussianHead_5";;
	_this setspeaker "male03rus";;
	_this setpitch 0.970292;;
};

private _item1564 = objNull;
if (_layerRoot) then {
	_item1564 = _item1546 createUnit ["CUP_O_RU_Soldier_MG",[14494.4,19950.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1564;
	_objects pushback _this;
	_objectIDs pushback 1564;
	_this setPosWorld [14494.4,19950.4,29.386];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Nikita Yakushkin";;
	_this setface "WhiteHead_01";;
	_this setspeaker "male01rus";;
	_this setpitch 0.969056;;
};

private _item1565 = objNull;
if (_layerRoot) then {
	_item1565 = _item1546 createUnit ["CUP_O_RU_Soldier_AT",[14496.4,19950.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1565;
	_objects pushback _this;
	_objectIDs pushback 1565;
	_this setPosWorld [14496.4,19950.4,29.49];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "German Beregovoi";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male01rus";;
	_this setpitch 0.95015;;
};

private _item1566 = objNull;
if (_layerRoot) then {
	_item1566 = _item1546 createUnit ["CUP_O_RU_Soldier_AR",[14498.4,19950.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1566;
	_objects pushback _this;
	_objectIDs pushback 1566;
	_this setPosWorld [14498.4,19950.4,29.5707];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Abram Bulgakov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male01rus";;
	_this setpitch 0.963288;;
};

private _item1567 = objNull;
if (_layerRoot) then {
	_item1567 = _item1546 createUnit ["CUP_O_RU_Soldier_LAT",[14500.4,19950.4,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1567;
	_objects pushback _this;
	_objectIDs pushback 1567;
	_this setPosWorld [14500.4,19950.4,29.632];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Yevgeniy Zubov";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04403;;
};

private _item1568 = objNull;
if (_layerRoot) then {
	_item1568 = _item1546 createUnit ["CUP_O_RU_Soldier_GL",[14502.4,19950.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1568;
	_objects pushback _this;
	_objectIDs pushback 1568;
	_this setPosWorld [14502.4,19950.4,29.6933];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Egor Kamenev";;
	_this setface "RussianHead_1";;
	_this setspeaker "male02rus";;
	_this setpitch 1.04654;;
};

private _item1569 = objNull;
if (_layerRoot) then {
	_item1569 = _item1546 createUnit ["CUP_O_RU_Soldier",[14504.4,19950.4,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1569;
	_objects pushback _this;
	_objectIDs pushback 1569;
	_this setPosWorld [14504.4,19950.4,29.7547];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Viktor Dobryakov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01067;;
};

private _item1570 = objNull;
if (_layerRoot) then {
	_item1570 = _item1546 createUnit ["CUP_O_RU_Soldier_GL",[14495.2,19941.3,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1570;
	_objects pushback _this;
	_objectIDs pushback 1570;
	_this setPosWorld [14495.2,19941.4,29.4753];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Pyotr Pecharov";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male03rus";;
	_this setpitch 1.03845;;
};

private _item1571 = objNull;
if (_layerRoot) then {
	_item1571 = _item1546 createUnit ["CUP_O_RU_Soldier",[14497.2,19941.3,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1571;
	_objects pushback _this;
	_objectIDs pushback 1571;
	_this setPosWorld [14497.2,19941.4,29.5846];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Kiril Malyukov";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male02RUS";;
	_this setpitch 0.97;;
};

private _item1572 = objNull;
if (_layerRoot) then {
	_item1572 = _item1546 createUnit ["CUP_O_RU_Soldier_MG",[14477.2,19941.3,0.367809],[],0,"CAN_COLLIDE"];
	_this = _item1572;
	_objects pushback _this;
	_objectIDs pushback 1572;
	_this setPosWorld [14477.2,19941.4,28.7844];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Aleksei Gorbunov";;
	_this setface "RussianHead_5";;
	_this setspeaker "male01rus";;
	_this setpitch 0.962088;;
};

private _item1573 = objNull;
if (_layerRoot) then {
	_item1573 = _item1546 createUnit ["CUP_O_RU_Soldier_AT",[14479.2,19941.3,0.367813],[],0,"CAN_COLLIDE"];
	_this = _item1573;
	_objects pushback _this;
	_objectIDs pushback 1573;
	_this setPosWorld [14479.2,19941.4,28.8698];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Arkadiy Bychkov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03775;;
};

private _item1574 = objNull;
if (_layerRoot) then {
	_item1574 = _item1546 createUnit ["CUP_O_RU_Soldier_LAT",[14481.2,19941.3,0.367809],[],0,"CAN_COLLIDE"];
	_this = _item1574;
	_objects pushback _this;
	_objectIDs pushback 1574;
	_this setPosWorld [14481.2,19941.4,28.9551];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Valentin Strugackiy";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male03rus";;
	_this setpitch 1.02402;;
};

private _item1575 = objNull;
if (_layerRoot) then {
	_item1575 = _item1546 createUnit ["CUP_O_RU_Soldier_GL",[14483.2,19941.3,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1575;
	_objects pushback _this;
	_objectIDs pushback 1575;
	_this setPosWorld [14483.2,19941.4,29.0305];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Nikita Golovko";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male02rus";;
	_this setpitch 0.994233;;
};

private _item1576 = objNull;
if (_layerRoot) then {
	_item1576 = _item1546 createUnit ["CUP_O_RU_Soldier_Marksman",[14485.2,19941.3,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1576;
	_objects pushback _this;
	_objectIDs pushback 1576;
	_this setPosWorld [14485.2,19941.4,29.0825];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Produnov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0411;;
};

private _item1577 = objNull;
if (_layerRoot) then {
	_item1577 = _item1546 createUnit ["CUP_O_RU_Soldier_MG",[14487.2,19941.3,0.367798],[],0,"CAN_COLLIDE"];
	_this = _item1577;
	_objects pushback _this;
	_objectIDs pushback 1577;
	_this setPosWorld [14487.2,19941.4,29.1331];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Valery Beregovoi";;
	_this setface "RussianHead_1";;
	_this setspeaker "male03rus";;
	_this setpitch 0.965793;;
};

private _item1578 = objNull;
if (_layerRoot) then {
	_item1578 = _item1546 createUnit ["CUP_O_RU_Soldier_AT",[14489.2,19941.3,0.134228],[],0,"CAN_COLLIDE"];
	_this = _item1578;
	_objects pushback _this;
	_objectIDs pushback 1578;
	_this setPosWorld [14489.2,19941.4,28.9502];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Mikhail Zhitkov";;
	_this setface "WhiteHead_15";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02935;;
};

private _item1579 = objNull;
if (_layerRoot) then {
	_item1579 = _item1546 createUnit ["CUP_O_RU_Soldier_AR",[14491.2,19941.3,0.367802],[],0,"CAN_COLLIDE"];
	_this = _item1579;
	_objects pushback _this;
	_objectIDs pushback 1579;
	_this setPosWorld [14491.2,19941.4,29.2566];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Konstantin Rogozhkin";;
	_this setface "LivonianHead_8";;
	_this setspeaker "male01rus";;
	_this setpitch 1.005;;
};

private _item1580 = objNull;
if (_layerRoot) then {
	_item1580 = _item1546 createUnit ["CUP_O_RU_Soldier_LAT",[14493.2,19941.3,0.367805],[],0,"CAN_COLLIDE"];
	_this = _item1580;
	_objects pushback _this;
	_objectIDs pushback 1580;
	_this setPosWorld [14493.2,19941.4,29.366];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Pavel Zhitkov";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male01rus";;
	_this setpitch 1.03287;;
};

private _item1585 = objNull;
if (_layerRoot) then {
	_item1585 = createVehicle ["CUP_B_M119_US",[14684,16713.6,0.00200081],[],0,"CAN_COLLIDE"];
	_this = _item1585;
	_objects pushback _this;
	_objectIDs pushback 1585;
	_this setPosWorld [14684,16713.6,18.8353];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1603 = objNull;
if (_layerRoot) then {
	_item1603 = _item1588 createUnit ["CUP_B_USMC_Pilot",[14772.9,16801,0],[],0,"CAN_COLLIDE"];
	_item1588 selectLeader _item1603;
	_this = _item1603;
	_objects pushback _this;
	_objectIDs pushback 1603;
	_this setPosWorld [14770,16804.3,19.3118];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setDamage [0.046764,false];
	_this setRank "CAPTAIN";
	_this setname "Connor King";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.05;;
};

private _item1604 = objNull;
if (_layerRoot) then {
	_item1604 = _item1588 createUnit ["CUP_B_USMC_Pilot",[14772.9,16801,0],[],0,"CAN_COLLIDE"];
	_this = _item1604;
	_objects pushback _this;
	_objectIDs pushback 1604;
	_this setPosWorld [14769.3,16803.5,19.3118];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setDamage [0.046764,false];
	_this setRank "SERGEANT";
	_this setname "Jacob Nelson";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male02ENG";;
	_this setpitch 1.02;;
};

private _item1605 = objNull;
if (_layerRoot) then {
	_item1605 = _item1588 createUnit ["CUP_B_USMC_Pilot",[14772.9,16801,0],[],0,"CAN_COLLIDE"];
	_this = _item1605;
	_objects pushback _this;
	_objectIDs pushback 1605;
	_this setPosWorld [14771.3,16801.7,18.7282];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setDamage [0.046764,false];
	_this setRank "LIEUTENANT";
	_this setname "Jake Ward";;
	_this setface "WhiteHead_06";;
	_this setspeaker "Male08ENG";;
	_this setpitch 1.04;;
};

private _item1651 = objNull;
if (_layerRoot) then {
	_item1651 = _item1588 createUnit ["CUP_B_USMC_Pilot_des",[14772.9,16801,0],[],0,"CAN_COLLIDE"];
	_this = _item1651;
	_objects pushback _this;
	_objectIDs pushback 1651;
	_this setPosWorld [14772,16802.6,18.7446];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setSkill 1;
	_this setDamage [0.046764,false];
	_this setRank "SERGEANT";
	_this setname "Douglas Cooper";;
	_this setface "AfricanHead_01";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.97;;
};

private _item1650 = objNull;
if (_layerRoot) then {
	_item1650 = _item1588 createUnit ["CUP_B_USMC_Pilot_des",[14772.9,16801,0],[],0,"CAN_COLLIDE"];
	_this = _item1650;
	_objects pushback _this;
	_objectIDs pushback 1650;
	_this setPosWorld [14771,16803.5,19.2228];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setDamage [0.046764,false];
	_this setRank "CORPORAL";
	_this setname "Lewis Walsh";;
	_this setface "Barklem";;
	_this setspeaker "Male11ENG";;
	_this setpitch 0.98;;
};

private _item1606 = objNull;
if (_layerRoot) then {
	_item1606 = _item1588 createUnit ["CUP_B_USMC_Pilot",[14772.9,16801,0],[],0,"CAN_COLLIDE"];
	_this = _item1606;
	_objects pushback _this;
	_objectIDs pushback 1606;
	_this setPosWorld [14770.2,16802.6,19.2225];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setDamage [0.046764,false];
	_this setRank "CORPORAL";
	_this setname "George Patel";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male01ENG";;
	_this setpitch 1.01;;
};

private _item1602 = objNull;
if (_layerRoot) then {
	_item1602 = createVehicle ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[14772.9,16801,0],[],0,"CAN_COLLIDE"];
	_this = _item1602;
	_objects pushback _this;
	_objectIDs pushback 1602;
	_this setPosWorld [14772.9,16801,19.9862];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
	_this setPylonLoadout [1,"CUP_PylonPod_7Rnd_Rocket_FFAR_M"];
	_this setPylonLoadout [2,"CUP_PylonPod_7Rnd_Rocket_FFAR_M"];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item1654 = objNull;
if (_layerRoot) then {
	_item1654 = createVehicle ["HeliH",[14771,16802.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1654;
	_objects pushback _this;
	_objectIDs pushback 1654;
	_this setPosWorld [14771,16802.7,17.91];
	_this setVectorDirAndUp [[-0.754961,0.655769,0],[0,0,1]];
};

private _item1822 = objNull;
if (_layerRoot) then {
	_item1822 = _item1821 createUnit ["CUP_O_RU_Soldier_SL",[14250.5,20097.4,0],[],0,"CAN_COLLIDE"];
	_item1821 selectLeader _item1822;
	_this = _item1822;
	_objects pushback _this;
	_objectIDs pushback 1822;
	_this setPosWorld [14250.5,20097.5,29.1061];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Timofey Zubov";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male01RUS";;
	_this setpitch 1.01;;
};

private _item1823 = objNull;
if (_layerRoot) then {
	_item1823 = _item1821 createUnit ["CUP_O_RU_Soldier_MG",[14253.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1823;
	_objects pushback _this;
	_objectIDs pushback 1823;
	_this setPosWorld [14253.5,20092.5,29.0255];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Valentin Tolstoy";;
	_this setface "RussianHead_4";;
	_this setspeaker "male02rus";;
	_this setpitch 0.986854;;
};

private _item1824 = objNull;
if (_layerRoot) then {
	_item1824 = _item1821 createUnit ["CUP_O_RU_Soldier_AT",[14255.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1824;
	_objects pushback _this;
	_objectIDs pushback 1824;
	_this setPosWorld [14255.5,20092.5,29.0521];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Kiril Vasilyev";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male01rus";;
	_this setpitch 0.983659;;
};

private _item1825 = objNull;
if (_layerRoot) then {
	_item1825 = _item1821 createUnit ["CUP_O_RU_Soldier_LAT",[14257.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1825;
	_objects pushback _this;
	_objectIDs pushback 1825;
	_this setPosWorld [14257.5,20092.5,29.0782];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Maksim Medvedev";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male02rus";;
	_this setpitch 0.975083;;
};

private _item1826 = objNull;
if (_layerRoot) then {
	_item1826 = _item1821 createUnit ["CUP_O_RU_Soldier_GL",[14259.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1826;
	_objects pushback _this;
	_objectIDs pushback 1826;
	_this setPosWorld [14259.5,20092.5,29.0726];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Abram Zykov";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male02rus";;
	_this setpitch 0.955097;;
};

private _item1827 = objNull;
if (_layerRoot) then {
	_item1827 = _item1821 createUnit ["CUP_O_RU_Soldier_Marksman",[14261.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1827;
	_objects pushback _this;
	_objectIDs pushback 1827;
	_this setPosWorld [14261.5,20092.5,29.0673];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Andrey Titov";;
	_this setface "WhiteHead_19";;
	_this setspeaker "male02rus";;
	_this setpitch 1.02172;;
};

private _item1828 = objNull;
if (_layerRoot) then {
	_item1828 = _item1821 createUnit ["CUP_O_RU_Soldier_MG",[14263.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1828;
	_objects pushback _this;
	_objectIDs pushback 1828;
	_this setPosWorld [14263.5,20092.5,29.0619];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Nikolay Sudakov";;
	_this setface "RussianHead_1";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03455;;
};

private _item1829 = objNull;
if (_layerRoot) then {
	_item1829 = _item1821 createUnit ["CUP_O_RU_Soldier_AT",[14265.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1829;
	_objects pushback _this;
	_objectIDs pushback 1829;
	_this setPosWorld [14265.5,20092.5,29.0604];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Pavel Ivanov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04356;;
};

private _item1830 = objNull;
if (_layerRoot) then {
	_item1830 = _item1821 createUnit ["CUP_O_RU_Soldier_AR",[14267.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1830;
	_objects pushback _this;
	_objectIDs pushback 1830;
	_this setPosWorld [14267.5,20092.5,29.0737];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vasil Gorbunov";;
	_this setface "WhiteHead_30";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00836;;
};

private _item1831 = objNull;
if (_layerRoot) then {
	_item1831 = _item1821 createUnit ["CUP_O_RU_Soldier_LAT",[14269.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1831;
	_objects pushback _this;
	_objectIDs pushback 1831;
	_this setPosWorld [14269.5,20092.5,29.087];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Timofey Mamayev";;
	_this setface "RussianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 0.983683;;
};

private _item1832 = objNull;
if (_layerRoot) then {
	_item1832 = _item1821 createUnit ["CUP_O_RU_Soldier_GL",[14271.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1832;
	_objects pushback _this;
	_objectIDs pushback 1832;
	_this setPosWorld [14271.5,20092.5,29.1004];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Aleksander Alekseev";;
	_this setface "RussianHead_1";;
	_this setspeaker "male03rus";;
	_this setpitch 0.970856;;
};

private _item1833 = objNull;
if (_layerRoot) then {
	_item1833 = _item1821 createUnit ["CUP_O_RU_Soldier",[14273.5,20092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1833;
	_objects pushback _this;
	_objectIDs pushback 1833;
	_this setPosWorld [14273.5,20092.5,29.105];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Aleksei Shcherbakov";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male01rus";;
	_this setpitch 1.00011;;
};

private _item1834 = objNull;
if (_layerRoot) then {
	_item1834 = _item1821 createUnit ["CUP_O_RU_Soldier_MG",[14257.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1834;
	_objects pushback _this;
	_objectIDs pushback 1834;
	_this setPosWorld [14257.6,20081.4,28.7145];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Alyosha Petrov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male03rus";;
	_this setpitch 0.98676;;
};

private _item1835 = objNull;
if (_layerRoot) then {
	_item1835 = _item1821 createUnit ["CUP_O_RU_Soldier_AT",[14259.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1835;
	_objects pushback _this;
	_objectIDs pushback 1835;
	_this setPosWorld [14259.6,20081.4,28.7065];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Daniil Zverev";;
	_this setface "LivonianHead_9";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04977;;
};

private _item1836 = objNull;
if (_layerRoot) then {
	_item1836 = _item1821 createUnit ["CUP_O_RU_Soldier_LAT",[14261.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1836;
	_objects pushback _this;
	_objectIDs pushback 1836;
	_this setPosWorld [14261.6,20081.4,28.6974];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Viktor Zverev";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male01rus";;
	_this setpitch 0.960779;;
};

private _item1837 = objNull;
if (_layerRoot) then {
	_item1837 = _item1821 createUnit ["CUP_O_RU_Soldier_GL",[14263.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1837;
	_objects pushback _this;
	_objectIDs pushback 1837;
	_this setPosWorld [14263.6,20081.4,28.684];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Boris Timoshenko";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male03rus";;
	_this setpitch 0.998253;;
};

private _item1838 = objNull;
if (_layerRoot) then {
	_item1838 = _item1821 createUnit ["CUP_O_RU_Soldier_Marksman",[14265.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1838;
	_objects pushback _this;
	_objectIDs pushback 1838;
	_this setPosWorld [14265.6,20081.4,28.6647];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Pavel Shcherbakov";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00641;;
};

private _item1839 = objNull;
if (_layerRoot) then {
	_item1839 = _item1821 createUnit ["CUP_O_RU_Soldier_MG",[14267.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1839;
	_objects pushback _this;
	_objectIDs pushback 1839;
	_this setPosWorld [14267.6,20081.4,28.63];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vasili Yagudin";;
	_this setface "RussianHead_4";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0453;;
};

private _item1840 = objNull;
if (_layerRoot) then {
	_item1840 = _item1821 createUnit ["CUP_O_RU_Soldier_AT",[14269.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1840;
	_objects pushback _this;
	_objectIDs pushback 1840;
	_this setPosWorld [14269.6,20081.4,28.6062];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Timofey Sudakov";;
	_this setface "RussianHead_1";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01668;;
};

private _item1841 = objNull;
if (_layerRoot) then {
	_item1841 = _item1821 createUnit ["CUP_O_RU_Soldier_AR",[14271.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1841;
	_objects pushback _this;
	_objectIDs pushback 1841;
	_this setPosWorld [14271.6,20081.4,28.5955];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Yevgeniy Gusakov";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male01rus";;
	_this setpitch 0.980433;;
};

private _item1842 = objNull;
if (_layerRoot) then {
	_item1842 = _item1821 createUnit ["CUP_O_RU_Soldier_LAT",[14273.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1842;
	_objects pushback _this;
	_objectIDs pushback 1842;
	_this setPosWorld [14273.6,20081.4,28.582];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "German Kamenev";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male02rus";;
	_this setpitch 0.965339;;
};

private _item1843 = objNull;
if (_layerRoot) then {
	_item1843 = _item1821 createUnit ["CUP_O_RU_Soldier_GL",[14275.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1843;
	_objects pushback _this;
	_objectIDs pushback 1843;
	_this setPosWorld [14275.6,20081.4,28.566];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Abram Litvinov";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male03rus";;
	_this setpitch 1.00403;;
};

private _item1844 = objNull;
if (_layerRoot) then {
	_item1844 = _item1821 createUnit ["CUP_O_RU_Soldier",[14277.6,20081.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1844;
	_objects pushback _this;
	_objectIDs pushback 1844;
	_this setPosWorld [14277.6,20081.4,28.535];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Oleg Putin";;
	_this setface "LivonianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 1.00768;;
};

private _item1845 = objNull;
if (_layerRoot) then {
	_item1845 = _item1821 createUnit ["CUP_O_RU_Soldier_GL",[14268.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1845;
	_objects pushback _this;
	_objectIDs pushback 1845;
	_this setPosWorld [14268.3,20072.3,28.2569];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Nikita Yefremov";;
	_this setface "WhiteHead_17";;
	_this setspeaker "male01rus";;
	_this setpitch 1.03999;;
};

private _item1846 = objNull;
if (_layerRoot) then {
	_item1846 = _item1821 createUnit ["CUP_O_RU_Soldier",[14270.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1846;
	_objects pushback _this;
	_objectIDs pushback 1846;
	_this setPosWorld [14270.3,20072.3,28.2198];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Valentin Doronin";;
	_this setface "RussianHead_1";;
	_this setspeaker "Male02RUS";;
	_this setpitch 0.97;;
};

private _item1847 = objNull;
if (_layerRoot) then {
	_item1847 = _item1821 createUnit ["CUP_O_RU_Soldier_MG",[14250.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1847;
	_objects pushback _this;
	_objectIDs pushback 1847;
	_this setPosWorld [14250.3,20072.3,28.3991];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Arkadiy Naryshkin";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male02rus";;
	_this setpitch 1.0107;;
};

private _item1848 = objNull;
if (_layerRoot) then {
	_item1848 = _item1821 createUnit ["CUP_O_RU_Soldier_AT",[14252.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1848;
	_objects pushback _this;
	_objectIDs pushback 1848;
	_this setPosWorld [14252.3,20072.3,28.3831];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Nikita Malyukov";;
	_this setface "RussianHead_3";;
	_this setspeaker "male02rus";;
	_this setpitch 1.04404;;
};

private _item1849 = objNull;
if (_layerRoot) then {
	_item1849 = _item1821 createUnit ["CUP_O_RU_Soldier_LAT",[14254.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1849;
	_objects pushback _this;
	_objectIDs pushback 1849;
	_this setPosWorld [14254.3,20072.3,28.3671];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Daniil Fisenko";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male03rus";;
	_this setpitch 1.04369;;
};

private _item1850 = objNull;
if (_layerRoot) then {
	_item1850 = _item1821 createUnit ["CUP_O_RU_Soldier_GL",[14256.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1850;
	_objects pushback _this;
	_objectIDs pushback 1850;
	_this setPosWorld [14256.3,20072.3,28.3617];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Abram Medvedev";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male01rus";;
	_this setpitch 1.0404;;
};

private _item1851 = objNull;
if (_layerRoot) then {
	_item1851 = _item1821 createUnit ["CUP_O_RU_Soldier_Marksman",[14258.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1851;
	_objects pushback _this;
	_objectIDs pushback 1851;
	_this setPosWorld [14258.3,20072.3,28.3576];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vyacheslav Malyukov";;
	_this setface "WhiteHead_01";;
	_this setspeaker "male03rus";;
	_this setpitch 0.986177;;
};

private _item1852 = objNull;
if (_layerRoot) then {
	_item1852 = _item1821 createUnit ["CUP_O_RU_Soldier_MG",[14260.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1852;
	_objects pushback _this;
	_objectIDs pushback 1852;
	_this setPosWorld [14260.3,20072.3,28.3443];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Abram Litvinov";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01795;;
};

private _item1853 = objNull;
if (_layerRoot) then {
	_item1853 = _item1821 createUnit ["CUP_O_RU_Soldier_AT",[14262.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1853;
	_objects pushback _this;
	_objectIDs pushback 1853;
	_this setPosWorld [14262.3,20072.3,28.3309];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Oleg Doronin";;
	_this setface "RussianHead_1";;
	_this setspeaker "male03rus";;
	_this setpitch 0.960105;;
};

private _item1854 = objNull;
if (_layerRoot) then {
	_item1854 = _item1821 createUnit ["CUP_O_RU_Soldier_AR",[14264.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1854;
	_objects pushback _this;
	_objectIDs pushback 1854;
	_this setPosWorld [14264.3,20072.3,28.322];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vladimir Maksimov";;
	_this setface "RussianHead_2";;
	_this setspeaker "male03rus";;
	_this setpitch 1.01113;;
};

private _item1855 = objNull;
if (_layerRoot) then {
	_item1855 = _item1821 createUnit ["CUP_O_RU_Soldier_LAT",[14266.3,20072.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1855;
	_objects pushback _this;
	_objectIDs pushback 1855;
	_this setPosWorld [14266.3,20072.3,28.2943];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Lev Derevenko";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01548;;
};

private _item1858 = objNull;
if (_layerRoot) then {
	_item1858 = _item1857 createUnit ["CUP_O_RU_Soldier_SL",[13961.8,20120.1,0.443504],[],0,"CAN_COLLIDE"];
	_item1857 selectLeader _item1858;
	_this = _item1858;
	_objects pushback _this;
	_objectIDs pushback 1858;
	_this setPosWorld [13961.8,20120.2,34.0468];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "LIEUTENANT";
	_this setname "Aleksander Yefremov";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male01RUS";;
	_this setpitch 1.01;;
};

private _item1859 = objNull;
if (_layerRoot) then {
	_item1859 = _item1857 createUnit ["CUP_O_RU_Soldier_MG",[13964.8,20115.1,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1859;
	_objects pushback _this;
	_objectIDs pushback 1859;
	_this setPosWorld [13964.8,20115.2,33.6082];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Andrey Medvedev";;
	_this setface "RussianHead_3";;
	_this setspeaker "male01rus";;
	_this setpitch 0.972925;;
};

private _item1860 = objNull;
if (_layerRoot) then {
	_item1860 = _item1857 createUnit ["CUP_O_RU_Soldier_AT",[13966.8,20115.1,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1860;
	_objects pushback _this;
	_objectIDs pushback 1860;
	_this setPosWorld [13966.8,20115.2,33.5492];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Valentin Dobryakov";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male03rus";;
	_this setpitch 0.958212;;
};

private _item1861 = objNull;
if (_layerRoot) then {
	_item1861 = _item1857 createUnit ["CUP_O_RU_Soldier_LAT",[13968.8,20115.1,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1861;
	_objects pushback _this;
	_objectIDs pushback 1861;
	_this setPosWorld [13968.8,20115.2,33.4905];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Valentin Doronin";;
	_this setface "WhiteHead_06";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01982;;
};

private _item1862 = objNull;
if (_layerRoot) then {
	_item1862 = _item1857 createUnit ["CUP_O_RU_Soldier_GL",[13970.8,20115.1,1.07441],[],0,"CAN_COLLIDE"];
	_this = _item1862;
	_objects pushback _this;
	_objectIDs pushback 1862;
	_this setPosWorld [13970.8,20115.2,34.0628];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Fedor Tolstoy";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male01rus";;
	_this setpitch 1.02976;;
};

private _item1863 = objNull;
if (_layerRoot) then {
	_item1863 = _item1857 createUnit ["CUP_O_RU_Soldier_Marksman",[13972.8,20115.1,0.443512],[],0,"CAN_COLLIDE"];
	_this = _item1863;
	_objects pushback _this;
	_objectIDs pushback 1863;
	_this setPosWorld [13972.8,20115.2,33.3751];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Abram Doronin";;
	_this setface "WhiteHead_30";;
	_this setspeaker "male01rus";;
	_this setpitch 0.97635;;
};

private _item1864 = objNull;
if (_layerRoot) then {
	_item1864 = _item1857 createUnit ["CUP_O_RU_Soldier_MG",[13974.8,20115.1,0.443512],[],0,"CAN_COLLIDE"];
	_this = _item1864;
	_objects pushback _this;
	_objectIDs pushback 1864;
	_this setPosWorld [13974.8,20115.2,33.3325];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Ivan Ivanov";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00313;;
};

private _item1865 = objNull;
if (_layerRoot) then {
	_item1865 = _item1857 createUnit ["CUP_O_RU_Soldier_AT",[13976.8,20115.1,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1865;
	_objects pushback _this;
	_objectIDs pushback 1865;
	_this setPosWorld [13976.8,20115.2,33.2898];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Lev Zubov";;
	_this setface "LivonianHead_8";;
	_this setspeaker "male02rus";;
	_this setpitch 0.976002;;
};

private _item1866 = objNull;
if (_layerRoot) then {
	_item1866 = _item1857 createUnit ["CUP_O_RU_Soldier_AR",[13978.8,20115.1,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1866;
	_objects pushback _this;
	_objectIDs pushback 1866;
	_this setPosWorld [13978.8,20115.2,33.2471];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Ivan Chapayev";;
	_this setface "LivonianHead_7";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03585;;
};

private _item1867 = objNull;
if (_layerRoot) then {
	_item1867 = _item1857 createUnit ["CUP_O_RU_Soldier_LAT",[13980.8,20115.1,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1867;
	_objects pushback _this;
	_objectIDs pushback 1867;
	_this setPosWorld [13980.8,20115.2,33.1942];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Kiril Soloveychik";;
	_this setface "RussianHead_2";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00255;;
};

private _item1868 = objNull;
if (_layerRoot) then {
	_item1868 = _item1857 createUnit ["CUP_O_RU_Soldier_GL",[13982.8,20115.1,0.443512],[],0,"CAN_COLLIDE"];
	_this = _item1868;
	_objects pushback _this;
	_objectIDs pushback 1868;
	_this setPosWorld [13982.8,20115.2,33.1302];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Arkadiy Ivanov";;
	_this setface "WhiteHead_18";;
	_this setspeaker "male03rus";;
	_this setpitch 0.960184;;
};

private _item1869 = objNull;
if (_layerRoot) then {
	_item1869 = _item1857 createUnit ["CUP_O_RU_Soldier",[13984.8,20115.1,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1869;
	_objects pushback _this;
	_objectIDs pushback 1869;
	_this setPosWorld [13984.8,20115.2,33.0662];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Pavel Pashinin";;
	_this setface "WhiteHead_03";;
	_this setspeaker "male01rus";;
	_this setpitch 0.969938;;
};

private _item1870 = objNull;
if (_layerRoot) then {
	_item1870 = _item1857 createUnit ["CUP_O_RU_Soldier_MG",[13968.8,20104,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1870;
	_objects pushback _this;
	_objectIDs pushback 1870;
	_this setPosWorld [13968.8,20104.1,33.0133];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Yevgeniy Privalov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male03rus";;
	_this setpitch 0.954978;;
};

private _item1871 = objNull;
if (_layerRoot) then {
	_item1871 = _item1857 createUnit ["CUP_O_RU_Soldier_AT",[13970.8,20104,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1871;
	_objects pushback _this;
	_objectIDs pushback 1871;
	_this setPosWorld [13970.8,20104.1,32.9679];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Vladimir Bulgakov";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male01rus";;
	_this setpitch 1.04674;;
};

private _item1872 = objNull;
if (_layerRoot) then {
	_item1872 = _item1857 createUnit ["CUP_O_RU_Soldier_LAT",[13972.8,20104,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1872;
	_objects pushback _this;
	_objectIDs pushback 1872;
	_this setPosWorld [13972.8,20104.1,32.9244];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Alyosha Alekseev";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male03rus";;
	_this setpitch 1.02029;;
};

private _item1873 = objNull;
if (_layerRoot) then {
	_item1873 = _item1857 createUnit ["CUP_O_RU_Soldier_GL",[13974.8,20104,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1873;
	_objects pushback _this;
	_objectIDs pushback 1873;
	_this setPosWorld [13974.8,20104.1,32.8897];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vitaly Ivanov";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00629;;
};

private _item1874 = objNull;
if (_layerRoot) then {
	_item1874 = _item1857 createUnit ["CUP_O_RU_Soldier_Marksman",[13976.8,20104,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1874;
	_objects pushback _this;
	_objectIDs pushback 1874;
	_this setPosWorld [13976.8,20104.1,32.8527];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Daniil Morozov";;
	_this setface "WhiteHead_14";;
	_this setspeaker "male02rus";;
	_this setpitch 1.01919;;
};

private _item1875 = objNull;
if (_layerRoot) then {
	_item1875 = _item1857 createUnit ["CUP_O_RU_Soldier_MG",[13978.8,20104,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1875;
	_objects pushback _this;
	_objectIDs pushback 1875;
	_this setPosWorld [13978.8,20104.1,32.8127];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Egor Smirnov";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male01rus";;
	_this setpitch 1.01745;;
};

private _item1876 = objNull;
if (_layerRoot) then {
	_item1876 = _item1857 createUnit ["CUP_O_RU_Soldier_AT",[13980.8,20104,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1876;
	_objects pushback _this;
	_objectIDs pushback 1876;
	_this setPosWorld [13980.8,20104.1,32.7682];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Yevgeniy Sudakov";;
	_this setface "LivonianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 1.00796;;
};

private _item1877 = objNull;
if (_layerRoot) then {
	_item1877 = _item1857 createUnit ["CUP_O_RU_Soldier_AR",[13982.8,20104,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1877;
	_objects pushback _this;
	_objectIDs pushback 1877;
	_this setPosWorld [13982.8,20104.1,32.7176];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Vasili Gorbunov";;
	_this setface "Sturrock";;
	_this setspeaker "male01rus";;
	_this setpitch 0.965577;;
};

private _item1878 = objNull;
if (_layerRoot) then {
	_item1878 = _item1857 createUnit ["CUP_O_RU_Soldier_LAT",[13984.8,20104,0.443512],[],0,"CAN_COLLIDE"];
	_this = _item1878;
	_objects pushback _this;
	_objectIDs pushback 1878;
	_this setPosWorld [13984.8,20104.1,32.6688];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Stepan Dobryakov";;
	_this setface "RussianHead_1";;
	_this setspeaker "male03rus";;
	_this setpitch 0.952554;;
};

private _item1879 = objNull;
if (_layerRoot) then {
	_item1879 = _item1857 createUnit ["CUP_O_RU_Soldier_GL",[13986.8,20104,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1879;
	_objects pushback _this;
	_objectIDs pushback 1879;
	_this setPosWorld [13986.8,20104.1,32.6208];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Fyodor Tolstoy";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male02rus";;
	_this setpitch 1.03688;;
};

private _item1880 = objNull;
if (_layerRoot) then {
	_item1880 = _item1857 createUnit ["CUP_O_RU_Soldier",[13988.8,20104,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1880;
	_objects pushback _this;
	_objectIDs pushback 1880;
	_this setPosWorld [13988.8,20104.1,32.5871];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Aleksei Litvinov";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male02rus";;
	_this setpitch 0.965503;;
};

private _item1881 = objNull;
if (_layerRoot) then {
	_item1881 = _item1857 createUnit ["CUP_O_RU_Soldier_GL",[13979.6,20095,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1881;
	_objects pushback _this;
	_objectIDs pushback 1881;
	_this setPosWorld [13979.6,20095,32.4748];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Ivan Privalov";;
	_this setface "LivonianHead_10";;
	_this setspeaker "male01rus";;
	_this setpitch 0.952475;;
};

private _item1882 = objNull;
if (_layerRoot) then {
	_item1882 = _item1857 createUnit ["CUP_O_RU_Soldier",[13981.6,20095,0.443502],[],0,"CAN_COLLIDE"];
	_this = _item1882;
	_objects pushback _this;
	_objectIDs pushback 1882;
	_this setPosWorld [13981.6,20095,32.4272];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	addSwitchableUnit _this;
	_this setSkill 1;
	_this setname "Stepan Pecharov";;
	_this setface "RussianHead_5";;
	_this setspeaker "Male02RUS";;
	_this setpitch 0.97;;
};

private _item1883 = objNull;
if (_layerRoot) then {
	_item1883 = _item1857 createUnit ["CUP_O_RU_Soldier_MG",[13961.6,20095,0.443512],[],0,"CAN_COLLIDE"];
	_this = _item1883;
	_objects pushback _this;
	_objectIDs pushback 1883;
	_this setPosWorld [13961.6,20095,32.7947];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Nikita Zhegalov";;
	_this setface "LivonianHead_3";;
	_this setspeaker "male02rus";;
	_this setpitch 1.00247;;
};

private _item1884 = objNull;
if (_layerRoot) then {
	_item1884 = _item1857 createUnit ["CUP_O_RU_Soldier_AT",[13963.6,20095,0.44352],[],0,"CAN_COLLIDE"];
	_this = _item1884;
	_objects pushback _this;
	_objectIDs pushback 1884;
	_this setPosWorld [13963.6,20095,32.7603];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "SERGEANT";
	_this setname "Roman Zverev";;
	_this setface "LivonianHead_4";;
	_this setspeaker "male03rus";;
	_this setpitch 0.9947;;
};

private _item1885 = objNull;
if (_layerRoot) then {
	_item1885 = _item1857 createUnit ["CUP_O_RU_Soldier_LAT",[13965.6,20095,0.443512],[],0,"CAN_COLLIDE"];
	_this = _item1885;
	_objects pushback _this;
	_objectIDs pushback 1885;
	_this setPosWorld [13965.6,20095,32.725];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Maksim Turchinsky";;
	_this setface "Sturrock";;
	_this setspeaker "male02rus";;
	_this setpitch 0.989247;;
};

private _item1886 = objNull;
if (_layerRoot) then {
	_item1886 = _item1857 createUnit ["CUP_O_RU_Soldier_GL",[13967.6,20095,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1886;
	_objects pushback _this;
	_objectIDs pushback 1886;
	_this setPosWorld [13967.6,20095,32.6824];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vasil Sudakov";;
	_this setface "WhiteHead_02";;
	_this setspeaker "male02rus";;
	_this setpitch 0.965155;;
};

private _item1887 = objNull;
if (_layerRoot) then {
	_item1887 = _item1857 createUnit ["CUP_O_RU_Soldier_Marksman",[13969.6,20095,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1887;
	_objects pushback _this;
	_objectIDs pushback 1887;
	_this setPosWorld [13969.6,20095,32.6397];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Vadim Fisenko";;
	_this setface "LivonianHead_5";;
	_this setspeaker "male03rus";;
	_this setpitch 0.975727;;
};

private _item1888 = objNull;
if (_layerRoot) then {
	_item1888 = _item1857 createUnit ["CUP_O_RU_Soldier_MG",[13971.6,20095,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1888;
	_objects pushback _this;
	_objectIDs pushback 1888;
	_this setPosWorld [13971.6,20095,32.6056];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Kiril Privalov";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male02rus";;
	_this setpitch 0.951144;;
};

private _item1889 = objNull;
if (_layerRoot) then {
	_item1889 = _item1857 createUnit ["CUP_O_RU_Soldier_AT",[13973.6,20095,0.209934],[],0,"CAN_COLLIDE"];
	_this = _item1889;
	_objects pushback _this;
	_objectIDs pushback 1889;
	_this setPosWorld [13973.6,20095,32.3401];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setRank "CORPORAL";
	_this setname "Egor Doronin";;
	_this setface "WhiteHead_30";;
	_this setspeaker "male01rus";;
	_this setpitch 0.980427;;
};

private _item1890 = objNull;
if (_layerRoot) then {
	_item1890 = _item1857 createUnit ["CUP_O_RU_Soldier_AR",[13975.6,20095,0.443504],[],0,"CAN_COLLIDE"];
	_this = _item1890;
	_objects pushback _this;
	_objectIDs pushback 1890;
	_this setPosWorld [13975.6,20095,32.5416];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Filip Putin";;
	_this setface "RussianHead_1";;
	_this setspeaker "male01rus";;
	_this setpitch 0.968366;;
};

private _item1891 = objNull;
if (_layerRoot) then {
	_item1891 = _item1857 createUnit ["CUP_O_RU_Soldier_LAT",[13977.6,20095,0.443508],[],0,"CAN_COLLIDE"];
	_this = _item1891;
	_objects pushback _this;
	_objectIDs pushback 1891;
	_this setPosWorld [13977.6,20095,32.5095];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 1;
	_this setname "Maksim Produnov";;
	_this setface "RussianHead_2";;
	_this setspeaker "male01rus";;
	_this setpitch 1.02596;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item27;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	alpha = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Alpha"]; } else { [_this, "Alpha"] call CBA_fnc_setCallsign; }; ;
};
_this = _item73;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Alpha"]; } else { [_this, "Alpha"] call CBA_fnc_setCallsign; }; ;
};
_this = _item101;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Charlie"]; } else { [_this, "Charlie"] call CBA_fnc_setCallsign; }; ;
};
_this = _item115;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Delta"]; } else { [_this, "Delta"] call CBA_fnc_setCallsign; }; ;
};
_this = _item129;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Echo"]; } else { [_this, "Echo"] call CBA_fnc_setCallsign; }; ;
};
_this = _item87;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Bravo"]; } else { [_this, "Bravo"] call CBA_fnc_setCallsign; }; ;
};
_this = _item841;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Papa Bear"]; } else { [_this, "Papa Bear"] call CBA_fnc_setCallsign; }; ;
	_this setCombatMode "RED";
	_this setSpeedMode "FULL";
};
_this = _item1067;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	bravo = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Bravo"]; } else { [_this, "Bravo"] call CBA_fnc_setCallsign; }; ;
};
_this = _item1163;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	delta = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Delta"]; } else { [_this, "Delta"] call CBA_fnc_setCallsign; }; ;
};
_this = _item1494;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	foxtrot = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Foxtrot"]; } else { [_this, "Foxtrot"] call CBA_fnc_setCallsign; }; ;
};
_this = _item1531;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	charlie = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Charlie"]; } else { [_this, "Charlie"] call CBA_fnc_setCallsign; }; ;
};
_this = _item1546;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	golf = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Golf"]; } else { [_this, "Golf"] call CBA_fnc_setCallsign; }; ;
};
_this = _item1588;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["November"]; } else { [_this, "November"] call CBA_fnc_setCallsign; }; ;
};
_this = _item1821;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	india = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["India"]; } else { [_this, "India"] call CBA_fnc_setCallsign; }; ;
};
_this = _item1857;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hotel = _this;
	 if (isNil 'CBA_fnc_setCallsign') then { _this setGroupID ["Hotel"]; } else { [_this, "Hotel"] call CBA_fnc_setCallsign; }; ;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];

private _item45 = [];
if (_layerRoot) then {
	_item45 = _item27 addWaypoint [[13873.5,19146.1,5.34058e-005],0];
	_this = _item45;
	_waypoints pushback _this;
	_waypointIDs pushback 45;
	_this setWaypointType "GUARD";
	_this setWaypointCombatMode "WHITE";
	_this setWaypointBehaviour "AWARE";
	_this setWaypointFormation "LINE";
	_this setWaypointSpeed "FULL";
};

private _item86 = [];
if (_layerRoot) then {
	_item86 = _item73 addWaypoint [[14059.2,18635.8,0.174269],0];
	_this = _item86;
	_waypoints pushback _this;
	_waypointIDs pushback 86;
	_this setWaypointType "SAD";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item114 = [];
if (_layerRoot) then {
	_item114 = _item101 addWaypoint [[14059.9,18636.1,-6.10352e-005],0];
	_this = _item114;
	_waypoints pushback _this;
	_waypointIDs pushback 114;
	_this setWaypointType "SAD";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item128 = [];
if (_layerRoot) then {
	_item128 = _item115 addWaypoint [[14059.4,18635.8,4.19617e-005],0];
	_this = _item128;
	_waypoints pushback _this;
	_waypointIDs pushback 128;
	_this setWaypointType "SAD";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item142 = [];
if (_layerRoot) then {
	_item142 = _item129 addWaypoint [[14059.7,18636.3,-1.90735e-005],0];
	_this = _item142;
	_waypoints pushback _this;
	_waypointIDs pushback 142;
	_this setWaypointType "SAD";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item100 = [];
if (_layerRoot) then {
	_item100 = _item87 addWaypoint [[14059.7,18636.3,-1.90735e-005],0];
	_this = _item100;
	_waypoints pushback _this;
	_waypointIDs pushback 100;
	_this setWaypointType "SAD";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item1088 = [];
if (_layerRoot) then {
	_item1088 = _item1067 addWaypoint [[13703.8,18920.8,2.67029e-005],0];
	_this = _item1088;
	_waypoints pushback _this;
	_waypointIDs pushback 1088;
	_this setWaypointType "GUARD";
	_this setWaypointCombatMode "WHITE";
	_this setWaypointBehaviour "AWARE";
	_this setWaypointFormation "LINE";
	_this setWaypointSpeed "FULL";
};

private _item1529 = [];
if (_layerRoot) then {
	_item1529 = _item1494 addWaypoint [[14061.2,18639.9,0],0];
	_this = _item1529;
	_waypoints pushback _this;
	_waypointIDs pushback 1529;
	_this setWaypointType "SAD";
	_this setWaypointCombatMode "YELLOW";
	_this setWaypointBehaviour "AWARE";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item1545 = [];
if (_layerRoot) then {
	_item1545 = _item1531 addWaypoint [[14131,19069.8,3.43323e-005],0];
	_this = _item1545;
	_waypoints pushback _this;
	_waypointIDs pushback 1545;
	_this setWaypointType "GUARD";
	_this setWaypointCombatMode "YELLOW";
	_this setWaypointBehaviour "AWARE";
	_this setWaypointFormation "LINE";
	_this setWaypointSpeed "FULL";
};

private _item1582 = [];
if (_layerRoot) then {
	_item1582 = _item1546 addWaypoint [[14060.5,18639.1,-0.000110626],0];
	_this = _item1582;
	_waypoints pushback _this;
	_waypointIDs pushback 1582;
	_this setWaypointType "SAD";
	_this setWaypointCombatMode "YELLOW";
	_this setWaypointBehaviour "AWARE";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item1894 = [];
if (_layerRoot) then {
	_item1894 = _item1821 addWaypoint [[14059.9,18635.8,-9.34601e-005],0];
	_this = _item1894;
	_waypoints pushback _this;
	_waypointIDs pushback 1894;
	_this setWaypointType "SAD";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};

private _item1893 = [];
if (_layerRoot) then {
	_item1893 = _item1857 addWaypoint [[14058.8,18636,-1.90735e-006],0];
	_this = _item1893;
	_waypoints pushback _this;
	_waypointIDs pushback 1893;
	_this setWaypointType "SAD";
	_this setWaypointFormation "WEDGE";
	_this setWaypointSpeed "FULL";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Layers


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item1314 && !isNull _item1313) then {_item1314 moveInTurret [_item1313,[0]];};
if (!isNull _item1355 && !isNull _item1356) then {_item1355 moveInTurret [_item1356,[0]];};
if (!isNull _item1358 && !isNull _item1359) then {_item1358 moveInTurret [_item1359,[0]];};
if (!isNull _item1361 && !isNull _item1362) then {_item1361 moveInTurret [_item1362,[0]];};
if (!isNull _item1364 && !isNull _item1365) then {_item1364 moveInTurret [_item1365,[0]];};
if (!isNull _item1367 && !isNull _item1368) then {_item1367 moveInTurret [_item1368,[0]];};
if (!isNull _item1370 && !isNull _item1371) then {_item1370 moveInTurret [_item1371,[0]];};
if (!isNull _item1373 && !isNull _item1374) then {_item1373 moveInTurret [_item1374,[0]];};
if (!isNull _item1423 && !isNull _item1422) then {_item1423 moveInDriver _item1422;};
if (!isNull _item1424 && !isNull _item1422) then {_item1424 moveInTurret [_item1422,[0]];};
if (!isNull _item1425 && !isNull _item1422) then {_item1425 moveInTurret [_item1422,[1]];};
if (!isNull _item1484 && !isNull _item1485) then {_item1484 moveInTurret [_item1485,[0]];};
if (!isNull _item1584 && !isNull _item1585) then {_item1584 moveInTurret [_item1585,[0]];};
if (!isNull _item1603 && !isNull _item1602) then {_item1603 moveInDriver _item1602;};
if (!isNull _item1650 && !isNull _item1602) then {_item1650 moveInCargo [_item1602,0];};
if (!isNull _item1606 && !isNull _item1602) then {_item1606 moveInCargo [_item1602,1];};
if (!isNull _item1605 && !isNull _item1602) then {_item1605 moveInTurret [_item1602,[0]];};
if (!isNull _item1651 && !isNull _item1602) then {_item1651 moveInTurret [_item1602,[1]];};
if (!isNull _item1604 && !isNull _item1602) then {_item1604 moveInTurret [_item1602,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item27) then {
		this = _item27;
		[delta, "Delta"] execVM "checkCompanyStatus.sqf";[charlie, "Charlie"] execVM "checkCompanyStatus.sqf";[bravo, "Bravo"] execVM "checkCompanyStatus.sqf"; [alpha, "Alpha"] execVM "checkCompanyStatus.sqf";["lose1"] execVM "monitorMission.sqf"; ["lose2"] execVM "monitorMission.sqf"; ["end1"] execVM "monitorMission.sqf";[this] execVM "reviveSystem.sqf"; [this] execVM "huntRemainingEnemies.sqf";;
	};
	if !(isnull _item73) then {
		this = _item73;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item101) then {
		this = _item101;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item115) then {
		this = _item115;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item129) then {
		this = _item129;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item87) then {
		this = _item87;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item841) then {
		this = _item841;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item1067) then {
		this = _item1067;
		[this] execVM "reviveSystem.sqf"; [this] execVM "huntRemainingEnemies.sqf";;
	};
	if !(isnull _item1163) then {
		this = _item1163;
		[this] execVM "reviveSystem.sqf"; [this] execVM "huntRemainingEnemies.sqf";;
	};
	if !(isnull _item1494) then {
		this = _item1494;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item1531) then {
		this = _item1531;
		[this] execVM "reviveSystem.sqf"; [this] execVM "huntRemainingEnemies.sqf";;
	};
	if !(isnull _item1546) then {
		this = _item1546;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item1821) then {
		this = _item1821;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item1857) then {
		this = _item1857;
		[this] execVM "reviveSystem.sqf";;
	};
	if !(isnull _item974) then {
		this = _item974;
		thise addMagazineCargoGlobal ["5Rnd_408_Mag", 20];;
	};
	if !(isnull _item1136) then {
		this = _item1136;
		thise addMagazineCargoGlobal ["5Rnd_408_Mag", 20];;
	};
	if !(isnull _item1313) then {
		this = _item1313;
		[this, alpha, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1356) then {
		this = _item1356;
		[this, alpha, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1359) then {
		this = _item1359;
		[this, charlie, 8, 50, 8, 60, true, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1362) then {
		this = _item1362;
		[this, alpha, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1365) then {
		this = _item1365;
		[this, bravo, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1368) then {
		this = _item1368;
		[this, bravo, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1371) then {
		this = _item1371;
		[this, charlie, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1374) then {
		this = _item1374;
		[this, bravo, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1422) then {
		this = _item1422;
		[this] execVM "manageJeepCrew.sqf";;
	};
	if !(isnull _item1485) then {
		this = _item1485;
		[this, player, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1585) then {
		this = _item1585;
		[this, charlie, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";[this, group papa_bear] execVM "manageGunCrew.sqf";;
	};
	if !(isnull _item1602) then {
		this = _item1602;
		[this] execVM "flyInChopper.sqf";;
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
