//Maya ASCII 2018 scene
//Name: greydude_render.ma
//Last modified: Sun, Sep 22, 2019 11:29:25 AM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "FD3E3434-45E9-FC69-DBA3-379A67493531";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -23.011704603645413 58.817455281770648 50.723368792420942 ;
	setAttr ".r" -type "double3" -25.505266384388975 -23.000000000001716 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3CE64A57-4908-6552-AE7E-5499F366BCAA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 54.26632285191215;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4957F40D-4853-F734-62A2-869A9FEE8F1F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6B606F10-4572-0F36-D697-34A1C5E6A2B5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "01E597BC-444A-A20F-E537-1DA284454B88";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BE9757D0-4D21-44E6-02D4-D5907BCE6E55";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A9D38B79-4173-5CD9-CF71-6F802D1F71B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "88ABCC3A-4D94-5CE0-F052-218D1A54E5BF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "b_root";
	rename -uid "FB6B648F-4699-C5D5-E9DE-59ACA890E766";
	addAttr -s false -ci true -h true -sn "metaParent" -ln "metaParent" -at "message";
	addAttr -s false -ci true -sn "metaRoot" -ln "metaRoot" -at "message";
	addAttr -s false -ci true -sn "metaroot" -ln "metaroot" -at "message";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 0.62355720051753671 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.62355720051753671 1;
	setAttr ".typ" 1;
createNode joint -n "b_pelvis" -p "b_root";
	rename -uid "3812FAA0-4AE0-4B4F-A220-BABE0CA9A043";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 33.48401950703397 -0.82400707524799144 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000071 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 1.2767564783189298e-15 0 -1 0
		 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0 0 33.48401950703397 -0.20044987473045472 1;
	setAttr ".typ" 6;
createNode joint -n "b_spine_1" -p "b_pelvis";
	rename -uid "0626EF2C-4068-C61E-D18D-DCA213F86DE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.1874989585528084 -0.24709526303033252 6.8326265770717055e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.7861264862624218 ;
	setAttr ".bps" -type "matrix" 3.4963002988245176e-16 0.9949051492826616 -0.10081539530669277 0
		 1.2478660800382647e-15 -0.10081539530669277 -0.9949051492826616 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 -5.1302079351729181e-16 35.671518465586779 0.046645388299877799 1;
	setAttr ".typ" 6;
createNode joint -n "b_spine_2" -p "b_spine_1";
	rename -uid "3C73580C-4D66-3C7B-96FE-0F87E67B9DD2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.166896911787056 2.2204460492503131e-15 1.3403963447711082e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.8060489240285209 ;
	setAttr ".bps" -type "matrix" 4.7407223192389056e-16 0.97960270064149046 -0.20094414372132913 0
		 1.2060955312181409e-15 -0.20094414372132913 -0.97960270064149046 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 8.0981186379080452e-16 39.817185659653745 -0.37344197106417376 1;
	setAttr ".typ" 6;
createNode joint -n "b_spine_3" -p "b_spine_2";
	rename -uid "30D3640E-44D8-6987-3B1E-04822BDC5DA3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.1666414259695088 5.3290705182007514e-15 1.6612049582090555e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -11.592175410290947 ;
	setAttr ".bps" -type "matrix" 2.2204460492503121e-16 0.99999999999999989 5.5511151231257827e-17 0
		 1.2767564783189296e-15 5.5511151231257827e-17 -0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 2.6189803684058124e-15 43.898838853138187 -1.2107041645994396 1;
	setAttr ".typ" 6;
createNode joint -n "b_neck_1" -p "b_spine_3";
	rename -uid "7C51DC3A-4280-2742-2068-1C96E01AE434";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.4268688495485335 0.44419936722671771 4.35788593201264e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -19.226507407345899 ;
	setAttr ".bps" -type "matrix" -2.1078052946248593e-16 0.94422412180703352 0.32930351926108542 0
		 1.2786643343368823e-15 0.32930351926108542 -0.94422412180703352 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 6.9936962061810982e-16 52.325707702686721 -1.6549035318261569 1;
	setAttr ".typ" 7;
createNode joint -n "b_neck_2" -p "b_neck_1";
	rename -uid "CB79741E-48E2-90D8-177F-DDB153C827BF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.3647525093435675 7.1054273576010019e-15 -1.5777218104420236e-29 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 7.0288941683348201 ;
	setAttr ".bps" -type "matrix" -5.2726437590591328e-17 0.97742469656079323 0.21128408021675721 0
		 1.2948478035215853e-15 0.21128408021675721 -0.97742469656079323 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 2.0092583465095533e-16 54.55856406411263 -0.87618220831784399 1;
	setAttr ".typ" 7;
createNode joint -n "b_head" -p "b_neck_2";
	rename -uid "874161F3-4151-7FD6-5D63-E9A54E6D0E87";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.3647525093435746 3.5527136788005009e-15 -8.0377113002304247e-16 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 12.197613239011073 ;
	setAttr ".bps" -type "matrix" 2.2204460492503091e-16 0.99999999999999989 1.9428902930940239e-16 0
		 1.2767564783189294e-15 1.9428902930940239e-16 -0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 8.8001198907290415e-16 56.869931567999146 -0.37654764944092178 1;
	setAttr ".typ" 8;
createNode joint -n "b_head_null" -p "b_head";
	rename -uid "537B03FD-4070-F10C-82EE-75B6D6DFA80B";
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.8933599446287417 5.6621374255882984e-15 -2.5994809510141375e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "b_r_clavicle" -p "b_spine_3";
	rename -uid "3FCCD9DB-4D3C-06EB-F3A3-0E8C072E5393";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.7270345176588293 -2.9475104134772048 1.0157244001578878 ;
	setAttr ".ro" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503121e-16 0.99999999999999989 5.5511151231257827e-17 0
		 1.2767564783189296e-15 5.5511151231257827e-17 -0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 -1.0157244001578873 50.625873370797017 1.7368062488777638 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
createNode joint -n "b_r_upperarm" -p "b_r_clavicle";
	rename -uid "C650DBDF-498E-D3D9-82B6-B6BD8D7C43F9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.38489321787606912 3.3960202819283012 6.0389820187717813 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.2330710023343183 -45.000000000000014 -165.85415670807441 ;
	setAttr ".bps" -type "matrix" -0.70643572503081742 -0.6863151205029383 0.17297433847024951 0
		 0.11356351296984409 0.1313133827479398 0.98481476635621235 0 -0.69860711055795233 0.71535190702222229 -0.0148241086591546 0
		 -7.0547064189296638 50.240980152920947 -1.6592140330505449 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
createNode joint -n "b_r_forearm" -p "b_r_upperarm";
	rename -uid "52234507-4BC9-4D0B-4B95-6CB03ED918B2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5064693515020622 -4.4408920985006262e-15 4.2632564145606011e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 27.081292568716602 ;
	setAttr ".bps" -type "matrix" -0.57728289971461155 -0.55128758500599828 0.60235077182265129 0
		 0.4227204262570694 0.42936423667781626 0.79809385004967781 0 -0.69860711055795233 0.71535190702222229 -0.0148241086591546 0
		 -13.770415987741298 43.716546494387352 -0.014838785786778885 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
createNode joint -n "b_r_hand" -p "b_r_forearm";
	rename -uid "9580EBF6-457C-5879-2BDF-35BB7DC8918E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.9303879420593049 1.7763568394002505e-14 -5.6843418860808015e-14 ;
	setAttr ".ro" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 10.819606603100135 0 0 ;
	setAttr ".bps" -type "matrix" -0.57728289971461155 -0.55128758500599828 0.60235077182265129 0
		 0.28406501559137365 0.55601548946623769 0.78112344888032426 0 -0.7655400189501278 0.6220359909939891 -0.16437671761524916 0
		 -19.503059134224259 38.242046907636762 5.9667380556110086 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
createNode joint -n "b_r_hand_null" -p "b_r_hand";
	rename -uid "E424B846-4FC2-185A-146E-0FBB76634CA8";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.1086668382569007 -1.0658141036401503e-14 -2.1316282072803006e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 15;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_index_1" -p "b_r_hand";
	rename -uid "0D02E01E-4517-83BE-90DF-2AA2A9D609DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.3594245991747576 1.0735836816996454 -0.33606199796400915 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.416870112046496 7.4530671391437524 5.1321206331734057 ;
	setAttr ".bps" -type "matrix" -0.44561399206406455 -0.57580852820952311 0.68547261719043917 0
		 -0.8078252787526955 0.58862192010315806 -0.030701045294920681 0 -0.38580628440301135 -0.56742292341361578 -0.72745084844262042 0
		 -20.880161034638022 36.777924331672196 8.8841322120553343 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_index_2" -p "b_r_index_1";
	rename -uid "24F70769-4374-6C57-AC81-5A883EB36565";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.4073773156220097 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -16.281385743159969 ;
	setAttr ".bps" -type "matrix" -0.20126552458818986 -0.7177395706973011 0.66658990186432787 0
		 -0.9003586504984461 0.40358534988277206 0.16270576459553254 0 -0.38580628440301135 -0.56742292341361578 -0.72745084844262042 0
		 -21.507308058592749 35.967544470928409 9.8488508239692063 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_index_3" -p "b_r_index_2";
	rename -uid "E0E1F1C7-445B-DDD8-458B-5380EB5C7226";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.1210397651283888 0 -1.0658141036401503e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.6558199176304145 ;
	setAttr ".bps" -type "matrix" -0.09555309698748074 -0.75967974578946007 0.64323890545687779 0
		 -0.91761817580693306 0.3176757935726407 0.23887020242539467 0 -0.38580628440301135 -0.56742292341361578 -0.72745084844262042 0
		 -21.732934715005531 35.162929871170562 10.596124610992156 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_index_null" -p "b_r_index_3";
	rename -uid "4F9E8362-4875-5C74-DED8-79A43B93D188";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.89374171599886765 2.8421709430404007e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_middle_1" -p "b_r_hand";
	rename -uid "8252A546-434C-DB20-241B-3BB395275B48";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.5399536409167913 0.065476067986530495 -0.12241028202701898 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.202869958252265 10.467906665188192 0.25793685603992511 ;
	setAttr ".bps" -type "matrix" -0.42732485925726937 -0.65265993793296428 0.62564244587311524 0
		 -0.85845871460578138 0.50999790149081192 -0.054321043734058161 0 -0.28362316544694366 -0.56030094225541627 -0.7782163928686856 0
		 -21.43430440701189 36.250776520803882 8.1702981558403618 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_middle_2" -p "b_r_middle_1";
	rename -uid "CD1F03CF-4632-7263-EFCC-6DB003D731AE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.6157948563129905 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -16.282173260269527 ;
	setAttr ".bps" -type "matrix" -0.16950154815487595 -0.7694705510260158 0.61577942177115641 0
		 -0.94383638687802018 0.30655819221056924 0.12326779625527363 0 -0.28362316544694366 -0.56030094225541627 -0.7782163928686856 0
		 -22.124773716574452 35.196211950170238 9.1812080017732232 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_middle_3" -p "b_r_middle_2";
	rename -uid "26D40217-4738-A113-1B3D-B0897E06B886";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.1943441408836115 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -5.702773678181841 ;
	setAttr ".bps" -type "matrix" -0.074875585774294484 -0.79612430711381021 0.60048291755678762 0
		 -0.95600813107254046 0.22858027414947338 0.18384643481160995 0 -0.28362316544694366 -0.56030094225541627 -0.7782163928686856 0
		 -22.327216897483929 34.27719930596983 9.9166605462423014 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_middle_null" -p "b_r_middle_3";
	rename -uid "492F7CA2-4AA0-65B2-4DC0-048EB64BF7FB";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.0103167224334904 -2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_ring_1" -p "b_r_hand";
	rename -uid "AAAA4BF4-4A73-B479-85D6-3A8B1948B835";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.3255625310000401 -0.77849309258813193 -0.13002525449313396 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 96.504456545552273 12.678748990748534 -6.949805394963505 ;
	setAttr ".bps" -type "matrix" -0.42457791979283521 -0.73605761956308047 0.52721226342671512 0
		 -0.89855486829845321 0.41398723213725119 -0.14564930581532759 0 -0.11105286435539617 -0.53556862521106374 -0.83715799524820445 0
		 -21.54445263199738 35.89497096518096 7.3831671280320901 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_ring_2" -p "b_r_ring_1";
	rename -uid "398A78FA-41C5-570A-69EB-BEB4A89D3C2A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.6409867323606093 0 -1.7763568394002505e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -23.548708885576858 ;
	setAttr ".bps" -type "matrix" -0.030221071395025056 -0.84015901290384187 0.54149747910787061 0
		 -0.99335489537334976 0.085434657639467226 0.077116607237534801 0 -0.11105286435539617 -0.53556862521106374 -0.83715799524820445 0
		 -22.241179365230689 34.687110177225023 8.2483154574531508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_ring_3" -p "b_r_ring_2";
	rename -uid "455379BD-45B8-6879-04A1-EDAB0A43372E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.0974137147091731 -1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.0219262304053753 ;
	setAttr ".bps" -type "matrix" 0.039525500087184071 -0.84408217349800296 0.53475510210351895 0
		 -0.99302819504851925 0.026296997403088232 0.11490636086075456 0 -0.11105286435539617 -0.53556862521106374 -0.83715799524820445 0
		 -22.274344383452782 33.765108153927827 8.8425622175065737 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_ring_null" -p "b_r_ring_3";
	rename -uid "B166D7BE-45B2-E049-C91F-1B83727F1E29";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.8548833805206506 -3.5527136788005009e-15 1.7763568394002505e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_pinky_1" -p "b_r_hand";
	rename -uid "039A9D57-4F7E-245A-F42D-6EBCF4717F8D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.0330581835169852 -1.4502289233100569 -0.32838576490999571 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 106.97686797111643 13.378689967210276 -20.298827654301252 ;
	setAttr ".bps" -type "matrix" -0.44547514100432184 -0.83460545105424466 0.32401487592041256 0
		 -0.87325516465091357 0.32524851051906678 -0.36282064965439054 0 0.19742673617746212 -0.44457524388529457 -0.87371364666385143 0
		 -21.414558614427058 35.559342077126558 6.714874149341 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_pinky_2" -p "b_r_pinky_1";
	rename -uid "4BFB2CA5-4590-70DA-055D-D698C1E84C38";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.0093057806204726 -1.0658141036401503e-14 -7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -17.797856345110326 ;
	setAttr ".bps" -type "matrix" -0.15723617431623943 -0.89407728258871688 0.41940743704084288 0
		 -0.96762568657963377 0.054577149825786209 -0.24641807033613772 0 0.19742673617746212 -0.44457524388529457 -0.87371364666385143 0
		 -21.864179249365431 34.716969970840154 7.0419042366145082 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_pinky_3" -p "b_r_pinky_2";
	rename -uid "7DEA32E1-4805-0F65-A3F8-D7B03C860D14";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.85142558273337698 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -8.4908725875022686 ;
	setAttr ".bps" -type "matrix" -0.012641042875605468 -0.89233607420829042 0.45119456413121045 0
		 -0.98023613883458283 -0.078033218508958474 -0.18179089342373922 0 0.19742673617746212 -0.44457524388529457 -0.87371364666385143 0
		 -21.998054150709407 33.955729699503387 7.3989984580997223 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_pinky_null" -p "b_r_pinky_3";
	rename -uid "5E93B13B-464D-AF78-18C0-CA9FCF2D39C1";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.839340046329351 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_thumb_1" -p "b_r_hand";
	rename -uid "E5BD2ACE-48BB-E190-9DF3-668BAE599949";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.64318515294614986 0.94084583893302209 -0.83023109022089159 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 22.196736025371351 29.555961623857005 51.834215874026143 ;
	setAttr ".bps" -type "matrix" 0.26159122640640287 -0.22289810196749449 0.93908810364442485 0
		 0.30633059344058233 0.94183700204220322 0.13821949611576234 0 -0.91527678752906994 0.25151440858019042 0.31465680429163179 0
		 -18.971522411924123 37.894158158644409 7.2255485369576959 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_thumb_2" -p "b_r_thumb_1";
	rename -uid "E8723325-4C03-A036-F80F-05B9AF5D493E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.7095858533496591 2.1316282072803006e-14 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -14.956187580194912 ;
	setAttr ".bps" -type "matrix" 0.17367151151338994 -0.45841671140173851 0.87160330701315558 0
		 0.36346472772350241 0.85240519765201572 0.37589728745590606 0 -0.91527678752906994 0.25151440858019042 0.31465680429163179 0
		 -18.524309751899331 37.513094716782305 8.8310002739971623 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_thumb_3" -p "b_r_thumb_2";
	rename -uid "0215380E-4576-FF0F-234E-3E8DC59961DE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.298155093448722 -1.7763568394002505e-14 7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.0513299440477422 ;
	setAttr ".bps" -type "matrix" 0.11432892083687236 -0.58680815953799015 0.80161404788084423 0
		 0.38626066337480114 0.76967310345119466 0.5083365162498803 0 -0.91527678752906994 0.25151440858019042 0.31465680429163179 0
		 -18.298857194641297 36.917998727954114 9.9624765464630354 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_thumb_null" -p "b_r_thumb_3";
	rename -uid "32DEDC07-49D2-915A-0724-2ABB514F9D80";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.1268917288681273 2.1316282072803006e-14 -2.4868995751603507e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_grip" -p "b_r_hand";
	rename -uid "F1BD37B2-4B96-AD79-634A-7CB72DE498E6";
	setAttr ".t" -type "double3" 2.7200834834747818 -7.1054273576010019e-15 -1.3989000772156075 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_clavicle" -p "b_spine_3";
	rename -uid "795F74C1-42A2-7316-A26C-07847995F1CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.727055242521466 -2.9475085554664622 -1.0157258027320542 ;
	setAttr ".ro" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 180 ;
	setAttr ".bps" -type "matrix" -2.2204460492503106e-16 -0.99999999999999989 -1.7797583114599312e-16 0
		 -1.2767564783189296e-15 -1.7797583114599312e-16 0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 1.0157258027320546 50.625894095659653 1.7368043908670239 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
createNode joint -n "b_l_upperarm" -p "b_l_clavicle";
	rename -uid "27F0CA24-4EFF-FAED-7893-028F8C6B284C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.38493067124716163 -3.3960164574511653 -6.0389816883358733 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.2330710023341833 -44.999999999999986 -165.85415670807453 ;
	setAttr ".bps" -type "matrix" -0.7064357250308182 0.68631512050293764 -0.17297433847024948 0
		 0.11356351296984458 -0.13131338274793919 -0.98481476635621235 0 -0.69860711055795188 -0.71535190702222307 0.014824108659153906 0
		 7.0547074910679326 50.240963424412492 -1.659212066584133 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
createNode joint -n "b_l_forearm" -p "b_l_upperarm";
	rename -uid "D4A5411A-4F49-975A-BBC9-B6ADF8F8028E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.5064618489744248 8.5638105407070952e-07 -3.4453731011296895e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 27.081292568716567 ;
	setAttr ".bps" -type "matrix" -0.57728289971461222 0.55128758500599828 -0.60235077182265084 0
		 0.42272042625706979 -0.42936423667781504 -0.79809385004967837 0 -0.69860711055795188 -0.71535190702222307 0.014824108659153906 0
		 13.770435926701104 43.716559449064917 -0.014839471187676923 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
createNode joint -n "b_l_hand" -p "b_l_forearm";
	rename -uid "2AD4D8F8-4126-F720-C4DB-3782F1DCB890";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.9303865363858463 4.2160500832721937e-06 1.8096315052673617e-05 ;
	setAttr ".ro" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 10.819606603100077 0 0 ;
	setAttr ".bps" -type "matrix" -0.57728289971461222 0.55128758500599828 -0.60235077182265084 0
		 0.28406501559137487 -0.55601548946623591 -0.78112344888032526 0 -0.76554001895012724 -0.62203599099399076 0.16437671761524775 0
		 19.503067401708989 38.242045881790077 5.9667334269596966 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
createNode joint -n "b_l_hand_null" -p "b_l_hand";
	rename -uid "A47B1772-4724-A06D-81CA-E18AEF3F92BE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.1086691468716099 -8.5960498132919838e-06 -3.0563295993601969e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.57728289971461222 0.55128758500599828 -0.60235077182265084 0
		 0.28406501559137487 -0.55601548946623591 -0.78112344888032526 0 -0.76554001895012724 -0.62203599099399076 0.16437671761524775 0
		 21.297669896657553 36.528298966235525 7.839244377600874 1;
	setAttr ".sd" 1;
	setAttr ".typ" 15;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_index_1" -p "b_l_hand";
	rename -uid "5EECA3EE-4F28-3E8D-3DA3-7086C090A88D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.3594136650734985 -1.0735953319779341 0.33602631256795235 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.416870112046624 7.4530671391438164 5.1321206331734057 ;
	setAttr ".bps" -type "matrix" -0.44561399206406438 0.575808528209524 -0.68547261719043884 0
		 -0.80782527875269627 -0.58862192010315784 0.030701045294920154 0 -0.38580628440301096 0.56742292341361533 0.72745084844262142 0
		 20.880186999215361 36.777958008995675 8.8841242316969762 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_index_2" -p "b_l_index_1";
	rename -uid "1E1A6B06-430B-9CDA-864B-6E9A0F84FDD3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.4073569945308773 3.5299465039884126e-05 -2.0295290070748706e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -16.281385743159941 ;
	setAttr ".bps" -type "matrix" -0.20126552458818989 0.71773957069730177 -0.66658990186432743 0
		 -0.90035865049844677 -0.40358534988277195 -0.16270576459553265 0 -0.38580628440301096 0.56742292341361533 0.72745084844262142 0
		 21.507296530307869 35.967568956110455 9.8488298501515423 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_index_3" -p "b_l_index_2";
	rename -uid "B8F837B9-4154-0D49-18F1-B28B5BCB3D78";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.121076991903978 2.0321479937024378e-05 -1.0521724622236661e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793320840184e-06 -1.1848489498583662e-23 -6.6558199176303523 ;
	setAttr ".bps" -type "matrix" -0.095553096987481698 0.7596797457894604 -0.64323890545687756 0
		 -0.91761818576442689 -0.31767577892770055 -0.23887018365020166 0 -0.38580626071968188 0.5674229316126902 0.72745085460775805 0
		 21.732916441914401 35.162913465503337 10.596117491707735 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_index_null" -p "b_l_index_3";
	rename -uid "9C006FB2-4EFA-4DF4-B0BA-9AAC12140CC8";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.89372216671991822 8.4747624384817755e-07 4.539333680497748e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4787793334710986e-06 0 0 ;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_middle_1" -p "b_l_hand";
	rename -uid "BF177B02-4240-2CDA-EE46-328E9EEB3F1E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.5399291734525002 -0.065473529955536236 0.12244503430864739 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.202869958252364 10.467906665188247 0.25793685603994143 ;
	setAttr ".bps" -type "matrix" -0.42732485925726926 0.65265993793296484 -0.62564244587311479 0
		 -0.85845871460578194 -0.50999790149081192 0.054321043734057661 0 -0.28362316544694355 0.5603009422554156 0.77821639286868649 0
		 21.434272666551365 36.250765955212003 8.1702825191435089 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_middle_2" -p "b_l_middle_1";
	rename -uid "497CE0D6-4736-DB18-4241-8ABAB00C0818";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.615789659194494 -2.8246351256200342e-05 4.1310836671470952e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -16.282173260269499 ;
	setAttr ".bps" -type "matrix" -0.16950154815487617 0.76947055102601614 -0.61577942177115597 0
		 -0.94383638687802063 -0.30655819221056946 -0.12326779625527366 0 -0.28362316544694355 0.5603009422554156 0.77821639286868649 0
		 22.124762831911369 35.196221496759335 9.1811907940441877 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_middle_3" -p "b_l_middle_2";
	rename -uid "8900467E-4733-CE71-CBC9-BF9C0CAFB4BD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1943516114222525 -5.6210965269087865e-05 1.2883284696840747e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -5.702773678181841 ;
	setAttr ".bps" -type "matrix" -0.074875585774294651 0.79612430711381055 -0.60048291755678718 0
		 -0.9560081310725409 -0.22858027414947357 -0.18384643481160995 0 -0.28362316544694355 0.5603009422554156 0.77821639286868649 0
		 22.327256679045085 34.277227554647894 9.9166648937023893 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_middle_null" -p "b_l_middle_3";
	rename -uid "7BEA7FB9-4FCE-98A8-ED50-CD9F8C7F3D72";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0103528884202078 7.9772177439707548e-05 -1.9230759637167694e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_ring_1" -p "b_l_hand";
	rename -uid "57BA545D-4DBD-97B3-7243-97A0D5711A4C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.3255316461622524 0.77849309848210169 0.13005265201387317 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 96.504456545552429 12.678748990748588 -6.9498053949634766 ;
	setAttr ".bps" -type "matrix" -0.42457791979283516 0.73605761956308102 -0.52721226342671479 0
		 -0.89855486829845366 -0.41398723213725103 0.14564930581532787 0 -0.11105286435539531 0.53556862521106352 0.837157995248205 0
		 21.544422097969122 35.894969920240811 7.3831483947855086 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_ring_2" -p "b_l_ring_1";
	rename -uid "CD89948F-441C-DBA1-6845-778341AAA715";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.6410189927500625 -2.4733659287790033e-05 8.8657631671651416e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -23.548708885576858 ;
	setAttr ".bps" -type "matrix" -0.030221071395024834 0.84015901290384221 -0.54149747910787038 0
		 -0.99335489537335009 -0.085434657639466838 -0.077116607237534412 0 -0.11105286435539531 0.53556862521106352 0.837157995248205 0
		 22.241183768233046 34.687100374423139 8.2483175518837104 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_ring_3" -p "b_l_ring_2";
	rename -uid "B5FA226A-419F-B70D-7156-46A789E7D926";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0973842133967047 1.0479303810484453e-05 -2.7175386101419008e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.0219262304053522 ;
	setAttr ".bps" -type "matrix" 0.039525500087183918 0.8440821734980033 -0.53475510210351884 0
		 -0.99302819504851958 -0.026296997403088156 -0.11490636086075394 0 -0.11105286435539531 0.53556862521106352 0.837157995248205 0
		 22.274337787016588 33.765120786195354 8.8425452539132685 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_ring_null" -p "b_l_ring_3";
	rename -uid "C1C44212-4375-8B77-C42B-328AB9D72FA2";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.85485976203911562 2.0069450144433176e-05 1.1706883995543649e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_pinky_1" -p "b_l_hand";
	rename -uid "3B3D8C28-4B8E-BB0C-A59B-FE8732B1C606";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.0330033285376023 1.4502246368264089 0.32838526818842695 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 106.97686797111656 13.378689967210374 -20.298827654301196 ;
	setAttr ".bps" -type "matrix" -0.4454751410043214 0.83460545105424488 -0.32401487592041256 0
		 -0.87325516465091391 -0.32524851051906661 0.36282064965439087 0 0.19742673617746268 0.44457524388529457 0.87371364666385165 0
		 21.414534377690426 35.559373984478981 6.7148397453739452 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_pinky_2" -p "b_l_pinky_1";
	rename -uid "F9ECA94D-4ABC-D2CB-3681-42B0AE8445B5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0093629804949451 3.6073854758456037e-05 -7.5383557422981085e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -17.797856345110294 ;
	setAttr ".bps" -type "matrix" -0.15723617431623943 0.89407728258871699 -0.41940743704084288 0
		 -0.96762568657963399 -0.054577149825786431 0.24641807033613827 0 0.19742673617746268 0.44457524388529457 0.87371364666385165 0
		 21.864147503798009 34.716939054531672 7.0418948682328057 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_pinky_3" -p "b_l_pinky_2";
	rename -uid "6EA5B9A5-4198-A5C7-4BE4-98976CBA60C7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.85141620157257591 -5.0279443826184433e-06 5.9104069443094431e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -8.4908725875022881 ;
	setAttr ".bps" -type "matrix" -0.012641042875605135 0.89233607420829064 -0.45119456413121062 0
		 -0.98023613883458305 0.078033218508958557 0.18179089342373964 0 0.19742673617746268 0.44457524388529457 0.87371364666385165 0
		 21.998026962124634 33.955710072709138 7.3989890802162614 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_pinky_null" -p "b_l_pinky_3";
	rename -uid "4C8427D2-4845-CA2B-AF0F-12A403883C68";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.83935924441360754 -2.6759839109047334e-05 1.6680144355518678e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_thumb_1" -p "b_l_hand";
	rename -uid "7CD51A27-43FA-95BC-6790-0780C4A3F326";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.64316065421993507 -0.94084911793360604 0.83022919549843976 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 22.196736025371184 29.555961623856962 51.834215874026221 ;
	setAttr ".bps" -type "matrix" 0.26159122640640314 0.22289810196749504 -0.93908810364442497 0
		 0.30633059344058672 -0.941837002042202 -0.13821949611576143 0 -0.91527678752906882 -0.25151440858019486 -0.3146568042916329 0
		 18.971517055749654 37.894173640402002 7.2255314013357275 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_thumb_2" -p "b_l_thumb_1";
	rename -uid "7DAB9890-45DE-90AD-E7D2-9BAEDFE4393A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7096142884861409 3.6072411852217101e-05 -3.8353554778325361e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -14.956187580194888 ;
	setAttr ".bps" -type "matrix" 0.17367151151338922 0.45841671140173834 -0.87160330701315614 0
		 0.36346472772350663 -0.8524051976520145 -0.37589728745590478 0 -0.91527678752906882 -0.25151440858019486 -0.3146568042916329 0
		 18.524343111544393 37.51307953254134 8.8310169237699796 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_thumb_3" -p "b_l_thumb_2";
	rename -uid "94F459A4-44FB-ACDB-03D0-64BC93055814";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.2981166353243765 -3.2277310737072185e-05 1.3366436011352789e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.0513299440477866 ;
	setAttr ".bps" -type "matrix" 0.1143289208368707 0.58680815953799048 -0.80161404788084456 0
		 0.3862606633748053 -0.769673103451193 -0.50833651624987974 0 -0.91527678752906882 -0.25151440858019486 -0.3146568042916329 0
		 18.298873267714363 36.918025325056242 9.9624676031210093 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_thumb_null" -p "b_l_thumb_3";
	rename -uid "A346D984-46D0-95F2-774F-77902C5326F6";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1269013996573953 9.5085762197300028e-06 -3.022981939437841e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.5;
createNode joint -n "b_l_grip" -p "b_l_hand";
	rename -uid "BDE00C13-4B6D-DE51-7429-AF929504109D";
	setAttr ".t" -type "double3" -2.7200542653638022 3.5094748973563128e-06 1.398930480343445 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 89.999999999999901 0 ;
	setAttr ".sd" 1;
	setAttr ".radi" 0.5;
createNode joint -n "b_r_thigh" -p "b_pelvis";
	rename -uid "AB791A91-4AD4-1C52-C12E-5E80E55C61CC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.94882195974353323 -1.5942193636958359 3.4659552980152779 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.0087981919544013 190.58862418528878 2.2600515323855523 ;
	setAttr ".bps" -type "matrix" -0.18375618967478891 -0.98220723152406264 0.038763605328179254 0
		 0.10289865170247939 -0.058439300674464213 -0.99297367317290519 0 0.9775712404904382 -0.17847633590623552 0.11180638303545001 0
		 -3.4659552980152801 32.535197547290437 1.3937694889653764 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
createNode joint -n "b_r_calf" -p "b_r_thigh";
	rename -uid "2391EB74-4FB4-D72C-70B2-3FA13581B136";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.837822133939071 1.0658141036401503e-14 1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 20.765924564527143 ;
	setAttr ".bps" -type "matrix" -0.1353359689296548 -0.93911952025366685 -0.31581434766709632 0
		 0.16136494439579083 0.29359959843297917 -0.9422105022340479 0 0.9775712404904382 -0.17847633590623552 0.11180638303545001 0
		 -6.1924969564201664 17.961381347267682 1.9689369700951027 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
createNode joint -n "b_r_foot" -p "b_r_calf";
	rename -uid "B5E652D9-49A8-BC87-CAB5-B8BFB3B03837";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.499555509645383 1.1990408665951691e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 -10 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -57.934940716175419 -77.842190342362386 129.98639191133395 ;
	setAttr ".bps" -type "matrix" 0.9848077530122078 5.5511151231257827e-17 0.17364817766693039 0
		 -2.7755575615628914e-17 0.99999999999999967 -5.2041704279304213e-17 0 -0.17364817766693036 -4.6837533851373792e-17 0.98480775301220813 0
		 -8.2901443192969886 3.4054462129044349 -2.9260450423135143 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
createNode joint -n "b_r_toe" -p "b_r_foot";
	rename -uid "3511C7EC-4671-5990-E7B1-7590AF1A0A6E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -2.2912702401097511 5.0369993203804482 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.9848077530122078 5.5511151231257827e-17 0.17364817766693039 0
		 -2.7755575615628914e-17 0.99999999999999967 -5.2041704279304213e-17 0 -0.17364817766693036 -4.6837533851373792e-17 0.98480775301220813 0
		 -9.1648100721906189 1.1141759727946843 2.0344309403143748 1;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
createNode joint -n "b_r_ball_contact" -p "b_r_toe";
	rename -uid "087DBBA5-4776-395E-2329-F59905302496";
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -1.1141759727946856 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ball Contact";
createNode joint -n "b_r_toe_contact" -p "b_r_toe";
	rename -uid "56362255-494F-3EBA-CF35-C88FAFA0535F";
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -1.1141759727946863 2.8952413510949899 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toe Contact";
createNode joint -n "b_r_heel_contact" -p "b_r_foot";
	rename -uid "9FA085D4-40F8-2A4F-4B02-589864184EEA";
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -3.4054462129044354 -2.9805120508347676 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Heel Contact";
createNode joint -n "b_cog_null" -p "b_pelvis";
	rename -uid "6E69AC76-43BD-4FB6-403E-2D92C4AEE054";
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.278151468421008 -1.1706587361717662 -1.2639627227763199e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 89.999999999999957 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Center Of Gravity";
createNode joint -n "b_l_thigh" -p "b_pelvis";
	rename -uid "462CCB10-4F97-DE48-C128-1EA4799242DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.94885664326833563 -1.594220651662924 -3.465953689644846 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -173.99120180804545 -10.588624185288813 2.2600515323854524 ;
	setAttr ".bps" -type "matrix" -0.18375618967478888 0.98220723152406297 -0.038763605328178019 0
		 0.10289865170247961 0.058439300674462985 0.99297367317290519 0 0.97757124049043864 0.1784763359062356 -0.11180638303544987 0
		 3.4659536896448437 32.535162863765635 1.3937707769324739 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
createNode joint -n "b_l_calf" -p "b_l_thigh";
	rename -uid "D427101A-4C7D-688C-BCD2-FB818527A9D9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -14.837822051067878 -1.5246487432563072e-06 -6.4777036712371228e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4527506260904258e-06 0 20.765924564527072 ;
	setAttr ".bps" -type "matrix" -0.13533596892965491 0.93911952025366707 0.31581434766709637 0
		 0.16136496918238491 -0.29359959390766138 0.94221049939916524 0 0.97757123639898469 0.17847634335053605 -0.11180640692546248 0
		 6.1924945426956564 17.961346540428472 1.9689368133386049 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
createNode joint -n "b_l_foot" -p "b_l_calf";
	rename -uid "833772BE-46BA-2903-45CA-318CBA361D58";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -15.499521895687625 -1.2469471079690209e-05 2.0261224129569655e-06 ;
	setAttr ".r" -type "double3" 0 10 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 122.0650637165097 -77.842189229269053 129.98638757806842 ;
	setAttr ".bps" -type "matrix" 0.98480775301220835 8.3266726846886741e-17 -0.17364817766693053 0
		 -1.6653345369377348e-16 1 3.3653635433950058e-16 0 0.17364817766693028 -3.0010716134398763e-16 0.98480775301220824 0
		 8.2901373249381187 3.4054469962356659 -2.9260465586998992 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
createNode joint -n "b_l_toe" -p "b_l_foot";
	rename -uid "267B4319-4B32-BFC3-4CFB-01B2E90299DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 -2.2912739798056236 5.0370016331958816 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 0 ;
	setAttr ".bps" -type "matrix" 0.98480775301220835 8.3266726846886741e-17 -0.17364817766693053 0
		 1.8779922218953118e-16 -1 -2.1593218808931076e-16 0 -0.17364817766693028 1.7764248142925231e-16 -0.98480775301220824 0
		 9.1648034794479347 1.114173016430041 2.0344317016065592 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
createNode joint -n "b_l_ball_contact" -p "b_l_toe";
	rename -uid "CC91288E-44DE-7A5B-55E2-39BF1FBACFEC";
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 1.1141730164300407 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ball Contact";
createNode joint -n "b_l_toe_contact" -p "b_l_toe";
	rename -uid "E05E016E-48F4-6000-CE56-FA963B131BD8";
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 1.114173016430041 -2.8952436479764816 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toe Contact";
createNode joint -n "b_l_heel_contact" -p "b_l_foot";
	rename -uid "0E9ED155-4141-1C44-48F2-D7B6FA95A8EF";
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -3.4054469962356646 -2.9805120478497469 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Heel Contact";
createNode joint -n "b_aim" -p "b_root";
	rename -uid "69C56298-4B3F-DE33-381C-82A8320E8940";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "group_skins";
	rename -uid "740C9171-49D6-4F91-5AF0-24882EE02EDC";
	addAttr -ci true -sn "meta_parent" -ln "meta_parent" -dt "string";
	setAttr ".it" no;
createNode transform -n "greydude_mesh" -p "group_skins";
	rename -uid "E8BB55CC-4C26-4FB3-52F6-26B8E79974AE";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "greydude_meshShape" -p "greydude_mesh";
	rename -uid "3C7C5475-4E16-03BD-126C-B2BD47917981";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr -av ".iog[0].og[5].gid";
	setAttr -av ".iog[0].og[6].gid";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ugsdt" no;
	setAttr ".vnm" 0;
	setAttr ".vcs" 2;
createNode mesh -n "greydude_meshShapeOrig2" -p "greydude_mesh";
	rename -uid "5B034C41-4C9E-31A3-41C0-5E833F366109";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8770 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 1 0 1 1 0 1 1 1 1 1 0.5
		 1 0.25 0.25 1 0.25 0.5 0.5 1 0.5 1 0.5 0 0.5 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[250:499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[500:749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[750:999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[1000:1249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[1250:1499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[1500:1749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1 1 1 1 1 1 1 1
		 0 1 0.25 0.25 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[1750:1999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1 0.25 1 1 0
		 1 1 1 1 1 1 0.25 0.25 0.25 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1 1 1 1 1 1 1 1 1 1 0.25 0.25
		 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1;
	setAttr ".uvst[0].uvsp[2000:2249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1 1 1 1 1 1 1 1 0 1 0.25 0.25 1 1 1 1
		 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[2250:2499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[2500:2749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0 1 0.5 0.5 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[2750:2999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 0.25 0.25 1 0.25 1 1 0 1 1 1 1 1 1 0.25 0.25 0.25 1 1 0 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1
		 1 1 1 1 1 1 1 1 1 0.25 0.25 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1;
	setAttr ".uvst[0].uvsp[3000:3249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1 1 1 1 1 1 1 1 0 1 0.25 0.25 1 1 1 1 1
		 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[3250:3499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0 0.5 1 1 1 1 0 0.5 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[3500:3749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[3750:3999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[4000:4249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[4250:4499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 1 1
		 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.5 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 0.5 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1;
	setAttr ".uvst[0].uvsp[4500:4749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[4750:4999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[5000:5249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[5250:5499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[5500:5749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[5750:5999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25
		 0.25 0 1 1 1 1 0.25 1 1 0.25 0.25 1 0.25 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1 1 1 1 1 1
		 1 1 0 1 0.25 0.25 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1;
	setAttr ".uvst[0].uvsp[6000:6249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25
		 1 1 1 1 1 1 1 1 1 1 0.25 0.25 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 0.25 0.25 0 1 1 1 1 0.25 1 1 0.25 0.25 1 0.25 1 1 1 1 1 1 1 1
		 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 0.25 0.25 1 1 1 1 1 1 1 1 0 1 0.25 0.25 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[6250:6499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 1 1 1
		 1 1 1 1 1 1 1 0.25 0.25 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[6500:6749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[6750:6999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.5 0.5 0 1 1 1 1 0.5
		 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 0.5 0.5 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[7000:7249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 0.5 0.5 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25 0.25 0 1 1 1 1 0.25 1
		 1 0.25 0.25 1 0.25 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[7250:7499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25
		 0.25 1 1 1 1 1 1 1 1 0 1 0.25 0.25 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 0.25 0.25 1 1 1 1 1 1 1 1 1 1 0.25 0.25 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[7500:7749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 0 0.5 1 0.5 1 1 1 1 1 1 1 0.5 0 0.5 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0.5 1 1 1 1 1 1 1 1 1 1 0 0.5 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[7750:7999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0.5 1 1 1 1 1 1 1 1 0 0.5
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[8000:8249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[8250:8499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[8500:8749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 0 1 0.5 1 1 1 1 1 1 1 1 1 0.5 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[8750:8769]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr -s 2196 ".vt";
	setAttr ".vt[0:165]"  -4.21508741 46.013126373 4.62825727 -2.14956522 45.76922226 5.3824234
		 -2.0088205338 47.14923859 5.062152863 -3.92977691 47.43889999 4.55501604 -2.0629721e-30 45.64868546 4.96228695
		 -1.9444952e-30 46.9979248 4.63611031 -4.28584099 44.39068604 3.88901973 -2.22114253 44.098083496 5.14375544
		 -2.6038503e-30 44.08518219 4.96461868 -1.7229909e-30 49.38561249 3.54652238 -1.62987399 49.66617203 3.62517166
		 -1.8385433 48.45728683 4.42821789 -1.8560563e-30 48.16235352 4.18962812 -1.45555556 50.86075592 2.79811096
		 -8.1665714e-18 50.50636673 2.8132658 -1.22364891 51.73320007 1.79261279 -1.0071748e-30 51.4467392 1.98651576
		 -3.5512774 48.78815842 4.048847675 -3.19064379 49.97782516 3.31555486 -2.83098507 51.078594208 2.37704206
		 -4.80810022 49.30879211 3.11524868 -4.39016962 50.28675461 2.49058104 -5.25771379 50.56799698 1.75687611
		 -5.74991512 49.80770493 2.18099117 -2.49524927 52.03326416 1.065340161 -3.94276524 51.20463943 1.67988455
		 -3.61724472 52.1925087 0.44640458 -5.25949717 48.023262024 3.50008416 -5.61567163 46.6214447 3.4508028
		 -6.4873085 47.53174591 2.38136673 -6.24336672 48.73304749 2.44795108 -7.61619329 51.3288765 0.31047648
		 -8.2793808 50.54142761 0.71775037 -7.28955936 49.45886612 1.58742726 -6.75991869 50.43706512 1.32257903
		 -6.10633278 51.1095314 1.022069812 -6.81509304 51.88114548 -0.017518083 -4.80576706 51.30543137 1.13244998
		 -4.74177599 52.0041694641 0.023424171 -5.89154959 52.093070984 -0.19459516 -5.51892138 51.59977341 0.58301073
		 -9.04228878 50.84680939 -0.77007949 -8.19548416 51.60179901 -1.21520174 -9.20241356 50.31851578 -2.66813231
		 -8.33825302 51.059761047 -3.029620171 -7.25392008 52.077125549 -1.5015322 -7.29101658 51.55037689 -3.20992947
		 -6.093957424 52.35198212 -1.53547323 -5.98241568 51.84140396 -3.17525578 -2.19370842 42.73578644 4.80156898
		 -3.0143706e-30 42.71853256 4.9074192 -2.9890164e-30 40.73885727 4.84330273 -2.16938305 40.80476379 4.58536148
		 -1.7531219e-30 37.034957886 5.13660526 -1.8612847e-30 38.84606552 4.93951607 -2.12065482 38.90816116 4.55466318
		 -2.03306818 37.046226501 4.75074244 -1.4680259e-30 35.27925873 5.28621006 -1.91097522 35.2154541 4.95397139
		 -1.45620275 33.46487427 4.92147398 -1.5777218e-30 33.47514725 5.2510047 -0.98478317 32.18199539 4.71842527
		 -0.009719111 32.069770813 4.90498686 -4.15636539 42.95992279 3.53960586 -5.59765387 45.11950302 1.98093617
		 -6.18794155 46.43027115 1.3297261 -10.91671562 48.67905045 -1.93532908 -10.58714008 48.91903305 -0.045826547
		 -9.6991396 49.89525986 -0.35267124 -9.94801331 49.52458572 -2.31429195 -12.74396801 46.88536835 0.46276635
		 -11.64127827 47.91483688 0.19155191 -12.057379723 47.71453476 -1.51900864 -13.14396858 46.66833878 -1.14238012
		 -14.14397812 45.58250427 0.69307286 -13.45942497 46.21915436 0.59326774 -13.83073711 45.95555496 -0.92467237
		 -14.53789425 45.22307968 -0.70632333 -15.41924953 44.6669693 1.47148466 -14.80326653 45.10254288 1.032211065
		 -15.30883694 44.69531631 -0.27989352 -16.048189163 44.20080185 0.25981966 -14.55786228 44.44459915 2.36667967
		 -14.022859573 44.77890396 1.90499616 -3.92609072 41.012264252 3.42450762 -3.84565401 37.060138702 3.5071981
		 -3.88342428 39.094139099 3.41417098 -3.78730917 34.65194321 3.93041801 -5.26756954 35.059459686 2.064096928
		 -4.64217186 37.25435257 2.2944293 -4.51479435 37.33136749 -0.67574644 -5.11520958 34.94857788 -0.12769188
		 -4.95917845 37.32725143 0.79488611 -4.49163485 39.28026962 2.12679434 -4.25475454 39.28633499 -0.8295477
		 -4.74421406 39.3102684 0.58536196 -4.82332945 41.27354813 0.17066582 -4.33184958 41.21712494 -1.38910782
		 -4.56165743 41.275177 1.85191059 -5.085830688 43.11037064 1.63940501 -5.25956631 43.10871124 -0.28123018
		 -4.79418659 43.16180801 -2.18694282 -4.97311687 52.45527267 -1.32318461 -4.71559429 51.98487854 -2.94429421
		 -9.70825863 48.34851837 1.29718721 -8.70429134 49.20532227 1.2435472 -10.85285187 47.37477875 1.46821201
		 -13.44057274 45.16111755 1.52680361 -12.75713921 45.72258759 1.57144833 -2.18150687 52.97231293 0.37335089
		 -1.10295498 52.626091 1.47444069 -1.027802944 53.7218132 1.42167115 -1.72624266 54.16363525 0.3533777
		 -1.83869874 55.1469841 0.57642454 -1.12774658 54.603508 1.7169944 -1.53723574 55.14908218 2.89517927
		 -1.95721662 55.3511467 1.77232862 -0.7715711 54.50426483 3.60442138 -2.26777244 55.99860382 0.74740124
		 -0.71957862 55.12848282 3.78021669 -1.22566962 55.52150345 3.3907783 -0.36915419 57.16730881 4.6260848
		 -0.39752078 57.46262741 4.64481449 -0.59422165 57.40472794 3.95026064 -0.5751034 56.92342758 4.018107414
		 -0.5751034 56.11299896 4.036370754 -1.3890301 56.10025787 3.41619158 -1.94594777 56.058059692 2.77666116
		 -2.26264334 56.34537506 1.84460533 -2.45405936 56.90026855 0.79045624 -1.95061076 55.5825882 -0.80475616
		 -2.092599154 56.63829041 -0.62460887 -2.43323112 57.22364807 -0.42285639 -1.86916375 54.53092194 -1.13777208
		 2.5963042e-30 52.26206589 1.66842151 -2.49820232 53.45703506 -1.34410989 -3.81612158 52.99874115 -1.24369991
		 -3.51541018 52.52946472 -3.0074501038 -1.68046761 52.98770523 -2.99302459 -1.27299905 54.49695969 -2.34673262
		 -1.34986079 55.74641418 -1.91812515 -1.41856241 56.82372284 -1.77473795 -1.5792805 51.51101303 -4.1895504
		 -3.15823412 51.21439362 -4.11958551 -2.29077864 32.57859421 4.56256533 -2.84173965 31.28954697 4.72095108
		 -1.46567976 30.025434494 4.15437222 -1.11568952 30.94917107 4.18946886 -4.61464977 32.52659225 4.0022058487
		 -5.81540346 32.93224716 2.10176992 -0.47956026 29.70136642 2.33485436 0.06530568 29.69062996 2.34308791
		 0.020219939 30.77416039 4.21445036 -0.73486418 28.95054626 2.43606615 -5.59566879 32.86734772 -0.21359503
		 -4.21529007 32.47127151 -3.40226078 -5.2338748 32.75411606 -1.81823957 -4.80663633 34.58477402 -1.6832118
		 -3.87575698 34.33696365 -3.20165181 -2.48731828 34.33131027 -3.68767071 -2.62537789 32.23188019 -3.98598862
		 -4.23235655 35.72932434 -1.84301794 -3.60883069 36.05424118 -2.59528852 -2.33499742 36.076946259 -2.99986339
		 -8.690485 47.3861084 1.79478908 -7.82616329 48.10916519 1.62292659;
	setAttr ".vt[166:331]" -6.60011387 46.94989014 0.979442 -7.10368013 48.055610657 1.80831254
		 -7.21189785 46.99255753 0.84178406 -9.84861851 46.41704559 1.94692028 -9.2144413 45.37630463 1.17659819
		 -8.075527191 46.28622818 0.98628855 -2.87201953 57.32616043 -0.03668227 -2.72109389 57.26523209 0.48518518
		 -2.8367362 58.37976456 0.3435854 -3.21972394 58.35240555 -0.49723127 -3.11760426 58.94903564 -0.20074217
		 -2.93061805 58.84893799 0.24884878 -2.5135901 58.34463882 0.77227056 -2.6491282 59.0105896 0.55007857
		 -2.7553668 59.14115143 -0.32703176 -2.64796257 58.46136856 -0.65724993 -1.59295857 57.5485878 -2.14676762
		 -2.28455925 57.50995636 -1.43566012 -1.8034153 58.74604034 -2.78691983 -1.1937659e-30 58.90769196 -3.19905138
		 -1.4643308e-30 57.62171936 -2.76422644 -1.77194011 60.5430069 -2.42406082 -1.2860377e-30 60.71328354 -2.87924719
		 -1.8215577e-30 62.20296097 -1.71023297 -1.82867324 61.74699402 -1.34768474 -2.53698301 58.56768036 -1.71419656
		 -2.65534544 59.8099823 -1.47397435 -2.60793829 60.70411301 -0.76232284 -2.69016242 59.72021866 -0.22864245
		 -2.56954622 59.88296127 0.63098168 -2.44496632 61.11329269 0.69898373 -1.63469243 62.20241547 0.73885238
		 -1.3407681 56.58948517 3.54014993 -1.14344537 57.33789444 3.51333761 -1.051584244 58.18484879 3.35611653
		 -0.56414533 58.35209656 3.53913927 -0.34801525 58.58905411 3.80562997 -5.3018542e-30 57.50296783 4.78796864
		 -4.8275729e-30 58.70741653 3.94551992 -1.76463485 57.56148148 3.20200467 -1.53505969 58.21352768 3.20806646
		 -1.98146415 56.83879852 2.91476369 -2.45483637 57.52309418 1.92706251 -2.30546498 57.99840927 2.59985566
		 -1.90677857 58.3067894 2.9550209 -1.93887556 58.72171783 3.042918444 -2.23505378 58.97856903 2.70298576
		 -2.43315363 59.66527176 1.53288352 -2.33460879 59.28679276 2.16106749 -1.50925779 59.049919128 3.4790647
		 -1.56125009 59.51062012 3.48085189 -0.87835383 59.030487061 3.65346098 -0.86265504 59.5009079 3.75868917
		 -0.40995541 59.19112396 3.86710405 -0.93532014 58.68169403 3.36124587 -1.50311816 58.7255249 3.27210498
		 -2.12042165 60.81555939 2.31611228 -1.31488836 61.50770569 2.77844858 -1.84134102 60.08852005 3.094988585
		 -1.016922712 60.24216461 3.47510099 -4.8130091e-30 59.18964767 3.95368004 -4.7690107e-30 59.52165222 3.89236164
		 -4.614304e-30 60.30900192 3.64770985 -4.1896733e-30 61.73534012 2.92004848 -12.02484417 46.33139038 1.59875596
		 -11.1669693 45.37874222 1.93905878 -10.43841839 44.43172073 1.26798224 -11.96464443 44.83086014 1.80527031
		 -12.14790154 43.48424149 1.27525759 -11.31173897 43.93959427 1.2621485 -12.72056198 44.32402039 1.67870939
		 -12.56023407 45.61035156 -2.10689569 -13.35992622 44.92774582 -1.97404647 -12.41955948 43.88887787 -1.87780857
		 -11.58297539 44.62337112 -1.94395208 -11.57187843 43.34932327 -0.94583976 -10.77175045 44.054199219 -1.11149526
		 -11.179389 43.44531631 0.20039579 -11.93712711 42.79863358 0.37644359 -12.38779926 42.63006973 -0.73674798
		 -15.84832764 43.073993683 -0.6354863 -15.032457352 43.63089371 -1.28579032 -14.087077141 42.42329407 -1.36193621
		 -14.88643932 41.7926178 -0.75757205 -13.062932014 41.96972656 -0.39806068 -13.72733116 41.3224678 0.066419743
		 -12.57365513 42.24506378 0.67027181 -13.16952801 41.73315811 1.065309405 -13.14083099 42.65350342 2.11682248
		 -12.67445564 43.038772583 1.65771616 -13.24971294 43.97538757 2.096762896 -13.7231884 43.68245316 2.58682179
		 -11.53935528 46.65027237 -2.64278698 -10.40277195 47.60854721 -3.063102722 -9.38948059 48.34462357 -3.40882611
		 -8.49030781 49.051433563 -3.71028805 -7.65269709 49.65685272 -3.95937705 -6.73795891 50.083930969 -4.10513496
		 -4.36326265 50.76646423 -3.95522428 -5.58557844 50.46260452 -4.079550266 -1.22924459 47.88669205 -4.85379457
		 -2.74881768 47.62638474 -4.87784767 -2.92139006 49.18776703 -4.87069607 -1.38343441 49.50389862 -4.86521912
		 -10.5204668 45.50775528 -2.52089858 -9.43209362 46.36301804 -2.88860297 -8.42538166 47.1724968 -3.2357142
		 -7.56750011 47.81448746 -3.62205386 -9.67577362 44.90587997 -1.49289441 -8.62074089 45.69338226 -1.83002281
		 -7.60281324 46.44687653 -2.19962239 -6.8507638 46.70675659 -2.56190896 -4.062448978 47.1536026 -4.62785769
		 -4.12230444 48.91448975 -4.49353027 -6.18452454 49.071659088 -4.2841382 -5.25805712 48.82429886 -4.29289103
		 -5.37976408 47.052017212 -4.079806805 -6.37616539 47.80848694 -3.98452044 -5.43478155 45.4274025 -3.19123268
		 -6.18536806 46.2781105 -2.90745568 -3.93460774 45.41579056 -4.2917676 -2.71101761 45.77088928 -4.73696423
		 -1.030523062 45.97890472 -4.65243101 -5.58094978 44.66366196 -0.53948295 -6.018535614 45.96977997 -0.78939062
		 -6.52543116 46.77445984 -0.85481268 -0.94083804 43.69185638 -4.016242027 -2.46494102 43.49445343 -4.064809322
		 -3.8025794 43.31639481 -3.56345177 -3.41339374 41.20049286 -2.51491141 -2.25440526 41.25287628 -3.010899305
		 -0.87338001 41.39144516 -3.052788734 -1.7159987e-30 41.45509338 -2.92914128 -7.8308993e-31 43.67895889 -3.84347796
		 -3.32798314 37.33953094 -2.075501442 -3.24505949 39.2030983 -1.87165058 -2.10868645 39.11465454 -2.30437708
		 -2.15990186 37.26888657 -2.45203876 -1.5777218e-30 32.13468933 -3.38595986 -0.96168709 32.22241592 -3.75785565
		 -0.93311918 34.3503952 -3.60770154 -1.2584168e-30 34.42593002 -3.33956313 -0.900814 36.094818115 -2.96916533
		 -1.5777218e-30 36.10717773 -2.85538816 -0.83553189 39.040981293 -2.32504964 -0.86685169 37.21992493 -2.48390245
		 -2.57009912 30.063882828 -3.45585346 -0.74731284 29.93370819 -2.64476609 -4.33143473 30.3311615 -2.98458529
		 -5.17975569 31.19265747 -2.069121599 -6.22195053 30.024085999 -0.21660699 -6.60746717 30.35324097 2.27115178
		 -5.70895481 24.29792786 -1.68054342 -5.074365139 26.46392632 -2.11050963 -2.41955733 25.44601822 -2.078961611
		 -3.206043 23.44850922 -1.65277302 -5.93266821 21.94455338 -1.063446283 -4.099378586 21.41033173 -0.84887558
		 -6.99882698 27.30822372 -0.19704288 -7.26621914 27.75510025 2.48589921 -7.34234381 24.89332962 0.061725367
		 -7.58112764 25.094999313 2.5921638 -7.36385012 22.46068573 0.51084107 -7.45978022 22.49307251 2.55445361
		 -5.43071985 30.14668465 4.21080494 -6.083622932 27.59181213 4.57461596;
	setAttr ".vt[332:497]" -6.47022772 24.78561211 4.58877373 -6.35859299 22.020399094 4.17793608
		 -3.41873598 29.40360451 4.97127914 -3.8494277 26.98859787 5.38728094 -4.35544729 24.21377373 5.35577297
		 -4.81156111 21.45341492 4.75710964 -1.83999813 28.57022858 4.31696749 -0.89016527 27.81105423 2.62733459
		 -2.17710423 26.45576668 4.46969748 -1.40145218 25.88871193 2.71408176 -2.7417829 23.88175201 4.38215494
		 -2.032934904 23.64841652 2.63609123 -3.37384534 21.18136978 4.017503738 -2.85159564 21.21455383 2.38146973
		 -0.63856971 28.46353912 -0.068562664 -0.36634603 29.40277672 -0.16237585 -0.79647326 27.12146759 -0.013618964
		 -1.25198686 25.3462925 0.25012058 -2.021974325 23.32423973 0.49446332 -3.016432524 21.25038338 0.69475234
		 -1.36241996 28.50004578 -2.04461956 -4.5814333 29.062452316 -2.22784233 -2.90452933 28.71579742 -2.6746428
		 -3.2373755 27.43588829 -2.66316199 -1.73403776 27.035907745 -2.18553972 -5.23895741 19.21238518 4.34998989
		 -6.69123697 19.74251175 4.14566278 -7.19198656 17.6910305 3.822191 -5.7429409 17.21072197 3.90919209
		 -5.50139189 18.2099514 4.12139034 -6.92385292 18.71339607 3.97856569 -7.64093542 15.86261177 3.011519194
		 -6.23496866 15.44608688 3.012637138 -5.99163723 16.31049538 3.50696468 -7.4330368 16.75242805 3.44897962
		 -8.2128706 13.24074459 1.79846823 -6.55105972 12.83851719 1.80287313 -6.37946653 14.19655514 2.36715627
		 -7.92707253 14.60442257 2.3600893 -6.76027679 11.2697506 1.2140981 -8.387146 11.53937054 1.087519646
		 -8.58861256 7.97172546 -0.4814198 -7.28145552 7.71814251 -0.23512949 -7.0036387444 9.51607037 0.53441429
		 -8.53526592 9.80267715 0.34909859 -9.035220146 4.74624109 -1.28523099 -7.65946674 4.57227612 -1.097285032
		 -7.46773005 6.14605284 -0.78939694 -8.7361145 6.37039518 -1.010387778 -7.78006268 3.49810672 -0.94749826
		 -9.48938465 3.60598874 -1.19567096 -7.63369465 20.32017326 2.58207822 -7.98335648 18.38513565 2.29378533
		 -7.77380323 19.33556747 2.47236681 -7.64566278 19.51680183 0.72061241 -7.75749588 18.67599297 0.69419253
		 -4.046551228 19.11598206 3.52159095 -4.48008871 18.26935387 3.19004726 -3.51971459 19.30687714 2.068006277
		 -5.042320728 16.59667778 2.43069315 -4.83071566 17.45555496 2.82287908 -3.90651059 18.49818993 1.90213823
		 -4.21385098 17.67454147 1.72706366 -4.42716646 16.87119102 1.3967768 -8.1892271 17.54091263 1.90474117
		 -8.35621452 16.69339943 1.4942019 -7.94725895 17.96036911 0.40479273 -8.10436726 17.18351746 0.056291435
		 -3.68443727 19.48849487 0.70102727 -4.081139088 18.71701813 0.63710964 -4.40122032 17.94172287 0.49981996
		 -4.62909031 17.22327042 0.20446385 -4.76104259 19.69434357 -0.41332382 -5.06644249 18.983675 -0.29910257
		 -5.3322053 18.30939674 -0.30022541 -5.52048445 17.61787987 -0.60589272 -6.33572197 20.066013336 -0.58974397
		 -7.61362505 20.42606926 0.70676064 -6.46659899 19.31369591 -0.41189671 -6.62062645 18.63238907 -0.34502628
		 -6.81877327 17.93962669 -0.61550575 -8.7906208 15.45218086 0.84121251 -9.22676373 13.96108627 0.27507022
		 -8.52006721 15.98834515 -0.7115646 -8.94885921 14.53489304 -1.38698888 -7.30071163 16.086479187 -1.77366889
		 -7.62364435 14.77595997 -2.50294828 -9.42838097 12.2947855 -0.29458803 -9.20506191 12.94743443 -1.926054
		 -7.8185482 13.21603584 -3.17181373 -5.86605358 15.79612732 -1.84117389 -6.069824696 14.49511814 -2.60229707
		 -6.33623266 13.012238503 -3.25081229 -5.26852608 15.75761127 1.96259022 -5.33462715 14.46863556 1.34488177
		 -4.62621927 14.8165617 0.31012148 -5.44714928 12.98455238 0.8518545 -4.6656971 13.32715988 -0.32589227
		 -5.55717897 11.477952 0.27732381 -4.89147234 11.77895069 -0.9614659 -6.33626986 7.81628084 -1.056220412
		 -5.89583206 9.71807957 -0.33839309 -6.061656475 8.16639137 -2.19206619 -5.38396931 10.064534187 -1.58685672
		 -6.72162914 6.14727926 -1.56326067 -6.59298277 6.30869722 -2.6269803 -6.97926617 4.46629143 -1.92430663
		 -6.951684 4.60667992 -3.077890158 -4.79214907 15.31390762 -0.91647613 -4.77715397 13.89135933 -1.59331763
		 -5.71139288 16.93119431 -0.94961125 -4.877985 16.50143814 -0.15094845 -5.014228344 12.40485096 -2.31401134
		 -6.31866121 8.5505209 -3.23281717 -5.54883957 10.6174612 -2.81049848 -7.17020035 8.97995758 -3.89353752
		 -6.70112944 11.1595211 -3.64361453 -8.24163914 9.1788969 -3.84415531 -8.048728943 11.34325981 -3.5753448
		 -9.20655346 8.98021412 -2.84594202 -9.30338764 11.057936668 -2.34569383 -9.25415039 8.44913673 -1.49859405
		 -9.43146896 10.48984432 -0.85673797 -9.22944164 6.67391491 -1.92927587 -9.37252522 4.91219902 -2.25355887
		 -9.15039921 6.93147469 -3.08419776 -9.24480534 5.034332752 -3.45081592 -8.36883926 7.071734428 -4.0055580139
		 -8.47739506 5.13307047 -4.42718124 -7.43034077 6.92571926 -4.040922642 -7.61671782 5.072064877 -4.44516087
		 -6.80038357 6.58388376 -3.45149374 -7.14689493 4.80846977 -3.81470609 -7.10595036 3.2333045 -1.82624757
		 -6.81145573 3.13916159 -3.35500145 -6.85365915 3.21239066 -4.2877903 -7.28041124 3.25573087 -5.22788382
		 -8.27734756 3.22605586 -5.27334404 -9.33086777 3.16234064 -4.025043488 -9.75926876 3.41249776 -2.4864819
		 -8.17066002 1.34361565 -6.023300171 -9.17882442 1.32341266 -4.42260599 -7.96538115 0.066970773 -5.80454111
		 -8.9140234 0.050061006 -4.37238312 -6.9501071 1.34816313 -5.90054893 -6.25152826 1.34265566 -4.77150774
		 -6.32311392 1.33241475 -3.67296886 -6.912467 0.071981482 -5.74573088 -6.25952148 0.067593947 -4.77769375
		 -6.39102983 0.057466846 -3.707201 -7.72486019 1.32634461 1.84887552 -7.61517715 1.31875789 0.096461788
		 -7.97284317 2.81336093 0.13846168 -8.078296661 2.19340181 1.80304229 -11.36016941 1.2495749 3.11829662
		 -10.65425301 1.68396187 3.2714839 -10.44152164 2.2013545 1.35227823 -11.23570347 1.26614702 1.16819227
		 -8.79173851 1.2455765 5.021748543 -10.78133869 1.23963177 4.64363766 -10.6879034 -0.033135302 4.69796562
		 -8.78131199 -0.027412008 5.057073593 -7.083300114 1.3139528 -1.85428667 -7.36530685 0.038441818 -1.91963458
		 -7.56989193 0.014494866 0.11710563 -8.039593697 -0.024400735 3.73517013;
	setAttr ".vt[498:663]" -8.27409935 1.28277123 3.70021319 -9.72859001 1.30454063 -2.44739771
		 -10.61905003 1.28294528 -0.59401828 -9.4612627 0.031950224 -2.39383769 -10.49798965 0.010334766 -0.57168519
		 -9.90123653 2.90776134 -0.22571231 -11.33234119 -0.026642371 3.11181307 -11.11492729 -0.0084124831 1.18167114
		 -8.52056789 1.68962443 3.67858219 -22.077400208 35.9829483 8.78615952 -22.18191719 35.77833557 8.5022192
		 -22.32709694 35.4965744 8.76299667 -22.2314682 35.69936371 9.034582138 -21.82277489 36.39910507 8.30544949
		 -21.89057159 36.23833084 8.10165596 -22.33435059 35.58301544 9.14521313 -22.42365074 35.39048767 8.88379765
		 -22.53468132 35.1851387 9.078614235 -22.45410347 35.3810997 9.34269905 -22.42227936 35.22146606 9.48159313
		 -22.5193615 35.017059326 9.18863678 -22.5564785 34.42491531 9.65175629 -22.46468163 34.6257515 9.92080212
		 -22.44332695 34.86454773 9.74063969 -22.54190445 34.65491486 9.46431637 -22.49767303 34.48648071 10.027523994
		 -22.57470894 34.27589417 9.75806236 -22.50196075 34.29335785 10.15374374 -22.57311821 34.098316193 9.90040874
		 -21.75912094 35.92583466 8.99613094 -21.54605865 36.26151276 8.67813683 -21.93621635 35.61700439 9.30153275
		 -22.16302299 35.57720566 9.30756855 -22.22241592 35.43695068 9.43870449 -22.076625824 35.26304626 9.60084248
		 -22.18398476 34.90390015 9.8558445 -22.28534126 34.54143524 10.13732815 -22.25635338 34.66860962 10.022057533
		 -22.30803108 34.36239243 10.26592922 -21.82948875 35.21300507 9.52693653 -21.72339439 35.35829544 9.38679218
		 -21.63339043 35.15466309 9.22938156 -21.72332001 35.038860321 9.34049511 -21.6979332 34.94202042 8.96006298
		 -21.7930336 34.82156754 9.092102051 -21.95343018 34.82545853 9.84194469 -22.055919647 34.49723434 10.12869167
		 -22.04341507 34.60618973 10.016141891 -22.076387405 34.33691025 10.2575531 -21.79125404 34.65520477 9.67961216
		 -21.90320778 34.31478119 9.95386982 -21.88902664 34.45017242 9.8570013 -21.91866112 34.15644836 10.067760468
		 -22.55381966 33.65983963 10.58124542 -22.58402634 33.51010132 10.38368225 -22.39424706 33.83415222 10.62219143
		 -22.42690849 33.41827393 10.40838337 -22.3858242 33.5644989 10.60991573 -22.23085976 33.47227097 10.32058716
		 -22.17772675 33.62028122 10.52414799 -21.50678062 35.69825363 9.068383217 -21.37382317 35.47966385 8.90835285
		 -21.44669533 35.2623291 8.63834476 -21.16684532 35.73491287 8.76014519 -21.30479813 35.4196167 8.36741734
		 -21.27552414 36.046024323 8.77007484 -20.91032028 35.74483871 8.52335358 -21.011449814 35.64178848 8.30606651
		 -20.95207596 35.84111023 8.91213131 -20.66910744 35.87428284 8.68909168 -21.21146584 36.076343536 8.80491066
		 -21.75758553 36.43479919 7.7758379 -21.66350174 36.6944313 8.15918064 -21.52310371 36.97301102 7.92237997
		 -21.64852333 36.67877579 7.5656743 -21.84577751 34.4295845 9.42267513 -21.97085571 34.11300278 9.70944595
		 -21.95520401 34.23176575 9.60496998 -22.16518593 33.83372116 10.57450199 -22.3181057 33.6999321 10.65343666
		 -22.19452095 33.71767044 10.59050941 -22.037744522 33.76574707 10.40146542 -22.095357895 33.61260986 10.1944313
		 -21.98735046 33.96736908 9.85044956 -21.34004211 36.5592041 8.51553631 -21.37972832 37.02199173 8.19744587
		 -21.11449623 37.47798538 7.40563202 -21.31232071 37.20822906 7.085958958 -20.76515007 37.93172073 7.25453758
		 -21.16815186 37.34668732 6.72432613 -21.65546989 36.36734009 7.47600555 -21.64369202 36.019733429 7.80715609
		 -21.8142643 35.83483124 8.067475319 -22.02558136 35.480896 8.38584137 -22.18852043 35.17590714 8.64277744
		 -22.34311485 35.20707703 8.78051949 -22.41535378 35.04246521 8.91528225 -22.34151649 34.80195236 8.99103928
		 -22.39738274 34.45845795 9.31483459 -22.45008659 34.10148239 9.62653542 -22.42609978 34.23983765 9.51995373
		 -22.45661545 33.95330048 9.75274467 -21.92306137 34.89062881 8.73683262 -22.012334824 34.73788071 8.92705345
		 -22.081577301 34.34672165 9.28404236 -22.17537498 34.014213562 9.58030891 -22.14650726 34.14946747 9.47800541
		 -22.21358681 33.87443542 9.70486259 -22.51046562 33.52895355 10.15517139 -21.70930672 35.25205994 8.44873142
		 -21.51646805 35.44245529 8.24793434 -21.28086662 35.38077164 8.16748047 -21.024953842 35.48195267 8.086817741
		 -21.47332954 35.50884628 8.10892677 -22.32004547 33.47463989 10.11179352 -22.31356239 33.4276619 10.22175407
		 -22.44606209 33.41834641 10.24915028 -21.38988876 36.67122269 9.45886612 -21.56375122 36.50675201 9.20890045
		 -21.72251129 36.28629684 9.49559021 -21.56438828 36.44528198 9.74211693 -21.24621773 36.94394302 9.083477974
		 -21.40014267 36.82614136 8.87586594 -21.68373108 36.33007431 9.9032917 -21.82318878 36.16459274 9.64584923
		 -21.89169884 36.036491394 9.79009819 -21.74831581 36.1991539 10.040318489 -21.74429131 36.044437408 10.15955067
		 -21.88012505 35.87662506 9.91919327 -21.9598217 35.33781815 10.36723518 -21.85393143 35.52280807 10.60437679
		 -21.8073616 35.73597717 10.42052555 -21.91439247 35.55754089 10.18307781 -21.89428902 35.40398788 10.72155952
		 -22.01112175 35.20565414 10.47492313 -21.90733147 35.22029114 10.84226227 -22.026535034 35.042247772 10.61182308
		 -21.094259262 36.62614441 9.63995266 -20.87734985 36.91534805 9.3242569 -21.27132416 36.36849976 9.95312023
		 -21.50214767 36.35456085 9.9987812 -21.57150078 36.22493362 10.14048481 -21.42278099 36.07251358 10.27445698
		 -21.5490303 35.75326538 10.52999687 -21.66795731 35.43023682 10.80968189 -21.63400841 35.543293 10.69458008
		 -21.69950867 35.25572968 10.9387207 -21.16495132 35.98452759 10.1969223 -21.076562881 36.10752869 10.014680862
		 -21.015506744 35.8656044 9.8859148 -21.095352173 35.77817154 9.99619865 -21.16986656 35.67189026 9.60535717
		 -21.25094032 35.58044815 9.73301029 -21.32976151 35.64230728 10.50053596 -21.45915604 35.34618378 10.77235317
		 -21.43426895 35.44997406 10.67165661 -21.49305725 35.18589401 10.89457035 -21.19683838 35.42649841 10.32698345
		 -21.34613609 35.14908218 10.5986433 -21.31473351 35.26862335 10.50663853 -21.38068199 35.0005569458 10.72051334
		 -21.97648048 34.63555145 11.24136353 -22.069282532 34.49814606 11.087648392 -21.82275772 34.79138184 11.24944687
		 -21.91892242 34.42325211 11.087267876 -21.8516674 34.56047058 11.2294817;
	setAttr ".vt[664:829]" -21.75785828 34.43893814 10.99435234 -21.69944572 34.59194183 11.14527225
		 -20.86055946 36.39914322 9.70498562 -20.77741623 36.086715698 9.57068443 -20.96478271 35.86083221 9.28838158
		 -20.59410667 36.30096436 9.30368519 -20.80314445 35.96821976 9.04565239 -20.65102005 36.64969635 9.41564465
		 -20.40762711 36.4474144 9.16417122 -20.48533821 36.097557068 8.85439968 -20.45300484 36.80530548 9.25477028
		 -21.33853531 36.96855164 8.60407925 -21.014190674 37.17765045 8.94083881 -20.86302567 37.4256134 8.73394585
		 -21.2561779 37.23433685 8.35500526 -21.35523796 35.23947906 10.079188347 -21.47128296 34.96580124 10.37580681
		 -21.45555305 35.076881409 10.27498341 -21.64764404 34.74891663 11.15766239 -21.77966309 34.6496582 11.24806309
		 -21.69697952 34.65900803 11.18279743 -21.57704353 34.68592453 11.032392502 -21.64048576 34.51913071 10.84836292
		 -21.49722481 34.82965469 10.50938797 -20.71126747 37.087520599 9.1533699 -20.48159409 37.29534912 8.96141148
		 -20.30452919 37.85071182 8.26613426 -20.85653305 37.74223709 7.7637372 -20.03386116 37.53713226 8.78384018
		 -21.38265991 36.48496246 8.74749279 -21.50125885 36.22028732 9.062574387 -21.64510536 35.98031616 9.35481167
		 -21.77191162 36.026123047 9.50564098 -21.82068062 35.88860703 9.65216255 -21.76378059 35.6740799 9.71655369
		 -21.83167076 35.37813187 10.035235405 -21.93029594 35.040962219 10.32781124 -21.88909721 35.16941452 10.21681499
		 -21.95129013 34.8832283 10.46068096 -21.42899513 35.67062759 9.45313549 -21.49319077 35.56082153 9.61673832
		 -21.60834122 35.2413559 9.9906683 -21.68950081 34.91911316 10.29501915 -21.65815926 35.055282593 10.18797779
		 -21.7322216 34.79211044 10.41425991 -22.034738541 34.48714066 10.85158825 -21.26514435 35.89194489 9.15319633
		 -21.18569756 36.0078239441 8.95379448 -21.84807777 34.42869949 10.80911732 -21.83936882 34.40106583 10.91687298
		 -21.95638657 34.39918518 10.9521389 -20.20654106 36.98849106 9.09823513 -20.15195847 36.63116074 8.92866325
		 -20.27864838 36.31971741 8.55513954 -19.78833961 36.79243469 8.68185234 -19.91749001 37.1437645 8.990242
		 -19.4666996 37.27387619 8.83442783 -19.45399857 36.89595795 8.66700554 -19.51207352 37.68657303 8.66144371
		 -19.57585144 37.91630554 8.3825407 -19.25379753 38.69084549 7.16887188 -19.84869766 38.31735229 7.67152929
		 -19.24307823 38.12877655 8.15727711 -18.81954384 38.2473526 7.91728163 -19.76374626 38.73193741 6.93203259
		 -19.01162529 38.98374557 6.76996422 -19.5160923 39.071243286 6.59985256 -18.10354042 40.16457748 5.69941521
		 -18.67915916 40.39806747 5.42217302 -18.96759987 39.94612122 5.82432842 -18.43829155 39.75078964 6.060425758
		 -17.82874489 41.65248871 4.27515316 -17.13531113 41.42049408 4.64254189 -19.4771328 39.90203857 5.3910532
		 -19.21282959 40.32890701 4.91621208 -19.78162766 39.42954254 4.71892405 -19.45652008 39.76290894 4.20718193
		 -18.41614532 41.444664 3.54667568 -18.50815201 40.74276733 2.83153629 -16.93299675 42.93531418 3.15467215
		 -16.084402084 42.74827576 3.78496528 -16.1165657 43.97932053 2.23319745 -15.19652271 43.79497528 3.048885107
		 -17.56237221 42.56600571 2.25945067 -16.78028488 43.51531982 1.1518333 -17.53505325 41.64048767 1.47272849
		 -16.65559769 42.42486191 0.27655607 -15.26288223 42.13354111 3.92249012 -14.32244587 43.080459595 3.24120784
		 -16.43637848 40.89820099 4.69864607 -17.55436325 39.65515518 5.69357443 -17.87400627 39.32357788 6.053609848
		 -18.43787575 38.31086349 7.052743912 -18.42389297 38.71641541 6.71189594 -18.28290367 38.069091797 7.81598759
		 -20.27162743 38.57725525 6.58540154 -20.00054740906 39.0067176819 6.2407589 -20.59419823 38.23674774 6.054085255
		 -20.35936356 38.65600586 5.696558 -19.56995392 36.68082428 8.23050022 -19.94746017 36.58074188 8.24209976
		 -18.66666031 37.041999817 7.048316956 -18.28576279 37.57995224 6.90907145 -18.095026016 37.56627274 7.69469929
		 -18.32969475 37.0065612793 7.73907661 -19.25602913 39.49410629 6.22651005 -18.77307129 39.33695602 6.42156172
		 -19.74139214 39.47512436 5.86598635 -20.10676575 39.096149445 5.23060179 -18.19375229 38.99197769 6.41361141
		 -18.86458588 36.73830795 8.1012249 -19.29963303 36.75225067 7.61328793 -20.41354752 36.17225266 8.30725288
		 -20.66830635 35.96325684 8.25857449 -20.80196762 35.89044952 8.066843033 -20.75703239 35.91367722 7.76934099
		 -20.90245056 35.63178635 7.67990732 -21.10293388 35.42253876 7.85386276 -19.79359627 36.81063843 7.14491749
		 -19.14585686 37.082714081 6.59449911 -18.7622261 37.50659943 6.25313997 -18.68739128 38.095420837 8.42271709
		 -18.28187752 38.0092697144 8.33720493 -18.21283913 37.92707062 8.67409897 -18.60420609 38.018680573 8.76480579
		 -18.53775024 37.856884 9.10496235 -18.18700409 37.7654953 8.99643517 -18.17935753 37.6049614 9.25745773
		 -18.49776268 37.67100906 9.3691473 -18.41416931 37.26129532 10.1207304 -18.088459015 37.20162582 10.010224342
		 -18.12927818 37.37190628 9.65797043 -18.44474411 37.44024277 9.75048351 -18.081348419 36.95735168 10.2558794
		 -18.39757919 37.017448425 10.34589005 -17.99283218 37.7121582 8.58414268 -18.038957596 37.55184174 8.2852211
		 -18.0052280426 37.60238647 8.86438465 -18.0057239532 37.34054565 9.048283577 -18.0034790039 37.16978073 9.49284649
		 -17.89588928 36.78082657 10.099737167 -17.91221428 36.96953583 9.81913471 -18.10490036 37.025882721 8.92033768
		 -18.19395447 37.088207245 8.29171181 -18.6127739 36.89666367 8.48070812 -18.4344635 36.89148331 8.93369484
		 -19.04259491 37.012634277 8.81621647 -18.83948708 36.95712662 9.053175926 -18.059026718 36.88395691 9.34280682
		 -17.96239662 36.52677536 9.93322754 -17.97236633 36.71896744 9.65821457 -18.35716438 36.69992447 9.31554604
		 -18.28354073 36.40969467 9.89738941 -18.31850052 36.59391022 9.61802292 -18.044353485 36.47634125 10.94754887
		 -18.05137825 36.73820877 10.45677471 -18.3620739 36.79974365 10.5410614 -18.25429344 36.49331665 11.011155128
		 -17.89990807 36.54176712 10.44096661 -18.27271652 36.34240723 10.96377277 -18.080196381 36.32618332 10.90633011
		 -18.36724091 36.24456406 10.75425911 -18.20855331 36.22131729 10.70603561 -18.73891449 36.77834702 9.43861294
		 -18.64556694 36.48265076 10.022358894 -18.65586662 36.6703949 9.71803379;
	setAttr ".vt[830:995]" -17.96254349 36.32823563 10.25855064 -17.91449738 36.4279747 10.64850616
		 -17.99611092 36.29541016 10.76201153 -18.057897568 36.23760986 10.66723347 -18.012018204 36.25005722 10.48570633
		 -18.22087479 36.20008469 10.47638226 -18.24082947 36.24258423 10.22681999 -18.47109604 36.2426033 10.54791546
		 -18.56681633 36.31507874 10.31538296 -18.81881523 37.93690491 8.87496376 -19.085128784 37.85942078 8.66577339
		 -18.77708054 37.83176422 9.10280991 -18.83930397 37.56399155 9.30870724 -18.71333504 37.30244064 9.75573826
		 -18.6278019 36.92732239 10.34325409 -18.67178535 37.11638641 10.080302238 -19.15663338 37.36191559 8.88604069
		 -18.94921875 37.27214432 9.23521137 -18.8732605 37.057518005 9.64314938 -18.78051186 36.69635391 10.21239281
		 -18.82767105 36.87782288 9.93916607 -18.58342743 36.67269897 10.64387417 -18.69309807 36.49398804 10.53685856
		 -18.57223892 36.3695488 10.72404194 -18.46188545 36.31406021 10.81678295 -18.4241066 36.38146973 10.91886997
		 -18.48250008 36.55552292 10.83408356 -20.2598896 36.44296646 7.96557522 -18.50298882 38.006187439 6.39095402
		 -18.44008827 38.26485062 6.17410088 -18.81140137 37.62091064 5.80808067 -18.29686928 38.36747742 5.90641546
		 -18.61022758 37.94104767 5.40737295 -19.20321083 37.057373047 6.26869774 -18.91998863 37.79585266 4.87279844
		 -19.13022232 37.62800598 5.063978672 -19.89756584 36.67987442 6.62532139 -19.069095612 37.17086029 5.52244854
		 -19.4178772 36.74059677 5.86333227 -19.46687126 37.2374382 5.1164794 -19.85291862 36.29193497 6.20970106
		 -20.31930351 36.48274994 7.37069607 -20.35847664 36.22267914 6.8799243 -20.74241066 35.58459091 7.19620657
		 -20.72917557 35.46445847 6.87030411 -20.33430862 35.88330078 6.51928711 -19.81145477 36.74757767 5.39382744
		 -20.18665504 36.18255615 5.72325373 -20.50999069 35.7660408 6.15646982 -17.50580215 39.071861267 5.22989941
		 -17.90131378 38.71964645 5.56820345 -18.15786362 38.28730011 5.035451412 -17.70553207 38.63352585 4.66346455
		 -18.59563065 38.13568878 4.45030451 -18.27127075 38.47552109 4.027811527 -16.19736481 40.26659012 4.30175161
		 -14.79751778 41.31035995 3.42995262 -13.76181126 42.086997986 2.72863102 -16.36420441 39.66341782 3.53286672
		 -14.97314358 40.50878906 2.4608171 -13.88162327 41.16869736 1.66158772 -17.0099754333 39.42127609 2.8573966
		 -15.67064476 40.17180634 1.6587714 -14.54631996 40.76443481 0.72461069 -22.24308205 35.47753906 7.90779877
		 -22.27480125 35.30130005 7.63064623 -22.44094276 34.975811 7.82961178 -22.41391754 35.16212845 8.11879826
		 -21.96795654 35.90091324 7.56852293 -21.98352051 35.77438354 7.37789631 -22.51099205 35.0366745 8.20721817
		 -22.53918457 34.85172653 7.91579437 -22.60822868 34.61743546 8.082526207 -22.58617973 34.80784988 8.37732601
		 -22.53263283 34.63410568 8.49032974 -22.56608582 34.45484543 8.17621708 -22.5230484 33.85752487 8.55945396
		 -22.50545883 34.039188385 8.83818436 -22.50210762 34.29194641 8.69793129 -22.55612946 34.092048645 8.39924335
		 -22.49549866 33.89664078 8.92381191 -22.515728 33.71146774 8.65574646 -22.48034859 33.71375275 9.019346237
		 -22.49376488 33.55069351 8.76677799 -22.006105423 35.46250916 8.15974236 -21.84653282 35.82017899 7.89739895
		 -22.15633583 35.13497543 8.39813137 -22.35250473 35.048179626 8.38726997 -22.39296532 34.89534378 8.49984837
		 -22.26306534 34.72731781 8.63431644 -22.27106667 34.35543823 8.82116508 -22.31667137 33.97766495 9.044975281
		 -22.31040764 34.11864853 8.96241665 -22.31028175 33.79725266 9.14424419 -21.99068451 34.68615341 8.59422779
		 -21.89716339 34.91384125 8.46112919 -21.81869698 34.76828003 8.28726292 -21.85623932 34.56968307 8.42260742
		 -21.85058212 34.62179184 8.034957886 -21.88598251 34.4232254 8.17351723 -22.062644958 34.33555222 8.8112545
		 -22.10897636 33.97219849 9.046465874 -22.091503143 34.11769867 8.94180679 -22.11363983 33.80532455 9.13725662
		 -21.87838745 34.22246933 8.65407276 -21.92919731 33.83298874 8.89391518 -21.94953537 34.0067939758 8.78260517
		 -21.9261837 33.6790657 8.99605656 -22.37953186 33.10335159 9.32993698 -22.36608887 33.0022125244 9.18249416
		 -22.31173897 33.26000977 9.39481926 -22.26011276 32.98731995 9.1908102 -22.27131081 33.08014679 9.34557056
		 -22.1216526 33.037128448 9.14234257 -22.12078667 33.15171432 9.3200388 -21.71709633 35.28264236 8.2575779
		 -21.53611565 35.11020279 8.054413795 -21.57927132 34.91409302 7.81014013 -21.35352135 35.33778 7.93642902
		 -21.42537498 35.16166306 7.58483458 -21.53747749 35.55512238 8.03291893 -21.14062881 35.35295105 7.57389784
		 -21.79900742 35.96280289 7.15941525 -21.81023979 36.14455032 7.4235568 -21.70569611 36.39863586 7.25080681
		 -21.70995522 36.20280838 6.97600746 -21.88945198 34.061672211 8.41843319 -21.93647003 33.68719482 8.67678356
		 -21.95566559 33.85577011 8.56009483 -22.13408852 33.30358887 9.37084007 -22.23938751 33.17050171 9.3893919
		 -22.14870453 33.21129227 9.36969376 -22.024662018 33.29918289 9.23754406 -22.023075104 33.1615181 9.034344673
		 -21.93113708 33.53701401 8.77655602 -21.62129593 35.96027756 6.82514191 -21.62445641 35.61642075 7.061641693
		 -21.86508179 35.41688156 7.31243229 -22.091041565 35.054172516 7.54082584 -22.21544456 34.7261467 7.74194145
		 -22.39017296 34.70187378 7.82745743 -22.44234085 34.52188492 7.92992496 -22.3185463 34.32184219 8.0098581314
		 -22.33605957 33.96294403 8.27149773 -22.34437752 33.59677124 8.52884197 -22.35668182 33.76561737 8.41435242
		 -22.33430862 33.44740295 8.63112068 -21.96809769 34.55012512 7.87158203 -22.030748367 34.36159515 8.011984825
		 -22.065149307 33.95194244 8.28756237 -22.10559845 33.58634949 8.51568985 -22.088998795 33.75929642 8.41674519
		 -22.11395454 33.43099213 8.62404633 -22.32750511 33.026054382 8.98561096 -21.79795456 34.89981079 7.60423851
		 -21.66114235 35.19976425 7.40197277 -21.39239693 35.21546936 7.37921143 -21.07909584 35.28364182 7.38775682
		 -21.58299065 35.33060837 7.2765851 -22.16378784 33.033370972 8.97626686 -22.17007065 33.0038909912 9.0670681
		 -22.25955391 32.98070145 9.083112717 -21.38168907 36.95251846 6.79896545 -21.41239738 36.709095 6.59341478
		 -21.2375679 36.83984375 6.23040915 -20.63382149 37.77384186 5.58822393;
	setAttr ".vt[996:1161]" -20.91362762 35.53396225 7.44356775 -20.83540916 35.38986969 6.5005517
		 -21.070178986 35.24638748 7.053984165 -21.33268547 35.21832275 7.22227812 -20.40315437 38.1969986 5.20183897
		 -19.82504463 38.26737213 4.59919262 -19.44436073 38.58299255 4.17116213 -17.85837555 39.80404282 2.46241665
		 -19.063663483 38.8985405 3.74315763 -16.75341034 40.60165787 1.20300257 -15.74295712 41.23722076 0.075649098
		 -21.83360481 35.52196503 6.74626923 -21.82254791 35.4319191 6.54843998 -21.99238396 35.051166534 6.66314793
		 -22.0066165924 35.18227386 6.91617203 -22.11137962 34.99547195 6.99144173 -22.052972794 34.87389374 6.74077797
		 -22.10377502 34.68181229 6.83579588 -22.16520309 34.81157303 7.084957123 -22.1438179 34.65434265 7.15737963
		 -22.097747803 34.52547836 6.90970564 -22.13502312 34.0059356689 7.17174006 -22.15354729 34.11407852 7.40489054
		 -22.11761856 34.39059448 7.28322077 -22.11920929 34.26451874 7.038402081 -22.17676163 33.96351242 7.48280811
		 -22.14389992 33.83807755 7.2516036 -22.17344666 33.80460739 7.54540014 -22.15506744 33.69244385 7.32372332
		 -21.8183651 35.16931915 7.16113758 -21.98086739 35.016143799 7.16295004 -22.02025032 34.85804749 7.23299122
		 -21.93283081 34.7245369 7.338449 -21.97080994 34.43654251 7.4362998 -22.05210495 34.018920898 7.61665535
		 -22.023796082 34.16521072 7.5497303 -22.062376022 33.86365891 7.6847167 -21.69485283 34.69811249 7.36264086
		 -21.55714607 34.98030853 7.27875853 -21.40649796 34.86570358 7.14386415 -21.53489876 34.61528778 7.2408638
		 -21.38892174 34.74583817 6.87448502 -21.49899483 34.50106812 7.00014686584 -21.78370857 34.42103958 7.47588444
		 -21.87869835 34.017814636 7.66108322 -21.84979439 34.15480423 7.58716869 -21.89453888 33.87285995 7.71894646
		 -21.59010124 34.32594299 7.38653708 -21.6978817 33.91259384 7.54790401 -21.68030548 34.092205048 7.46833467
		 -21.7143631 33.77885056 7.61747074 -22.14702606 33.27058029 7.76270151 -22.11493301 33.19342804 7.62817192
		 -22.10445786 33.39742279 7.85772657 -22.013267517 33.17052078 7.65623474 -22.050067902 33.2378273 7.79918623
		 -21.88947487 33.2300148 7.64014435 -21.90820122 33.29862595 7.809484 -21.13803291 35.22079086 6.67632675
		 -21.65598679 35.70931244 6.35330153 -21.74082756 35.8462677 6.62901974 -21.42394257 36.4312439 6.28475237
		 -21.35178757 36.21285248 6.039168835 -21.5376873 34.2006073 7.15213299 -21.65196991 33.80787659 7.33393812
		 -21.63223648 33.97131348 7.24845076 -21.93320847 33.43586349 7.88128281 -22.03314209 33.31389236 7.85786533
		 -21.9438591 33.34799576 7.8635273 -21.80381775 33.43412781 7.77604485 -21.79416466 33.3433609 7.57815886
		 -21.66846466 33.66717529 7.41275978 -20.92261696 36.21366119 5.71858835 -21.36689377 35.66744614 6.16304636
		 -21.52334595 35.38735962 6.32698202 -21.76370811 34.88286591 6.54902601 -21.91961288 34.76925278 6.65089941
		 -21.96398735 34.62184906 6.73248625 -21.86415672 34.45443726 6.77217913 -21.9352951 34.15852356 6.93658018
		 -22.0013656616 33.73687363 7.13011599 -21.97618866 33.9287796 7.046905994 -22.0093898773 33.60172272 7.20049572
		 -21.51612091 34.73761749 6.6564436 -21.62426758 34.46162033 6.81249714 -21.68775558 34.12680435 6.96472645
		 -21.76996803 33.72325134 7.1525054 -21.73385429 33.90919495 7.068222046 -21.79339409 33.58551025 7.22723246
		 -22.040031433 33.23755264 7.47609138 -21.25979805 35.25694656 6.43197012 -21.060625076 35.51429367 6.22216034
		 -21.90206909 33.24460983 7.496696 -21.92026711 33.21173477 7.56702852 -21.99639702 33.18774414 7.56176376
		 -20.78581238 35.82400894 5.91308117 -20.30321884 37.056949615 5.22243404 -19.9757309 37.47872543 4.95807695
		 -19.66630173 37.8336525 4.86633682 -7.264462e-31 39.026992798 -2.31385827 -9.0986131e-31 37.18673706 -2.52431512
		 -7.49066114 -0.0060984278 1.8945415 -9.23983383 44.94881821 -0.18804373 -8.14762783 45.77602386 -0.43996063
		 -7.19267845 46.49459839 -0.71222818 -10.39729595 44.11626053 0.047475561 8.8034418e-31 52.86669922 -3.41051841
		 2.3177805e-31 51.50836563 -4.3628583 4.2682449e-31 48.074146271 -4.83933926 4.1166409e-31 49.7771492 -4.90361118
		 4.5472103e-32 46.099517822 -4.43653393 0.079901978 30.060121536 -2.37675571 0.2079405 29.49246407 -0.12718493
		 4.2710476e-30 53.44125748 1.77994478 9.657303e-31 54.2935791 2.053196669 -4.9683452e-30 54.42942429 3.89593673
		 -5.0227019e-30 55.071990967 4.052147388 -5.0337177e-30 56.093650818 4.15193558 -5.0375301e-30 56.83428955 4.21605158
		 -5.3185142e-30 57.13955688 4.79302025 6.605004e-31 55.79032135 -2.53037691 5.2358489e-30 54.52859116 -2.82290268
		 -1.5415824e-30 56.84866714 -2.45437002 -3.033413e-30 62.66545105 0.71289504 -14.22422218 44.18317413 -1.79393399
		 -13.34078979 43.070087433 -1.8113184 -4.66084051 16.086055756 0.96426982 -6.99624252 17.23865509 -0.92175949
		 4.21508741 46.013126373 4.62825727 3.92977691 47.43889999 4.55501604 2.0088205338 47.14923859 5.062152863
		 2.14956522 45.76922226 5.3824234 2.22114253 44.098083496 5.14375544 4.28584099 44.39068604 3.88901973
		 1.8385433 48.45728683 4.42821789 1.62987399 49.66617203 3.62517166 1.45555556 50.86075592 2.79811096
		 1.22364891 51.73320007 1.79261279 3.5512774 48.78815842 4.048847198 3.19064379 49.97782516 3.31555486
		 2.83098507 51.078594208 2.37704206 4.80810022 49.30879211 3.11524844 4.39016962 50.28675461 2.4905808
		 5.25771379 50.56799698 1.75687575 5.74991512 49.80770493 2.18099046 2.49524927 52.03326416 1.065340161
		 3.94276524 51.20463943 1.67988455 3.61724472 52.1925087 0.44640458 5.61567163 46.6214447 3.45080256
		 5.25949717 48.023262024 3.50008416 6.48730898 47.53174591 2.38136601 6.2433672 48.73304749 2.44795036
		 7.6161952 51.3288765 0.3104741 6.75991964 50.43706512 1.32257748 7.28956032 49.45886612 1.58742583
		 8.27938271 50.54142761 0.71774745 6.81509447 51.88114548 -0.017520107 6.10633373 51.1095314 1.02206862
		 4.80576706 51.30543137 1.13244987 4.74177599 52.0041694641 0.023423998 5.51892185 51.59977341 0.58301002
		 5.89155054 52.093070984 -0.19459654 9.042290688 50.84680939 -0.77008259 8.19548607 51.60179901 -1.21520448
		 9.20241547 50.31851578 -2.6681354 8.33825493 51.059761047 -3.029623032;
	setAttr ".vt[1162:1327]" 7.25392151 52.077125549 -1.5015347 7.29101801 51.55037689 -3.20993185
		 5.98241663 51.84140396 -3.17525721 6.093958378 52.3519783 -1.53547454 2.19370842 42.73578644 4.80156898
		 2.16938305 40.80476379 4.58536148 2.03306818 37.046226501 4.75074244 2.12065482 38.90816116 4.55466318
		 1.91097522 35.2154541 4.95397139 1.45620227 33.46487427 4.92147398 0.98478192 32.18199539 4.71842432
		 4.15636539 42.95992279 3.53960586 5.59765387 45.11950302 1.98093593 6.18794203 46.43027115 1.32972503
		 10.91671753 48.67905045 -1.93533218 9.94801521 49.52458572 -2.31429505 9.6991415 49.89525604 -0.35267431
		 10.58714199 48.91903305 -0.045829639 12.74396992 46.88536835 0.46276325 13.14397049 46.66833878 -1.14238334
		 12.05738163 47.71453476 -1.51901174 11.64128017 47.91483688 0.19154881 14.14398003 45.58250427 0.69306952
		 14.53789616 45.22307968 -0.70632666 13.83073997 45.95555496 -0.92467546 13.45942593 46.21915054 0.59326464
		 15.41925144 44.6669693 1.47148097 16.048191071 44.20080185 0.25981599 15.30883884 44.69531631 -0.279897
		 14.80326843 45.10254288 1.032207608 14.55786419 44.44459915 2.36667585 14.022861481 44.77890015 1.9049927
		 3.92609072 41.012264252 3.42450762 3.84565401 37.060138702 3.5071981 3.88342428 39.094139099 3.41417098
		 3.78730845 34.65194321 3.9304173 5.26756907 35.059459686 2.064096451 4.64217186 37.25435257 2.2944293
		 4.51479435 37.33136749 -0.67574644 4.95917845 37.32725143 0.79488611 5.11520863 34.94857788 -0.12769267
		 4.49163485 39.28026962 2.12679434 4.25475454 39.28633499 -0.8295477 4.33184958 41.21712494 -1.38910782
		 4.82332945 41.27354813 0.17066582 4.74421406 39.3102684 0.58536196 4.56165743 41.275177 1.85191059
		 5.085830688 43.11037064 1.63940501 4.79418659 43.16180801 -2.18694305 5.25956631 43.10871124 -0.28123024
		 4.97311687 52.45527267 -1.32318497 4.71559477 51.98487854 -2.94429469 9.70826149 48.34851837 1.29718411
		 8.70429325 49.20532227 1.24354422 10.85285378 47.37477875 1.46820891 13.44057465 45.16111755 1.52680027
		 12.75714111 45.72258759 1.57144511 2.18150687 52.97231293 0.37335089 1.72624266 54.16363525 0.3533777
		 1.027802944 53.7218132 1.42167115 1.10295498 52.626091 1.47444069 1.83869874 55.1469841 0.57642454
		 1.12774658 54.603508 1.7169944 1.53723574 55.14908218 2.89517927 0.7715711 54.50426483 3.60442138
		 1.95721662 55.3511467 1.77232862 2.26777244 55.99860382 0.74740124 1.22566962 55.52150345 3.3907783
		 0.71957862 55.12848282 3.78021669 0.36915419 57.16730881 4.6260848 0.5751034 56.92342758 4.018107414
		 0.59422165 57.40472794 3.95026064 0.39752078 57.46262741 4.64481449 1.3890301 56.10025787 3.41619158
		 0.5751034 56.11299896 4.036370754 1.94594777 56.058059692 2.77666116 2.26264334 56.34537506 1.84460533
		 2.45405936 56.90026855 0.79045624 1.95061076 55.5825882 -0.80475616 2.092599154 56.63829041 -0.62460887
		 2.43323112 57.22364807 -0.42285639 1.86916375 54.53092194 -1.13777208 2.49820232 53.45703506 -1.34410989
		 3.81612158 52.99874115 -1.24369991 3.51541018 52.52946472 -3.0074503422 1.68046761 52.98770523 -2.99302459
		 1.27299905 54.49695969 -2.34673262 1.34986079 55.74641418 -1.91812515 1.41856241 56.82372284 -1.77473795
		 3.15823412 51.21439362 -4.11958599 1.5792805 51.51101303 -4.1895504 2.29077697 32.57859039 4.5625639
		 1.11568677 30.94916916 4.18946648 1.46567583 30.025432587 4.15436888 2.84173584 31.28954697 4.72094774
		 4.61464643 32.52658844 4.0022029877 5.8154006 32.93224716 2.10176778 0.47955695 29.70136642 2.3348515
		 0.73485959 28.95054436 2.43606234 5.59566689 32.8673439 -0.21359666 4.21528864 32.47127151 -3.40226173
		 3.8757565 34.33696365 -3.20165205 4.80663538 34.58477402 -1.68321264 5.23387289 32.75411606 -1.81824088
		 2.48731828 34.33131027 -3.68767071 2.62537718 32.23188019 -3.98598933 3.60883045 36.05424118 -2.59528852
		 4.23235655 35.72932434 -1.84301805 2.33499742 36.076946259 -2.99986339 7.82616472 48.10916138 1.62292397
		 8.69048691 47.3861084 1.79478598 6.6001153 46.94989014 0.97943997 7.21189976 46.99255371 0.84178114
		 7.10368109 48.055610657 1.80831087 9.84862041 46.41704559 1.94691718 8.075529099 46.28622818 0.98628545
		 9.21444321 45.37630081 1.17659509 2.87201953 57.32616043 -0.03668227 2.72109389 57.26523209 0.48518518
		 2.8367362 58.37976456 0.3435854 3.21972394 58.35240555 -0.49723127 3.11760426 58.94903564 -0.20074217
		 2.93061805 58.84893799 0.24884878 2.5135901 58.34463882 0.77227056 2.6491282 59.0105896 0.55007857
		 2.7553668 59.14115143 -0.32703176 2.64796257 58.46136856 -0.65724993 1.59295857 57.5485878 -2.14676762
		 2.28455925 57.50995636 -1.43566012 1.8034153 58.74604034 -2.78691983 1.77194011 60.5430069 -2.42406082
		 1.82867324 61.74699402 -1.34768474 2.53698301 58.56768036 -1.71419656 2.65534544 59.8099823 -1.47397435
		 2.60793829 60.70411301 -0.76232284 2.69016242 59.72021866 -0.22864245 2.56954622 59.88296127 0.63098168
		 2.44496632 61.11329269 0.69898373 1.63469243 62.20241547 0.73885238 1.3407681 56.58948517 3.54014993
		 1.14344537 57.33789444 3.51333761 1.051584244 58.18484879 3.35611653 0.56414533 58.35209656 3.53913927
		 0.34801525 58.58905411 3.80562997 1.76463485 57.56148148 3.20200467 1.53505969 58.21352768 3.20806646
		 1.98146415 56.83879852 2.91476369 2.45483637 57.52309418 1.92706251 2.30546498 57.99840927 2.59985566
		 1.90677857 58.3067894 2.9550209 1.93887556 58.72171783 3.042918444 2.23505378 58.97856903 2.70298576
		 2.43315363 59.66527176 1.53288352 2.33460879 59.28679276 2.16106749 1.50925779 59.049919128 3.4790647
		 1.56125009 59.51062012 3.48085189 0.87835383 59.030487061 3.65346098 0.86265504 59.5009079 3.75868917
		 0.40995541 59.19112396 3.86710405 0.93532014 58.68169403 3.36124587 1.50311816 58.7255249 3.27210498
		 2.12042165 60.81555939 2.31611228 1.31488836 61.50770569 2.77844858 1.84134102 60.08852005 3.094988585
		 1.016922712 60.24216461 3.47510099 12.024846077 46.33139038 1.59875286;
	setAttr ".vt[1328:1493]" 11.16697121 45.37874222 1.93905556 10.4384203 44.43172073 1.26797915
		 11.96464634 44.83086014 1.80526721 12.14790344 43.48424149 1.27525413 12.72056484 44.32402039 1.67870593
		 11.31174088 43.93959045 1.26214528 12.56023598 45.61035156 -2.10689878 13.35992813 44.92774582 -1.97404957
		 12.41956139 43.88887787 -1.87781179 11.58297729 44.62337112 -1.94395518 11.57188034 43.34932327 -0.94584298
		 10.77175236 44.054199219 -1.11149836 12.38780117 42.63006592 -0.73675138 11.93712902 42.79863358 0.3764402
		 11.17939091 43.44531631 0.2003926 15.8483305 43.073993683 -0.63549 15.032460213 43.63089371 -1.28579378
		 14.88644218 41.7926178 -0.75757575 14.087080002 42.42329407 -1.36193979 13.72733402 41.3224678 0.066416018
		 13.062933922 41.96972656 -0.3980642 13.16953087 41.73315811 1.06530571 12.57365704 42.24506378 0.6702683
		 13.14083385 42.6534996 2.1168189 13.72319031 43.68245316 2.58681798 13.24971581 43.97538757 2.096759319
		 12.67445755 43.038768768 1.6577127 11.53935719 46.65027237 -2.64279008 10.40277386 47.60854721 -3.063105822
		 9.3894825 48.34462357 -3.40882921 8.49031067 49.051433563 -3.71029115 7.65269899 49.65684891 -3.95938015
		 6.73796034 50.083930969 -4.10513735 4.36326313 50.76646423 -3.95522523 5.5855794 50.46260452 -4.079552174
		 1.22924459 47.88669205 -4.85379457 1.38343441 49.50389862 -4.86521912 2.92139006 49.18776703 -4.87069654
		 2.74881768 47.62638474 -4.87784767 10.52046871 45.50775528 -2.52090168 9.43209553 46.36301804 -2.88860607
		 8.42538357 47.1724968 -3.2357173 7.56750154 47.81448746 -3.62205672 9.67577553 44.90587997 -1.49289751
		 8.62074375 45.69338226 -1.83002591 7.60281515 46.44687653 -2.19962525 6.85076523 46.70675659 -2.56191111
		 4.12230492 48.91448975 -4.49353075 4.062449455 47.1536026 -4.62785816 6.18452597 49.071659088 -4.28414011
		 6.37616634 47.80848694 -3.9845221 5.37976456 47.052017212 -4.079807758 5.25805807 48.82429504 -4.29289246
		 6.18536901 46.2781105 -2.90745711 5.43478203 45.4274025 -3.19123363 3.93460774 45.41579056 -4.2917676
		 2.71101761 45.77088928 -4.73696423 1.030523062 45.97890472 -4.65243101 5.58094978 44.66366196 -0.53948349
		 6.018536568 45.96977997 -0.78939182 6.52543259 46.77445984 -0.85481477 2.46494102 43.49445343 -4.064809322
		 0.94083804 43.69185638 -4.016242027 3.8025794 43.31639481 -3.56345177 3.41339374 41.20049286 -2.51491141
		 2.25440526 41.25287628 -3.010899305 0.87338001 41.39144516 -3.052788734 3.32798314 37.33953094 -2.075501442
		 3.24505949 39.2030983 -1.87165058 2.15990186 37.26888657 -2.45203876 2.10868645 39.11465454 -2.30437708
		 0.93311912 34.3503952 -3.60770154 0.96168691 32.22241592 -3.75785589 0.900814 36.094818115 -2.96916533
		 0.86685169 37.21992493 -2.48390245 0.83553189 39.040981293 -2.32504964 2.57009768 30.06388092 -3.45585489
		 0.74731183 29.93370819 -2.64476705 4.33143282 30.3311615 -2.98458695 6.22194624 30.024085999 -0.21661083
		 5.1797533 31.19265556 -2.069123745 6.60746193 30.35324097 2.27114725 5.70894861 24.29792595 -1.68054855
		 3.20603704 23.44850922 -1.65277803 2.41955185 25.44601631 -2.078966141 5.074359417 26.46392632 -2.11051416
		 5.93266201 21.94455338 -1.063451648 4.099372387 21.41032982 -0.84888089 7.26621342 27.75510025 2.4858942
		 6.99882126 27.30822182 -0.19704767 7.34233761 24.89332962 0.061720151 7.58112144 25.094999313 2.59215856
		 7.36384344 22.46068573 0.51083571 7.45977402 22.4930706 2.55444813 5.43071461 30.14668274 4.21080017
		 6.08361721 27.59181213 4.57461071 6.47022152 24.78561211 4.58876848 6.35858679 22.020397186 4.17793083
		 3.41873074 29.40360451 4.97127485 3.84942198 26.98859787 5.38727617 4.35544157 24.21377182 5.3557682
		 4.81155491 21.45341301 4.7571044 1.83999276 28.57022858 4.3169632 0.89016038 27.81105423 2.62733054
		 2.17709827 26.45576477 4.46969271 1.40144658 25.88871002 2.714077 2.7417767 23.88175201 4.3821497
		 2.032928705 23.64841652 2.63608599 3.3738389 21.18136978 4.017498493 2.85158944 21.21455383 2.38146472
		 0.63856572 28.46353912 -0.068566009 0.36634341 29.40277672 -0.16237806 0.79646856 27.12146568 -0.013622869
		 1.25198138 25.3462925 0.25011599 2.021968126 23.32423973 0.4944582 3.016426086 21.25038147 0.69474709
		 1.36241639 28.50004387 -2.04462266 4.58142948 29.062452316 -2.22784567 2.90452576 28.71579742 -2.6746459
		 3.23737097 27.43588638 -2.66316581 1.73403323 27.035907745 -2.18554354 5.23895121 19.21238518 4.34998608
		 6.69123077 19.74250984 4.14565897 7.19198036 17.6910305 3.82219005 6.92384672 18.71339607 3.97856331
		 5.50138569 18.2099514 4.12138796 5.74293518 17.21072006 3.90919089 7.6409297 15.86261082 3.01151967
		 7.43303061 16.75242805 3.44897962 5.99163151 16.31049538 3.50696468 6.23496246 15.44608688 3.012638092
		 8.21286488 13.24074459 1.79846931 7.9270668 14.60442257 2.36009049 6.37946081 14.19655514 2.36715746
		 6.551054 12.83851624 1.80287421 6.76027107 11.26974964 1.21409917 8.38714027 11.53937054 1.087520719
		 8.58860683 7.97172451 -0.48141873 8.5352602 9.8026762 0.3490997 7.0036330223 9.51606941 0.53441536
		 7.28144979 7.71814203 -0.2351284 9.035214424 4.74624062 -1.28522992 8.73610878 6.37039471 -1.010386705
		 7.46772432 6.14605236 -0.78939587 7.65946102 4.57227564 -1.097283959 7.78005695 3.49810624 -0.94749731
		 9.48937893 3.60598826 -1.19567001 7.63368845 20.32017136 2.58207417 7.98335075 18.38513565 2.29378557
		 7.77379704 19.33556747 2.47236443 7.75748968 18.67599297 0.69418937 7.64565659 19.51679993 0.72060776
		 4.046545029 19.11598206 3.52158689 4.48008251 18.26935387 3.19004536 3.51970816 19.30687714 2.06800127
		 4.83070993 17.45555496 2.8228786 5.042315006 16.59667778 2.43069315 3.90650439 18.49818802 1.90213346
		 4.21384478 17.67454147 1.72705913 4.42716074 16.87119102 1.3967756 8.3562088 16.69339943 1.49420226
		 8.18922138 17.54091263 1.90474129 8.10436153 17.18351746 0.056292217 7.94725323 17.9603672 0.40479249
		 3.68443108 19.48849487 0.70102274 4.081132412 18.71701622 0.63710576;
	setAttr ".vt[1494:1659]" 4.40121412 17.94172096 0.49981675 4.62908459 17.22326851 0.20446268
		 4.7610364 19.69434166 -0.41332868 5.066436291 18.9836731 -0.29910672 5.3321991 18.30939484 -0.30022821
		 5.52047873 17.61787987 -0.60589391 6.33571577 20.066011429 -0.58974874 7.61361885 20.42606735 0.70675576
		 6.46659279 19.31369591 -0.41190091 6.62062073 18.63238907 -0.34502891 6.81876755 17.93962479 -0.61550677
		 9.226758 13.96108532 0.27507132 8.79061508 15.45217991 0.84121346 8.94885349 14.53489304 -1.38698781
		 8.52006149 15.98834419 -0.71156365 7.62363863 14.77595997 -2.50294709 7.30070591 16.086479187 -1.77366805
		 9.42837524 12.29478455 -0.29458693 9.20505619 12.94743347 -1.92605293 7.81854248 13.21603584 -3.17181253
		 6.069818974 14.49511719 -2.60229611 5.86604786 15.79612637 -1.84117305 6.33622694 13.012238503 -3.2508111
		 5.26852036 15.75761127 1.96259117 5.33462143 14.46863461 1.34488285 4.62621355 14.81656075 0.31012252
		 4.66569138 13.32715988 -0.32589117 5.44714355 12.98455238 0.85185558 5.55717325 11.47795105 0.27732491
		 4.89146662 11.77894974 -0.96146482 6.33626413 7.81628036 -1.056219339 5.89582634 9.71807861 -0.33839199
		 5.38396358 10.064534187 -1.58685553 6.061650753 8.16639137 -2.192065 6.72162342 6.14727879 -1.5632596
		 6.59297705 6.30869675 -2.62697911 6.9516778 4.60667944 -3.077889204 6.97926044 4.46629095 -1.92430556
		 4.79214334 15.31390667 -0.91647524 4.77714825 13.89135933 -1.59331656 4.87797928 16.50143814 -0.15094809
		 5.71138716 16.9311924 -0.94961095 5.014222622 12.40485096 -2.31401038 6.31865549 8.5505209 -3.23281622
		 5.54883385 10.6174612 -2.81049728 7.17019463 8.97995758 -3.89353657 6.70112371 11.1595211 -3.64361334
		 8.048723221 11.34325981 -3.57534361 8.24163342 9.17889595 -3.84415412 9.30338192 11.057935715 -2.34569263
		 9.20654774 8.98021412 -2.84594083 9.43146229 10.48984432 -0.8567369 9.25414467 8.44913578 -1.49859297
		 9.37251949 4.91219854 -2.25355768 9.22943592 6.67391443 -1.92927468 9.24479961 5.034332275 -3.45081472
		 9.15039349 6.93147421 -3.084196568 8.47738934 5.13306999 -4.42718029 8.36883354 7.071733952 -4.0055565834
		 7.61671209 5.0720644 -4.44515944 7.43033504 6.92571878 -4.040921688 7.14688921 4.8084693 -3.81470513
		 6.80037785 6.58388329 -3.45149279 7.10594463 3.23330402 -1.82624674 6.81145048 3.13916087 -3.3550005
		 6.85365343 3.21238995 -4.28778934 7.28040552 3.25573015 -5.22788286 8.2773428 3.22605538 -5.27334309
		 9.330863 3.16234016 -4.025042534 9.75926304 3.41249728 -2.48648119 9.1788187 1.32341194 -4.42260504
		 8.1706543 1.34361506 -6.023299217 7.9653759 0.06697017 -5.80454016 8.91401768 0.050060399 -4.37238216
		 6.95010138 1.34816253 -5.90054798 6.25152254 1.34265506 -4.77150679 6.32310867 1.33241415 -3.67296791
		 6.91246128 0.071980879 -5.74572992 6.25951576 0.067593351 -4.77769327 6.39102411 0.05746625 -3.70720029
		 7.72485495 1.32634401 1.84887648 8.078290939 2.19340134 1.80304313 7.97283745 2.81336021 0.13846259
		 7.61517143 1.3187573 0.096462697 11.36016369 1.2495743 3.11829758 11.2356987 1.26614642 1.16819322
		 10.44151592 2.20135379 1.35227907 10.65424728 1.68396127 3.27148485 8.79173279 1.2455759 5.02174902
		 8.78130627 -0.02741261 5.057074547 10.68789768 -0.033135913 4.69796658 10.78133392 1.23963118 4.64363861
		 7.083294392 1.31395221 -1.85428584 7.36530161 0.038441218 -1.91963375 7.56988621 0.014494266 0.11710654
		 8.27409363 1.28277063 3.70021415 8.039587975 -0.024401333 3.73517108 9.72858429 1.30454004 -2.44739676
		 10.6190443 1.28294468 -0.59401739 9.46125698 0.031949613 -2.39383674 10.49798393 0.010334153 -0.5716843
		 9.90123081 2.90776062 -0.22571141 11.33233547 -0.026642986 3.11181402 11.11492157 -0.0084130988 1.1816721
		 8.52056313 1.68962383 3.67858315 22.077402115 35.9829483 8.7861557 22.23147011 35.69935989 9.034578323
		 22.32710075 35.49657059 8.76299286 22.1819191 35.77833557 8.50221539 21.8227787 36.39910507 8.30544567
		 21.8905735 36.23832703 8.10165215 22.33435249 35.58301163 9.14520931 22.42365456 35.39048767 8.88379383
		 22.53468513 35.1851387 9.07861042 22.45410728 35.38109589 9.34269524 22.42228127 35.22146606 9.48158932
		 22.5193634 35.017059326 9.18863297 22.55648041 34.42491531 9.65175247 22.54190826 34.65491104 9.46431255
		 22.44332886 34.86454773 9.74063587 22.46468353 34.6257515 9.9207983 22.49767685 34.48648071 10.02752018
		 22.57471085 34.27589417 9.75805855 22.50196266 34.29335403 10.15373993 22.57312202 34.098316193 9.90040493
		 21.54606056 36.26150894 8.67813301 21.75912285 35.92583466 8.99612713 21.93621826 35.61700058 9.30152893
		 22.1630249 35.57720184 9.30756474 22.22241974 35.43695068 9.43870068 22.076629639 35.26304626 9.60083866
		 22.18398666 34.90390015 9.85584068 22.28534317 34.54143143 10.13732433 22.25635529 34.66860962 10.022053719
		 22.3080349 34.36239243 10.26592541 21.72339821 35.35829163 9.38678837 21.82949257 35.21300507 9.52693272
		 21.63339233 35.15465927 9.22937775 21.72332191 35.038860321 9.34049129 21.6979351 34.9420166 8.96005917
		 21.79303741 34.82156754 9.092098236 21.95343208 34.82545853 9.84194088 22.055921555 34.49723434 10.12868786
		 22.043416977 34.60618973 10.016138077 22.076389313 34.33691025 10.25754929 21.79125595 34.65520477 9.67960835
		 21.90320969 34.31477737 9.953866 21.88902855 34.45016861 9.85699654 21.91866302 34.15644836 10.067756653
		 22.55382347 33.65983963 10.58124161 22.58402824 33.51010132 10.38367844 22.39424896 33.83415222 10.62218761
		 22.4269104 33.41827393 10.40837955 22.38582611 33.56449509 10.60991192 22.23086166 33.47227097 10.32058334
		 22.17773056 33.62028122 10.52414417 21.50678253 35.69825363 9.068379402 21.37382507 35.47966385 8.90834904
		 21.44669914 35.2623291 8.63834095 21.16684723 35.73491287 8.76014137 21.30480194 35.41961288 8.36741352
		 21.27552605 36.046024323 8.77007103 20.91032219 35.74483871 8.52334976 21.011453629 35.64178848 8.3060627
		 20.95207787 35.84111023 8.91212749 20.66911125 35.87428284 8.68908787;
	setAttr ".vt[1660:1825]" 21.21146965 36.076339722 8.80490685 21.75758934 36.43479919 7.77583408
		 21.66350365 36.6944313 8.15917683 21.64852524 36.67877579 7.56567049 21.52310562 36.97301102 7.92237616
		 21.84577942 34.4295845 9.42267132 21.97085762 34.11300278 9.70944214 21.95520782 34.23176575 9.60496616
		 22.16518784 33.83372116 10.57449818 22.19452286 33.71767044 10.5905056 22.3181076 33.6999321 10.65343285
		 22.037746429 33.76574707 10.4014616 22.09536171 33.61260986 10.19442749 21.98735237 33.96736908 9.85044575
		 21.34004593 36.5592041 8.51553249 21.37973022 37.021987915 8.19744205 21.11449814 37.47798538 7.4056282
		 21.31232262 37.20822906 7.085955143 20.76515388 37.93171692 7.25453377 21.16815567 37.34668732 6.72432232
		 21.65547371 36.36734009 7.47600174 21.64369583 36.019729614 7.80715227 22.025585175 35.48089218 8.38583755
		 21.8142662 35.83482742 8.067471504 22.18852234 35.17590714 8.64277363 22.34311676 35.20707703 8.78051567
		 22.41535568 35.042461395 8.91527843 22.3415184 34.80195236 8.99103546 22.39738464 34.45845413 9.31483078
		 22.45009041 34.10148239 9.6265316 22.42610168 34.23983765 9.51994991 22.45661736 33.95329666 9.75274086
		 22.012336731 34.73788071 8.92704964 21.92306519 34.89062881 8.73682785 22.081581116 34.34671783 9.28403854
		 22.17537689 34.014213562 9.5803051 22.14650917 34.14946365 9.47800159 22.21358871 33.87443542 9.70485878
		 22.51046753 33.52894974 10.15516758 21.70930862 35.25205994 8.44872665 21.51646996 35.44245529 8.24793053
		 21.28086853 35.38077164 8.16747665 21.024957657 35.48195267 8.086813927 21.47333336 35.50884628 8.10892296
		 22.32004929 33.47463989 10.1117897 22.4460659 33.41834259 10.24914646 22.3135643 33.42765808 10.22175026
		 21.38989067 36.67121887 9.4588623 21.56439209 36.44528198 9.74211311 21.72251511 36.28629684 9.4955864
		 21.56375313 36.50675201 9.20889664 21.24621964 36.94393921 9.083474159 21.40014458 36.82614136 8.87586212
		 21.68373299 36.33007431 9.90328789 21.82319069 36.16458893 9.64584541 21.89170265 36.036491394 9.79009438
		 21.74831772 36.19915009 10.040314674 21.74429321 36.044437408 10.15954685 21.88012886 35.87662506 9.91918945
		 21.95982552 35.33781815 10.36723137 21.91439629 35.55753708 10.183074 21.80736542 35.73597717 10.42052174
		 21.85393524 35.52280426 10.60437298 21.89429092 35.40398788 10.72155571 22.011123657 35.20565414 10.47491932
		 21.90733337 35.22029114 10.84225845 22.026538849 35.042247772 10.61181927 20.87735176 36.91534805 9.32425308
		 21.094263077 36.62614441 9.63994884 21.27132607 36.36849976 9.95311642 21.50215149 36.35456085 9.99877739
		 21.57150269 36.22493362 10.140481 21.4227829 36.07251358 10.27445316 21.54903221 35.75326538 10.52999306
		 21.66796112 35.430233 10.80967808 21.63401031 35.54328918 10.69457626 21.69951248 35.25572586 10.93871689
		 21.076566696 36.10752487 10.014676094 21.16495323 35.98452759 10.19691849 21.015508652 35.86560059 9.88591099
		 21.095355988 35.77817154 9.99619484 21.16987038 35.67189026 9.60535336 21.25094223 35.58044434 9.73300648
		 21.32976341 35.64230728 10.50053215 21.45915794 35.34617996 10.77234936 21.43427277 35.44997406 10.67165279
		 21.49305916 35.18589401 10.89456558 21.19684029 35.4264946 10.32697964 21.346138 35.14908218 10.59863949
		 21.31473541 35.26861954 10.50663471 21.38068581 35.0005569458 10.72050953 21.97648239 34.63554764 11.24135971
		 22.069284439 34.49814606 11.087644577 21.82276154 34.79138184 11.24944305 21.91892433 34.42325211 11.087264061
		 21.85166931 34.56047058 11.22947788 21.75786018 34.43893433 10.99434853 21.69944763 34.59194183 11.14526844
		 20.86056328 36.39914322 9.7049818 20.77741814 36.086715698 9.57068062 20.96478653 35.86083221 9.28837776
		 20.59410858 36.30096054 9.30368137 20.80314636 35.96821976 9.045648575 20.65102196 36.64969254 9.41564083
		 20.40762901 36.4474144 9.1641674 20.48534203 36.097557068 8.85439587 20.45300865 36.80530167 9.25476646
		 21.33853912 36.96855164 8.60407543 21.014192581 37.17764664 8.940835 21.25618172 37.23433685 8.35500145
		 20.86302948 37.4256134 8.73394203 21.35524178 35.23947906 10.079184532 21.47128487 34.96580124 10.37580299
		 21.45555496 35.076877594 10.27497959 21.64764786 34.74891281 11.15765858 21.69698143 34.65900803 11.18279362
		 21.77966499 34.6496582 11.24805927 21.57704735 34.68592072 11.032388687 21.64048767 34.51913071 10.84835911
		 21.49722862 34.82965469 10.50938416 20.71127129 37.087520599 9.15336609 20.48159599 37.29534912 8.96140766
		 20.3045311 37.85070801 8.26613045 20.85653496 37.74223328 7.76373339 20.033864975 37.53712845 8.78383636
		 21.50126076 36.22028732 9.062570572 21.38266182 36.48496246 8.74748898 21.64510918 35.98031235 9.35480785
		 21.77191353 36.026123047 9.50563717 21.82068443 35.88860703 9.65215874 21.7637825 35.6740799 9.71654987
		 21.83167267 35.37812805 10.03523159 21.93029785 35.040958405 10.32780743 21.88910103 35.16941452 10.21681118
		 21.95129204 34.8832283 10.46067715 21.49319458 35.56082153 9.61673355 21.42899895 35.67062378 9.45313168
		 21.60834503 35.24135208 9.99066448 21.68950462 34.91910934 10.29501534 21.65816116 35.055282593 10.18797398
		 21.73222351 34.79211044 10.4142561 22.034742355 34.48714066 10.85158348 21.26514626 35.89194489 9.15319252
		 21.18569946 36.0078239441 8.95379066 21.84807968 34.42869568 10.80911255 21.95638847 34.39918518 10.95213509
		 21.83937073 34.40106583 10.91686916 20.20654297 36.98849106 9.098231316 20.15196037 36.63116074 8.92865944
		 20.27865028 36.31971741 8.55513573 19.78834343 36.79243469 8.68184853 19.91749382 37.1437645 8.99023724
		 19.46670151 37.27387619 8.83442402 19.45400238 36.89595413 8.66700172 19.51207542 37.68657303 8.6614399
		 19.57585526 37.91630173 8.38253689 19.25379944 38.69084167 7.16886806 18.81954575 38.2473526 7.91727781
		 19.24308205 38.12877655 8.15727329 19.84870148 38.31734848 7.67152548 19.76375008 38.73193741 6.93202877
		 19.51609421 39.071239471 6.59984875 19.011629105 38.98374557 6.76995993 18.10354424 40.16457748 5.69941139
		 18.43829536 39.75078583 6.060421944 18.96760178 39.9461174 5.82432461;
	setAttr ".vt[1826:1991]" 18.67916107 40.39806747 5.42216873 17.8287468 41.65248871 4.27514935
		 17.13531303 41.42049408 4.64253807 19.4771347 39.90203857 5.39104939 19.2128315 40.32890701 4.91620827
		 19.78163147 39.42954254 4.71892023 19.45652199 39.76290894 4.20717764 18.41614914 41.444664 3.54667187
		 18.50815392 40.74276733 2.83153224 16.93300056 42.93531418 3.15466833 16.084403992 42.74827194 3.78496146
		 15.19652557 43.79497147 3.048881292 16.11656952 43.97932053 2.23319364 17.56237602 42.56600571 2.25944686
		 16.78028679 43.51531601 1.15182948 17.53505707 41.64048386 1.47272456 16.65559959 42.42486191 0.27655223
		 15.26288414 42.13354111 3.92248631 14.32244778 43.080459595 3.24120402 16.43638229 40.89820099 4.69864225
		 17.55436516 39.65515518 5.69357014 17.87400818 39.32357788 6.053606033 18.43787766 38.31085968 7.052740097
		 18.42389488 38.71641541 6.71189213 18.28290749 38.069091797 7.81598377 20.27162933 38.57725525 6.58539772
		 20.00055122375 39.0067138672 6.24075508 20.59420013 38.23674393 6.05408144 20.35936546 38.65600204 5.69655418
		 19.56995583 36.68082047 8.23049641 19.94746208 36.58073807 8.24209595 18.66666412 37.041996002 7.048313141
		 18.32969856 37.0065612793 7.7390728 18.095027924 37.56627274 7.69469547 18.28576469 37.57994843 6.90906763
		 19.25603294 39.49410248 6.22650623 18.7730751 39.33695602 6.4215579 19.74139404 39.47512436 5.86598253
		 20.10676956 39.096149445 5.2305975 18.1937542 38.99197388 6.4136076 19.29963493 36.75224686 7.61328411
		 18.86458969 36.73830414 8.10122108 20.41354942 36.17225266 8.30724907 20.66830826 35.96325684 8.25857067
		 20.80197144 35.89044952 8.066839218 20.7570343 35.91367722 7.76933718 20.90245247 35.63178253 7.67990351
		 21.10293579 35.42253876 7.85385895 19.14586067 37.082714081 6.5944953 19.79360008 36.81063843 7.14491367
		 18.76222992 37.50659943 6.25313568 18.28188133 38.0092658997 8.33720112 18.68739319 38.095420837 8.42271328
		 18.21284103 37.9270668 8.67409515 18.60420799 38.018680573 8.76480198 18.53775406 37.856884 9.10495853
		 18.187006 37.7654953 8.99643135 18.17936134 37.6049614 9.25745392 18.49776649 37.67100906 9.36914349
		 18.41417122 37.2612915 10.12072659 18.44474792 37.44023895 9.7504797 18.12928009 37.37190247 9.65796661
		 18.088460922 37.20162582 10.010220528 18.081350327 36.95735168 10.25587559 18.39758301 37.017448425 10.34588623
		 17.992836 37.7121582 8.58413887 18.038959503 37.55183792 8.28521729 18.00522995 37.60238647 8.86438084
		 18.0057258606 37.34054565 9.048279762 18.0034809113 37.16978073 9.49284267 17.8958931 36.78082657 10.099733353
		 17.91221619 36.96953583 9.8191309 18.19395638 37.088207245 8.29170799 18.10490417 37.025882721 8.92033386
		 18.6127758 36.89666367 8.48070431 18.43446732 36.89148331 8.93369102 19.042596817 37.012634277 8.81621265
		 18.83948898 36.95712662 9.053172112 18.059028625 36.88395309 9.342803 17.96240044 36.52677155 9.93322372
		 17.97236824 36.71896362 9.65821075 18.35716629 36.69992065 9.31554222 18.28354263 36.40969467 9.89738464
		 18.31850433 36.5939064 9.6180191 18.044355392 36.47633743 10.94754505 18.25429726 36.49331665 11.011151314
		 18.36207581 36.79973984 10.54105759 18.051382065 36.73820877 10.45676994 17.89990997 36.54176712 10.44096279
		 18.27272034 36.34240341 10.96376896 18.080198288 36.32618332 10.90632629 18.36724472 36.24456024 10.75425529
		 18.20855522 36.22131729 10.7060318 18.7389164 36.77834702 9.43860912 18.64556885 36.48264694 10.02235508
		 18.65587044 36.6703949 9.71802902 17.9625473 36.32823563 10.25854683 17.91449928 36.4279747 10.64850235
		 18.012020111 36.25005722 10.48570251 18.057901382 36.23760986 10.66722965 17.99611282 36.29541016 10.76200771
		 18.22087669 36.20008087 10.47637844 18.24083138 36.24258423 10.22681618 18.47109795 36.2426033 10.54791164
		 18.56681824 36.31507492 10.31537914 18.81881714 37.93690109 8.87495995 19.085132599 37.85941696 8.66576958
		 18.77708244 37.83176422 9.10280609 18.83930779 37.56399155 9.30870342 18.71333694 37.30244064 9.75573444
		 18.62780571 36.92732239 10.34325027 18.67178917 37.1163826 10.080298424 18.94922066 37.27214432 9.23520756
		 19.15663528 37.36191559 8.88603687 18.87326241 37.057518005 9.64314556 18.78051567 36.69635391 10.21238899
		 18.82767487 36.87782288 9.93916225 18.58342934 36.67269516 10.64387035 18.69309998 36.49398804 10.53685474
		 18.57224083 36.3695488 10.72403812 18.48250389 36.55552292 10.83407974 18.42410851 36.38146591 10.91886616
		 18.46188736 36.3140564 10.81677914 20.25989151 36.44296265 7.9655714 18.50299263 38.0061836243 6.39094973
		 18.44009018 38.26485062 6.17409706 18.81140518 37.62091064 5.80807638 18.29687119 38.36747742 5.90641165
		 18.6102314 37.94104767 5.40736914 19.20321274 37.057369232 6.26869392 18.91999054 37.79585266 4.87279463
		 19.13022423 37.62800217 5.063974857 19.89756775 36.67987442 6.62531757 19.069097519 37.17085648 5.52244425
		 19.4178791 36.74059296 5.86332846 19.46687317 37.2374382 5.11647558 19.85292244 36.29193497 6.20969725
		 20.35848045 36.22267914 6.87992048 20.31930733 36.48274994 7.37069225 20.74241257 35.58459091 7.19620275
		 20.33431053 35.88330078 6.51928282 20.72917938 35.46445847 6.87030029 19.81145668 36.74757385 5.39382362
		 20.18665886 36.18255234 5.72324991 20.5099926 35.76603699 6.15646601 17.50580406 39.071857452 5.22989559
		 17.9013176 38.71964264 5.56819963 17.70553589 38.63352585 4.66346073 18.15786743 38.28730011 5.035447598
		 18.27127266 38.47552109 4.027807713 18.59563255 38.13568497 4.45030069 16.19736671 40.26659012 4.3017478
		 14.79752064 41.31035614 3.42994881 13.76181316 42.086997986 2.72862697 16.36420822 39.663414 3.5328629
		 14.97314644 40.50878906 2.46081328 13.88162518 41.16869736 1.6615839 17.0099773407 39.42127609 2.85739279
		 15.67064762 40.17180634 1.65876758 14.54632282 40.764431 0.72460681 22.24308395 35.47753525 7.90779495
		 22.41391945 35.16212463 8.11879444 22.44094467 34.975811 7.82960796 22.27480316 35.30130005 7.63064241
		 21.96795845 35.90091324 7.56851912 21.98352432 35.77438354 7.37789249;
	setAttr ".vt[1992:2157]" 22.51099396 35.036670685 8.20721436 22.53918648 34.85172653 7.91579056
		 22.60823059 34.61743546 8.082522392 22.58618355 34.80784988 8.3773222 22.53263664 34.63410568 8.49032593
		 22.56608772 34.45484161 8.17621326 22.52305031 33.85752106 8.55945015 22.55613327 34.092048645 8.39923954
		 22.50211143 34.2919426 8.69792747 22.50546074 34.039188385 8.83817959 22.49550247 33.89664078 8.9238081
		 22.51573181 33.71146774 8.65574265 22.48035049 33.71375275 9.019342422 22.49376678 33.55069351 8.76677418
		 21.84653473 35.82017899 7.89739513 22.0061073303 35.46250916 8.15973854 22.15633965 35.13497543 8.39812756
		 22.35250664 35.048179626 8.38726521 22.39296913 34.89534378 8.49984455 22.26306725 34.72731781 8.63431263
		 22.27107048 34.35543442 8.82116127 22.31667328 33.97766495 9.044971466 22.31041145 34.11864853 8.96241283
		 22.31028557 33.79724884 9.14424038 21.8971653 34.91384125 8.46112537 21.99068642 34.68615341 8.59422398
		 21.81870079 34.76828003 8.2872591 21.85624123 34.56968307 8.42260361 21.85058403 34.62179184 8.034954071
		 21.88598442 34.4232254 8.17351341 22.062646866 34.3355484 8.81124973 22.10897827 33.97219467 9.046461105
		 22.091505051 34.11769867 8.94180298 22.11364174 33.80532074 9.13725281 21.87839127 34.22246552 8.65406895
		 21.92920113 33.83298492 8.89391136 21.94953728 34.0067939758 8.78260136 21.92618561 33.6790657 8.99605274
		 22.37953377 33.10335159 9.32993317 22.36609077 33.0022125244 9.18249035 22.31174278 33.26000977 9.39481544
		 22.26011467 32.98731613 9.19080639 22.27131462 33.080142975 9.34556675 22.12165451 33.037128448 9.14233875
		 22.12078857 33.15171051 9.32003498 21.71709824 35.28264236 8.25757408 21.53611946 35.11020279 8.054409981
		 21.57927322 34.9140892 7.81013632 21.35352325 35.33778 7.93642521 21.4253788 35.16166306 7.58483076
		 21.53748131 35.55512238 8.032915115 21.14063072 35.35294724 7.57389402 21.79900932 35.96280289 7.15941143
		 21.81024361 36.14455032 7.42355299 21.70995712 36.20280838 6.97600365 21.70569801 36.39863586 7.25080299
		 21.88945389 34.061668396 8.41842937 21.93647385 33.68719482 8.67677975 21.9556675 33.8557663 8.56009102
		 22.13409042 33.30358887 9.37083626 22.14870644 33.21129227 9.36968994 22.23939133 33.17049789 9.38938808
		 22.024663925 33.29918289 9.23754025 22.023077011 33.1615181 9.034340858 21.9311409 33.53701019 8.7765522
		 21.62445831 35.61642075 7.061637878 21.62129974 35.96027756 6.82513809 22.09104538 35.054172516 7.54082203
		 21.86508369 35.41688156 7.31242847 22.21544647 34.72614288 7.74193764 22.39017677 34.70187378 7.82745361
		 22.44234276 34.52188492 7.92992115 22.31855011 34.32184219 8.0098543167 22.33606339 33.96294403 8.27149391
		 22.34437943 33.59676743 8.5288372 22.35668373 33.76561737 8.4143486 22.33431053 33.44740295 8.63111687
		 22.030750275 34.36159515 8.01198101 21.96809959 34.55012512 7.87157774 22.065153122 33.95194244 8.28755856
		 22.10560036 33.58634949 8.51568604 22.089002609 33.75929642 8.41674137 22.11395645 33.43099213 8.62404251
		 22.32750702 33.026054382 8.98560715 21.79795647 34.89980698 7.6042347 21.66114426 35.19976044 7.40196896
		 21.39239883 35.21546555 7.37920761 21.079097748 35.28364182 7.38775301 21.58299255 35.33060837 7.27658081
		 22.16379166 33.033367157 8.97626209 22.25955582 32.98069763 9.083108902 22.17007256 33.0038909912 9.067064285
		 21.38169289 36.95251465 6.79896164 21.41239929 36.709095 6.59341097 21.23756981 36.83984375 6.23040485
		 20.63382339 37.77383804 5.58822012 20.91363144 35.53395844 7.44356394 20.83541107 35.38986969 6.50054789
		 21.070180893 35.24638748 7.05398035 21.33268929 35.21832275 7.2222743 20.40315628 38.19699478 5.20183516
		 19.82504654 38.26737213 4.5991888 19.44436264 38.58299255 4.17115831 17.85837746 39.804039 2.46241283
		 19.063667297 38.8985405 3.74315381 16.75341415 40.60165787 1.20299864 15.74295902 41.23721695 0.075645246
		 21.83360863 35.52196503 6.74626541 22.0066204071 35.18227386 6.91616821 21.99238586 35.051166534 6.66314411
		 21.82255173 35.43191528 6.54843616 22.11138153 34.99546814 6.99143791 22.052974701 34.87389374 6.74077415
		 22.10377884 34.68181229 6.83579159 22.165205 34.81157303 7.084953308 22.14381981 34.65434265 7.15737581
		 22.097751617 34.52547455 6.90970182 22.13502502 34.0059356689 7.17173624 22.1192131 34.26451492 7.038398266
		 22.11762238 34.39059448 7.28321695 22.15354919 34.11407852 7.40488672 22.17676353 33.96351242 7.4828043
		 22.14390373 33.83807755 7.25159931 22.17344856 33.80460358 7.54539633 22.15507126 33.69244003 7.32371902
		 21.818367 35.16931534 7.16113377 21.98086929 35.016139984 7.16294622 22.020252228 34.85804367 7.2329874
		 21.93283272 34.72453308 7.33844519 21.97081184 34.43654251 7.43629599 22.052108765 34.018920898 7.61665154
		 22.023797989 34.16521072 7.54972649 22.062379837 33.86365891 7.68471289 21.55714798 34.98030472 7.27875471
		 21.69485664 34.69810867 7.36263704 21.40649986 34.86570358 7.14386034 21.53489876 34.61528778 7.24085951
		 21.38892365 34.74583817 6.8744812 21.49899673 34.50106812 7.00014305115 21.78371048 34.42103958 7.47588062
		 21.87870026 34.017814636 7.66107941 21.8497963 34.15480042 7.58716488 21.89454079 33.87285614 7.71894264
		 21.59010315 34.32594299 7.38653326 21.69788361 33.91259384 7.5479002 21.68030739 34.092205048 7.46833038
		 21.71436501 33.77884674 7.61746693 22.14702797 33.27058029 7.76269722 22.11493492 33.19342804 7.62816811
		 22.10445976 33.39741898 7.85772276 22.013271332 33.17052078 7.65623093 22.050069809 33.2378273 7.79918242
		 21.88947678 33.2300148 7.64014053 21.90820313 33.29862213 7.80948019 21.13803673 35.22079086 6.67632294
		 21.65598869 35.70931244 6.35329771 21.74082947 35.8462677 6.62901592 21.35179138 36.21285248 6.03916502
		 21.42394447 36.4312439 6.28474808 21.53769112 34.2006073 7.15212917 21.65197372 33.80787277 7.33393431
		 21.63223839 33.97130966 7.24844646 21.93321037 33.43586349 7.88127899 21.94386101 33.34799194 7.86352301
		 22.033143997 33.31388855 7.85786152 21.80382156 33.43412781 7.77604103;
	setAttr ".vt[2158:2195]" 21.79416847 33.3433609 7.57815504 21.66846657 33.66717529 7.41275597
		 21.36689568 35.66744232 6.16304255 20.92261887 36.21365738 5.71858454 21.76371002 34.88286591 6.54902172
		 21.52334976 35.38735962 6.32697773 21.91961479 34.76924896 6.6508956 21.96398926 34.62184906 6.73248243
		 21.86416054 34.45443344 6.77217531 21.93529701 34.15852356 6.93657637 22.001367569 33.73687363 7.13011217
		 21.97619247 33.92877579 7.04690218 22.0093917847 33.60172272 7.20049191 21.62427139 34.46162033 6.81249332
		 21.51612473 34.73761749 6.65643978 21.6877594 34.12680054 6.96472263 21.76997185 33.72324753 7.15250111
		 21.7338562 33.90919495 7.068218231 21.79339409 33.58551025 7.22722864 22.040035248 33.23754883 7.47608709
		 21.25979996 35.25694656 6.4319663 21.060626984 35.51429367 6.22215652 21.902071 33.24460602 7.49669218
		 21.99639893 33.18774414 7.56175995 21.92026901 33.21173477 7.56702471 20.78581429 35.82400894 5.91307735
		 20.30322266 37.056949615 5.22243023 19.97573471 37.47872543 4.95807314 19.66630363 37.8336525 4.86633301
		 7.49065542 -0.0060990262 1.89454234 9.23983574 44.94881821 -0.18804683 8.14762974 45.77602386 -0.4399637
		 7.19268036 46.49459839 -0.71223098 10.39729786 44.11626053 0.047472451 14.22422409 44.18317413 -1.79393733
		 13.3407917 43.070087433 -1.81132174 4.66083479 16.086055756 0.96427053 6.9962368 17.23865509 -0.92175913;
	setAttr -s 4400 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 2 0 1 4 0 0 6 0 6 7 0
		 7 1 0 7 8 0 8 4 0 9 10 0 10 11 0 11 12 0 12 9 0 13 10 0 9 14 0 14 13 0 15 13 0 14 16 0
		 16 15 0 17 11 0 10 18 0 18 17 0 19 18 0 13 19 0 20 17 0 18 21 0 21 20 0 22 23 0 23 20 0
		 21 22 0 24 19 0 15 24 0 19 25 0 25 21 0 24 26 0 26 25 0 3 27 0 27 28 0 28 0 0 29 28 0
		 27 30 0 30 29 0 31 32 0 32 33 0 33 34 0 34 31 0 34 35 0 35 36 0 36 31 0 25 37 0 37 22 0
		 38 39 0 39 40 0 40 37 0 37 38 0 26 38 0 41 32 0 31 42 0 42 41 0 43 41 0 42 44 0 44 43 0
		 36 45 0 45 42 0 46 45 0 45 47 0 47 48 0 48 46 0 49 50 0 50 8 0 7 49 0 51 50 0 49 52 0
		 52 51 0 53 54 0 54 55 0 55 56 0 56 53 0 57 53 0 56 58 0 58 57 0 58 59 0 59 60 0 60 57 0
		 61 62 0 62 60 0 59 61 0 63 49 0 6 63 0 28 64 0 64 6 0 65 64 0 29 65 0 66 67 0 67 68 0
		 68 69 0 69 66 0 70 71 0 71 72 0 72 73 0 73 70 0 74 75 0 75 76 0 76 77 0 77 74 0 78 79 0
		 79 80 0 80 81 0 81 78 0 82 83 0 83 79 0 78 82 0 84 52 0 63 84 0 85 56 0 55 86 0 86 85 0
		 85 87 0 87 58 0 88 87 0 85 89 0 89 88 0 90 91 0 91 92 0 92 90 0 86 93 0 93 89 0 94 95 0
		 95 96 0 96 97 0 97 94 0 54 51 0 52 55 0 84 86 0 84 98 0 98 93 0 92 95 0 94 90 0 99 63 0
		 64 99 0 99 98 0 96 100 0 100 101 0 101 97 0 38 102 0 102 47 0 47 39 0 103 48 0 102 103 0
		 104 105 0 105 68 0 67 104 0 67 71 0 71 106 0 106 104 0 107 108 0 108 75 0 74 107 0
		 109 110 0 110 111 0 111 112 0 112 109 0 113 112 0;
	setAttr ".ed[166:331]" 111 114 0 114 113 0 115 116 0 116 114 0 114 117 0 117 115 0
		 116 118 0 118 113 0 117 119 0 119 120 0 120 115 0 121 122 0 122 123 0 123 124 0 124 121 0
		 119 125 0 125 126 0 126 120 0 126 127 0 127 115 0 127 128 0 128 116 0 128 129 0 129 118 0
		 130 113 0 118 131 0 131 130 0 132 131 0 129 132 0 130 133 0 133 112 0 16 134 0 134 110 0
		 110 15 0 109 24 0 135 109 0 133 135 0 136 26 0 26 109 0 135 136 0 136 102 0 136 137 0
		 137 103 0 138 137 0 135 138 0 139 138 0 133 139 0 140 139 0 130 140 0 141 140 0 131 141 0
		 138 142 0 142 143 0 143 137 0 87 144 0 144 59 0 144 145 0 145 146 0 146 147 0 147 144 0
		 148 145 0 87 148 0 149 148 0 88 149 0 150 151 0 151 152 0 152 147 0 147 150 0 153 150 0
		 146 153 0 154 149 0 88 91 0 91 154 0 155 156 0 156 157 0 157 158 0 158 155 0 159 160 0
		 160 155 0 158 159 0 157 161 0 161 162 0 162 158 0 162 163 0 163 159 0 104 164 0 164 165 0
		 165 105 0 166 167 0 167 165 0 165 168 0 168 166 0 169 170 0 170 171 0 171 164 0 164 169 0
		 172 132 0 129 173 0 173 172 0 174 175 0 175 172 0 173 174 0 176 175 0 174 177 0 177 176 0
		 129 178 0 178 174 0 178 179 0 179 177 0 179 180 0 180 176 0 180 181 0 181 175 0 181 132 0
		 182 141 0 131 183 0 183 182 0 184 185 0 185 186 0 186 182 0 182 184 0 187 188 0 188 185 0
		 184 187 0 189 188 0 187 190 0 190 189 0 132 183 0 183 191 0 191 184 0 191 192 0 192 187 0
		 181 191 0 180 192 0 192 193 0 193 190 0 194 193 0 180 194 0 195 194 0 179 195 0 195 196 0
		 196 193 0 196 197 0 197 190 0 198 126 0 125 124 0 124 198 0 123 199 0 199 198 0 200 199 0
		 123 201 0 201 200 0 122 202 0 202 201 0 122 203 0 203 204 0 204 202 0 205 199 0 200 206 0
		 206 205 0 207 208 0 208 128 0 127 207 0 198 207 0 205 207 0 205 209 0;
	setAttr ".ed[332:497]" 209 208 0 206 210 0 210 209 0 211 212 0 212 209 0 210 211 0
		 208 178 0 213 178 0 208 214 0 214 213 0 212 214 0 213 195 0 215 216 0 216 212 0 211 215 0
		 217 218 0 218 216 0 215 217 0 217 202 0 202 219 0 219 218 0 220 217 0 215 221 0 221 220 0
		 220 201 0 210 221 0 200 220 0 221 206 0 213 222 0 222 196 0 222 223 0 223 197 0 216 224 0
		 224 214 0 224 222 0 225 224 0 218 225 0 225 223 0 219 226 0 226 227 0 227 218 0 225 228 0
		 228 229 0 229 223 0 66 72 0 70 230 0 230 106 0 106 169 0 231 169 0 230 231 0 231 232 0
		 232 170 0 230 108 0 108 233 0 233 231 0 234 235 0 235 233 0 233 236 0 236 234 0 237 238 0
		 238 76 0 76 73 0 73 237 0 239 238 0 237 240 0 240 239 0 241 239 0 240 242 0 242 241 0
		 241 243 0 243 244 0 244 245 0 245 241 0 246 81 0 80 247 0 247 246 0 247 248 0 248 249 0
		 249 246 0 248 250 0 250 251 0 251 249 0 250 252 0 252 253 0 253 251 0 254 255 0 255 256 0
		 256 257 0 257 254 0 256 83 0 82 257 0 258 237 0 72 258 0 259 258 0 66 259 0 260 259 0
		 69 260 0 69 43 0 43 261 0 261 260 0 262 44 0 44 46 0 46 263 0 263 262 0 264 265 0
		 265 48 0 103 264 0 143 264 0 266 267 0 267 268 0 268 269 0 269 266 0 258 270 0 270 240 0
		 271 270 0 259 271 0 272 271 0 260 272 0 261 273 0 273 272 0 270 274 0 274 242 0 275 274 0
		 271 275 0 276 275 0 272 276 0 273 277 0 277 276 0 267 278 0 278 279 0 279 268 0 280 281 0
		 281 282 0 282 283 0 283 280 0 278 282 0 281 279 0 282 284 0 284 285 0 285 283 0 286 284 0
		 278 286 0 287 286 0 267 287 0 288 287 0 266 288 0 289 100 0 100 99 0 64 289 0 290 289 0
		 65 290 0 65 166 0 166 291 0 291 290 0 291 277 0 277 285 0 285 290 0 284 289 0 284 101 0
		 288 292 0 292 293 0 293 287 0 293 294 0 294 286 0 294 101 0 295 97 0;
	setAttr ".ed[498:663]" 294 295 0 296 295 0 293 296 0 297 296 0 292 297 0 298 297 0
		 292 299 0 299 298 0 300 90 0 94 301 0 301 300 0 301 302 0 302 303 0 303 300 0 304 305 0
		 305 306 0 306 307 0 307 304 0 306 308 0 308 309 0 309 307 0 302 310 0 310 311 0 311 303 0
		 312 160 0 160 305 0 305 313 0 313 312 0 314 155 0 312 314 0 154 156 0 156 315 0 315 316 0
		 316 154 0 317 149 0 316 317 0 318 319 0 319 320 0 320 321 0 321 318 0 322 318 0 321 323 0
		 323 322 0 316 324 0 324 325 0 325 317 0 326 327 0 327 325 0 324 326 0 328 329 0 329 327 0
		 326 328 0 317 330 0 330 148 0 331 330 0 325 331 0 332 331 0 327 332 0 329 333 0 333 332 0
		 330 334 0 334 145 0 335 334 0 331 335 0 332 336 0 336 335 0 333 337 0 337 336 0 302 296 0
		 297 310 0 301 295 0 314 315 0 318 326 0 324 319 0 322 328 0 61 147 0 152 62 0 334 338 0
		 338 146 0 338 339 0 339 153 0 335 340 0 340 338 0 340 341 0 341 339 0 342 340 0 336 342 0
		 342 343 0 343 341 0 344 342 0 337 344 0 344 345 0 345 343 0 346 347 0 347 150 0 153 346 0
		 348 346 0 339 348 0 349 348 0 341 349 0 350 349 0 343 350 0 351 350 0 345 351 0 346 352 0
		 352 313 0 313 347 0 350 321 0 320 349 0 351 323 0 353 314 0 312 354 0 354 353 0 352 354 0
		 353 316 0 354 355 0 355 319 0 319 353 0 159 306 0 163 308 0 356 352 0 348 356 0 356 355 0
		 320 356 0 357 337 0 333 358 0 358 357 0 359 360 0 360 361 0 361 362 0 362 359 0 363 364 0
		 364 365 0 365 366 0 366 363 0 367 368 0 368 369 0 369 370 0 370 367 0 371 368 0 367 372 0
		 372 371 0 373 374 0 374 375 0 375 376 0 376 373 0 377 378 0 378 379 0 379 380 0 380 377 0
		 381 378 0 377 382 0 382 381 0 383 358 0 329 383 0 384 359 0 362 385 0 385 384 0 385 386 0
		 386 387 0 387 384 0 357 388 0 388 344 0 357 361 0 361 389 0 389 388 0;
	setAttr ".ed[664:829]" 388 390 0 390 345 0 360 365 0 365 391 0 391 392 0 392 360 0
		 389 393 0 393 390 0 394 392 0 391 395 0 395 394 0 366 396 0 396 397 0 397 363 0 396 398 0
		 398 399 0 399 397 0 390 400 0 400 351 0 393 401 0 401 400 0 402 394 0 395 403 0 403 402 0
		 400 404 0 404 323 0 401 405 0 405 404 0 406 402 0 403 407 0 407 406 0 404 408 0 408 322 0
		 408 409 0 409 328 0 405 410 0 410 408 0 410 386 0 386 409 0 411 406 0 407 412 0 412 411 0
		 412 398 0 398 387 0 387 411 0 409 383 0 370 413 0 413 414 0 414 367 0 413 415 0 415 416 0
		 416 414 0 415 417 0 417 418 0 418 416 0 414 419 0 419 372 0 420 419 0 416 420 0 421 420 0
		 418 421 0 417 422 0 422 423 0 423 418 0 423 424 0 424 421 0 425 364 0 364 369 0 369 426 0
		 426 425 0 427 426 0 426 428 0 428 429 0 429 427 0 430 428 0 428 368 0 371 430 0 430 431 0
		 431 429 0 432 433 0 433 375 0 374 432 0 432 434 0 434 435 0 435 433 0 374 379 0 379 436 0
		 436 432 0 437 436 0 436 438 0 438 439 0 439 437 0 440 427 0 429 441 0 441 440 0 440 422 0
		 422 442 0 442 443 0 443 440 0 431 444 0 444 441 0 444 424 0 423 441 0 445 446 0 446 435 0
		 434 445 0 447 448 0 448 446 0 445 447 0 447 449 0 449 450 0 450 448 0 449 451 0 451 452 0
		 452 450 0 451 453 0 453 454 0 454 452 0 453 373 0 376 454 0 380 455 0 455 456 0 456 377 0
		 455 457 0 457 458 0 458 456 0 457 459 0 459 460 0 460 458 0 459 461 0 461 462 0 462 460 0
		 461 463 0 463 464 0 464 462 0 463 437 0 439 464 0 465 438 0 438 378 0 381 465 0 466 439 0
		 465 466 0 466 467 0 467 464 0 467 468 0 468 462 0 468 469 0 469 460 0 469 470 0 470 458 0
		 470 471 0 471 456 0 471 382 0 469 472 0 472 473 0 473 470 0 474 475 0 475 473 0 472 474 0
		 468 476 0 476 472 0 477 476 0 467 477 0 478 477 0 466 478 0 476 479 0;
	setAttr ".ed[830:995]" 479 474 0 480 479 0 477 480 0 481 480 0 478 481 0 482 483 0
		 483 484 0 484 485 0 485 482 0 486 487 0 487 488 0 488 489 0 489 486 0 490 491 0 491 492 0
		 492 493 0 493 490 0 494 478 0 465 494 0 381 483 0 483 494 0 494 495 0 495 481 0 483 496 0
		 496 495 0 493 497 0 497 498 0 498 490 0 473 499 0 499 471 0 499 500 0 500 382 0 501 499 0
		 475 501 0 501 502 0 502 500 0 488 503 0 503 500 0 500 489 0 486 504 0 504 492 0 491 486 0
		 505 489 0 502 505 0 505 504 0 490 506 0 506 487 0 487 491 0 507 508 0 508 509 0 509 510 0
		 510 507 0 511 512 0 512 508 0 507 511 0 513 510 0 509 514 0 514 513 0 515 516 0 516 513 0
		 514 515 0 517 516 0 515 518 0 518 517 0 519 520 0 520 521 0 521 522 0 522 519 0 523 520 0
		 519 524 0 524 523 0 525 523 0 524 526 0 526 525 0 507 527 0 527 528 0 528 511 0 529 527 0
		 510 529 0 530 529 0 513 530 0 531 530 0 516 531 0 532 531 0 517 532 0 521 533 0 533 532 0
		 517 521 0 534 535 0 535 520 0 523 534 0 536 534 0 525 536 0 532 529 0 532 537 0 537 538 0
		 538 529 0 539 538 0 537 540 0 540 539 0 541 539 0 540 542 0 542 541 0 518 522 0 533 543 0
		 543 537 0 544 545 0 545 535 0 534 544 0 546 544 0 536 546 0 543 547 0 547 540 0 548 549 0
		 549 545 0 544 548 0 550 548 0 546 550 0 551 525 0 526 552 0 552 551 0 551 553 0 553 536 0
		 554 555 0 555 551 0 552 554 0 556 557 0 557 555 0 554 556 0 538 558 0 558 527 0 559 558 0
		 539 559 0 560 559 0 541 560 0 561 559 0 560 562 0 562 561 0 563 558 0 561 563 0 564 561 0
		 562 565 0 565 564 0 566 561 0 564 567 0 567 566 0 566 568 0 568 563 0 569 512 0 511 570 0
		 570 569 0 570 571 0 571 572 0 572 569 0 547 573 0 573 542 0 574 575 0 575 549 0 548 574 0
		 535 533 0 545 543 0 549 547 0 575 573 0 553 576 0 576 546 0 553 577 0;
	setAttr ".ed[996:1161]" 577 578 0 578 576 0 579 550 0 576 579 0 578 557 0 557 579 0
		 556 580 0 580 579 0 550 581 0 581 574 0 580 581 0 528 582 0 582 570 0 563 528 0 568 582 0
		 582 583 0 583 571 0 584 585 0 585 572 0 571 584 0 586 584 0 583 586 0 587 588 0 588 572 0
		 585 587 0 588 589 0 589 569 0 512 590 0 590 591 0 591 508 0 592 509 0 591 592 0 593 514 0
		 592 593 0 594 515 0 593 594 0 595 518 0 594 595 0 595 596 0 596 522 0 597 524 0 519 598 0
		 598 597 0 599 526 0 597 599 0 592 595 0 592 600 0 600 601 0 601 595 0 542 601 0 600 541 0
		 601 602 0 602 596 0 603 597 0 598 604 0 604 603 0 605 599 0 603 605 0 573 602 0 574 603 0
		 604 575 0 581 605 0 606 552 0 599 606 0 591 607 0 607 600 0 607 560 0 608 562 0 607 608 0
		 609 610 0 610 565 0 562 609 0 608 611 0 611 609 0 596 598 0 602 604 0 612 606 0 605 612 0
		 612 613 0 613 614 0 614 606 0 580 612 0 556 613 0 589 590 0 590 608 0 589 611 0 577 555 0
		 554 614 0 615 616 0 616 617 0 617 618 0 618 615 0 619 620 0 620 616 0 615 619 0 621 618 0
		 617 622 0 622 621 0 623 624 0 624 621 0 622 623 0 625 624 0 623 626 0 626 625 0 627 628 0
		 628 629 0 629 630 0 630 627 0 631 628 0 627 632 0 632 631 0 633 631 0 632 634 0 634 633 0
		 615 635 0 635 636 0 636 619 0 637 635 0 618 637 0 638 637 0 621 638 0 639 638 0 624 639 0
		 640 639 0 625 640 0 629 641 0 641 640 0 625 629 0 642 643 0 643 628 0 631 642 0 644 642 0
		 633 644 0 640 637 0 640 645 0 645 646 0 646 637 0 647 646 0 645 648 0 648 647 0 649 647 0
		 648 650 0 650 649 0 626 630 0 641 651 0 651 645 0 652 653 0 653 643 0 642 652 0 654 652 0
		 644 654 0 651 655 0 655 648 0 656 657 0 657 653 0 652 656 0 658 656 0 654 658 0 659 633 0
		 634 660 0 660 659 0 659 661 0 661 644 0 662 663 0 663 659 0 660 662 0;
	setAttr ".ed[1162:1327]" 664 665 0 665 663 0 662 664 0 646 666 0 666 635 0 667 666 0
		 647 667 0 668 667 0 649 668 0 669 667 0 668 670 0 670 669 0 671 666 0 669 671 0 672 669 0
		 670 673 0 673 672 0 672 674 0 674 671 0 675 620 0 619 676 0 676 675 0 676 677 0 677 678 0
		 678 675 0 655 679 0 679 650 0 680 681 0 681 657 0 656 680 0 643 641 0 653 651 0 657 655 0
		 681 679 0 661 682 0 682 654 0 661 683 0 683 684 0 684 682 0 685 658 0 682 685 0 684 665 0
		 665 685 0 664 686 0 686 685 0 658 687 0 687 680 0 686 687 0 636 688 0 688 676 0 671 636 0
		 674 688 0 688 689 0 689 677 0 690 691 0 691 678 0 677 690 0 692 690 0 689 692 0 583 678 0
		 691 586 0 582 675 0 620 693 0 693 694 0 694 616 0 695 617 0 694 695 0 696 622 0 695 696 0
		 697 623 0 696 697 0 698 626 0 697 698 0 698 699 0 699 630 0 700 632 0 627 701 0 701 700 0
		 702 634 0 700 702 0 695 698 0 695 703 0 703 704 0 704 698 0 650 704 0 703 649 0 704 705 0
		 705 699 0 706 700 0 701 707 0 707 706 0 708 702 0 706 708 0 679 705 0 680 706 0 707 681 0
		 687 708 0 709 660 0 702 709 0 694 710 0 710 703 0 710 668 0 711 670 0 710 711 0 567 673 0
		 670 566 0 711 568 0 699 701 0 705 707 0 712 709 0 708 712 0 712 713 0 713 714 0 714 709 0
		 686 712 0 664 713 0 582 693 0 693 711 0 683 663 0 662 714 0 674 715 0 715 689 0 716 715 0
		 672 716 0 717 716 0 673 717 0 718 719 0 719 715 0 716 718 0 720 719 0 718 721 0 721 720 0
		 719 692 0 720 722 0 722 692 0 722 723 0 723 690 0 724 725 0 725 726 0 726 727 0 727 724 0
		 724 728 0 728 725 0 724 729 0 729 730 0 730 728 0 731 732 0 732 733 0 733 734 0 734 731 0
		 735 732 0 731 736 0 736 735 0 737 733 0 732 738 0 738 737 0 739 737 0 738 740 0 740 739 0
		 735 741 0 741 738 0 741 742 0 742 740 0 743 735 0 736 744 0 744 743 0;
	setAttr ".ed[1328:1493]" 78 745 0 745 746 0 746 82 0 743 747 0 747 741 0 743 745 0
		 745 748 0 748 747 0 747 749 0 749 742 0 748 750 0 750 749 0 751 752 0 752 746 0 746 744 0
		 744 751 0 736 753 0 753 751 0 754 753 0 731 754 0 734 755 0 755 754 0 756 757 0 757 729 0
		 724 756 0 758 756 0 727 758 0 759 728 0 730 760 0 760 759 0 761 759 0 760 762 0 762 761 0
		 586 725 0 759 586 0 763 721 0 718 764 0 764 763 0 765 766 0 766 767 0 767 768 0 768 765 0
		 766 756 0 758 767 0 769 730 0 729 770 0 770 769 0 771 760 0 769 771 0 772 762 0 771 772 0
		 757 773 0 773 770 0 587 586 0 761 587 0 690 725 0 723 726 0 768 774 0 774 775 0 775 765 0
		 567 776 0 776 717 0 777 776 0 564 777 0 778 777 0 565 778 0 779 778 0 610 779 0 780 779 0
		 610 781 0 781 780 0 717 764 0 775 782 0 782 783 0 783 765 0 783 784 0 784 766 0 727 785 0
		 785 786 0 786 758 0 787 786 0 785 788 0 788 787 0 789 790 0 790 787 0 788 789 0 791 790 0
		 789 792 0 792 791 0 793 794 0 794 795 0 795 796 0 796 793 0 797 794 0 793 798 0 798 797 0
		 799 800 0 800 786 0 787 799 0 801 799 0 790 801 0 802 801 0 791 802 0 795 803 0 803 802 0
		 791 795 0 804 805 0 805 794 0 797 804 0 802 800 0 802 806 0 806 807 0 807 800 0 808 807 0
		 806 809 0 809 808 0 810 808 0 809 811 0 811 810 0 792 796 0 803 812 0 812 806 0 813 814 0
		 814 805 0 804 813 0 812 815 0 815 809 0 816 817 0 817 814 0 813 816 0 818 819 0 819 820 0
		 820 821 0 821 818 0 797 819 0 819 822 0 822 804 0 823 824 0 824 818 0 821 823 0 825 826 0
		 826 824 0 823 825 0 767 800 0 807 768 0 808 774 0 815 827 0 827 811 0 828 829 0 829 817 0
		 816 828 0 805 803 0 814 812 0 817 815 0 829 827 0 822 830 0 830 813 0 831 832 0 832 833 0
		 833 834 0 834 831 0 835 836 0 836 830 0 830 834 0 834 835 0 833 826 0;
	setAttr ".ed[1494:1659]" 826 835 0 825 837 0 837 835 0 816 836 0 836 838 0 838 828 0
		 839 788 0 785 840 0 840 839 0 841 789 0 839 841 0 842 792 0 841 842 0 842 843 0 843 796 0
		 844 798 0 793 845 0 845 844 0 840 842 0 840 846 0 846 847 0 847 842 0 811 847 0 846 810 0
		 847 848 0 848 843 0 849 844 0 845 850 0 850 849 0 827 848 0 828 849 0 850 829 0 851 820 0
		 820 798 0 844 851 0 721 810 0 846 720 0 843 845 0 848 850 0 852 851 0 849 852 0 853 854 0
		 854 855 0 855 856 0 856 853 0 837 853 0 853 852 0 852 838 0 838 837 0 825 854 0 726 840 0
		 832 824 0 823 855 0 831 818 0 821 856 0 831 822 0 851 856 0 722 840 0 721 774 0 857 764 0
		 776 857 0 858 756 0 784 858 0 858 859 0 859 757 0 860 859 0 784 860 0 859 861 0 861 773 0
		 862 861 0 860 862 0 863 860 0 783 863 0 864 862 0 860 865 0 865 864 0 782 866 0 866 863 0
		 867 860 0 863 868 0 868 867 0 867 869 0 869 865 0 870 868 0 866 870 0 782 871 0 871 872 0
		 872 866 0 873 874 0 874 875 0 875 872 0 872 873 0 875 870 0 876 869 0 868 876 0 877 876 0
		 870 877 0 878 877 0 875 878 0 879 754 0 755 880 0 880 879 0 880 881 0 881 882 0 882 879 0
		 881 883 0 883 884 0 884 882 0 879 885 0 885 753 0 885 886 0 886 751 0 257 752 0 752 887 0
		 887 254 0 888 885 0 882 888 0 888 889 0 889 886 0 253 254 0 887 890 0 890 253 0 884 891 0
		 891 888 0 891 892 0 892 889 0 890 893 0 893 251 0 764 782 0 775 763 0 894 895 0 895 896 0
		 896 897 0 897 894 0 898 899 0 899 895 0 894 898 0 900 897 0 896 901 0 901 900 0 902 903 0
		 903 900 0 901 902 0 904 903 0 902 905 0 905 904 0 906 907 0 907 908 0 908 909 0 909 906 0
		 910 907 0 906 911 0 911 910 0 912 910 0 911 913 0 913 912 0 894 914 0 914 915 0 915 898 0
		 916 914 0 897 916 0 917 916 0 900 917 0 918 917 0 903 918 0 919 918 0;
	setAttr ".ed[1660:1825]" 904 919 0 908 920 0 920 919 0 904 908 0 921 922 0 922 907 0
		 910 921 0 923 921 0 912 923 0 919 916 0 919 924 0 924 925 0 925 916 0 926 925 0 924 927 0
		 927 926 0 928 926 0 927 929 0 929 928 0 905 909 0 920 930 0 930 924 0 931 932 0 932 922 0
		 921 931 0 933 931 0 923 933 0 930 934 0 934 927 0 935 936 0 936 932 0 931 935 0 937 935 0
		 933 937 0 938 912 0 913 939 0 939 938 0 938 940 0 940 923 0 941 942 0 942 938 0 939 941 0
		 943 944 0 944 942 0 941 943 0 925 945 0 945 914 0 946 945 0 926 946 0 947 946 0 928 947 0
		 948 946 0 947 949 0 949 948 0 950 945 0 948 950 0 781 948 0 949 951 0 951 781 0 609 948 0
		 611 950 0 952 899 0 898 953 0 953 952 0 953 954 0 954 955 0 955 952 0 934 956 0 956 929 0
		 957 958 0 958 936 0 935 957 0 922 920 0 932 930 0 936 934 0 958 956 0 940 959 0 959 933 0
		 940 960 0 960 961 0 961 959 0 962 937 0 959 962 0 961 944 0 944 962 0 943 963 0 963 962 0
		 937 964 0 964 957 0 963 964 0 915 589 0 589 953 0 950 915 0 588 954 0 955 965 0 965 966 0
		 966 952 0 899 967 0 967 968 0 968 895 0 969 896 0 968 969 0 970 901 0 969 970 0 971 902 0
		 970 971 0 972 905 0 971 972 0 972 973 0 973 909 0 974 911 0 906 975 0 975 974 0 976 913 0
		 974 976 0 969 972 0 969 977 0 977 978 0 978 972 0 929 978 0 977 928 0 978 979 0 979 973 0
		 980 974 0 975 981 0 981 980 0 982 976 0 980 982 0 956 979 0 957 980 0 981 958 0 964 982 0
		 983 939 0 976 983 0 968 984 0 984 977 0 984 947 0 985 949 0 984 985 0 986 987 0 987 951 0
		 949 986 0 985 988 0 988 986 0 973 975 0 979 981 0 989 983 0 982 989 0 989 990 0 990 991 0
		 991 983 0 963 989 0 943 990 0 966 967 0 967 985 0 966 988 0 960 942 0 941 991 0 992 954 0
		 587 992 0 992 993 0 993 955 0 993 994 0 994 965 0 587 994 0 995 994 0;
	setAttr ".ed[1826:1991]" 761 995 0 996 951 0 987 873 0 873 996 0 996 780 0 874 997 0
		 997 878 0 998 874 0 987 998 0 999 998 0 986 999 0 762 1000 0 1000 995 0 1001 1000 0
		 772 1001 0 772 739 0 739 1002 0 1002 1001 0 1003 1004 0 1004 740 0 742 1003 0 1005 1003 0
		 749 1005 0 750 1006 0 1006 1005 0 1007 1008 0 1008 1009 0 1009 1010 0 1010 1007 0
		 1011 1010 0 1009 1012 0 1012 1011 0 1013 1014 0 1014 1011 0 1012 1013 0 1015 1014 0
		 1013 1016 0 1016 1015 0 1017 1018 0 1018 1019 0 1019 1020 0 1020 1017 0 1021 1018 0
		 1017 1022 0 1022 1021 0 1023 1021 0 1022 1024 0 1024 1023 0 1010 1025 0 1025 966 0
		 966 1007 0 1026 1025 0 1011 1026 0 1027 1026 0 1014 1027 0 1028 1027 0 1015 1028 0
		 1019 1029 0 1029 1028 0 1015 1019 0 1030 1031 0 1031 1018 0 1021 1030 0 1032 1030 0
		 1023 1032 0 1028 1025 0 1028 1033 0 1033 1034 0 1034 1025 0 1035 1034 0 1033 1036 0
		 1036 1035 0 1037 1035 0 1036 1038 0 1038 1037 0 1016 1020 0 1029 1039 0 1039 1033 0
		 1040 1041 0 1041 1031 0 1030 1040 0 1042 1040 0 1032 1042 0 1039 1043 0 1043 1036 0
		 1044 1045 0 1045 1041 0 1040 1044 0 1046 1044 0 1042 1046 0 1047 1023 0 1024 1048 0
		 1048 1047 0 1047 1049 0 1049 1032 0 1050 1051 0 1051 1047 0 1048 1050 0 1052 1053 0
		 1053 1051 0 1050 1052 0 1054 998 0 998 1035 0 1037 1054 0 999 1034 0 1055 1008 0
		 1007 1056 0 1056 1055 0 1056 1057 0 1057 1058 0 1058 1055 0 1043 1059 0 1059 1038 0
		 1060 1061 0 1061 1045 0 1044 1060 0 1031 1029 0 1041 1039 0 1045 1043 0 1061 1059 0
		 1049 1062 0 1062 1042 0 1049 1063 0 1063 1064 0 1064 1062 0 1065 1046 0 1062 1065 0
		 1064 1053 0 1053 1065 0 1052 1066 0 1066 1065 0 1046 1067 0 1067 1060 0 1066 1067 0
		 965 1056 0 999 966 0 994 1057 0 1058 1068 0 1068 1069 0 1069 1055 0 1008 1070 0 1070 1071 0
		 1071 1009 0 1072 1012 0 1071 1072 0 1073 1013 0 1072 1073 0 1074 1016 0 1073 1074 0
		 1074 1075 0 1075 1020 0 1076 1022 0 1017 1077 0 1077 1076 0 1078 1024 0 1076 1078 0
		 1071 1074 0 1071 1079 0 1079 1080 0 1080 1074 0 1038 1080 0 1079 1037 0 1080 1081 0
		 1081 1075 0 1082 1076 0 1077 1083 0;
	setAttr ".ed[1992:2157]" 1083 1082 0 1084 1078 0 1082 1084 0 1059 1081 0 1060 1082 0
		 1083 1061 0 1067 1084 0 1085 1048 0 1078 1085 0 1086 1054 0 1079 1086 0 1086 1087 0
		 1087 997 0 997 1054 0 1075 1077 0 1081 1083 0 1088 1085 0 1084 1088 0 1088 1089 0
		 1089 1090 0 1090 1085 0 1066 1088 0 1052 1089 0 1069 1070 0 1070 1086 0 1069 1087 0
		 1063 1051 0 1050 1090 0 1091 878 0 1087 1091 0 1068 1091 0 1068 877 0 1092 876 0
		 1068 1092 0 1092 1093 0 1093 869 0 1093 1094 0 1094 865 0 1094 1001 0 1001 864 0
		 1004 884 0 883 1002 0 1002 1004 0 994 1068 0 995 1092 0 1000 1093 0 1003 891 0 1005 892 0
		 1006 893 0 893 892 0 779 776 0 779 871 0 871 857 0 873 779 0 298 1095 0 1095 310 0
		 1095 1096 0 1096 311 0 481 475 0 475 479 0 1097 497 0 497 504 0 505 1097 0 495 501 0
		 496 502 0 1097 482 0 482 498 0 1097 496 0 485 506 0 506 498 0 382 503 0 503 484 0
		 484 381 0 488 485 0 1098 1099 0 1099 171 0 170 1098 0 276 1100 0 1100 1099 0 1099 275 0
		 1098 274 0 1098 1101 0 1101 242 0 232 1101 0 1100 168 0 168 171 0 105 33 0 32 105 0
		 232 235 0 235 243 0 243 1101 0 234 255 0 255 252 0 252 244 0 244 234 0 138 1102 0
		 1102 1103 0 1103 142 0 1104 266 0 269 1105 0 1105 1104 0 1106 288 0 1104 1106 0 1106 299 0
		 313 1107 0 1107 1108 0 1108 347 0 304 1107 0 1108 151 0 1109 111 0 134 1109 0 1110 114 0
		 1109 1110 0 1110 1111 0 1111 117 0 1111 1112 0 1112 119 0 1112 1113 0 1113 125 0
		 1114 124 0 1113 1114 0 1114 1115 0 1115 121 0 1115 203 0 140 1116 0 1116 1117 0 1117 139 0
		 141 1118 0 1118 1116 0 1117 1102 0 186 1118 0 197 1119 0 1119 189 0 204 226 0 229 1119 0
		 227 228 0 77 80 0 79 74 0 83 107 0 77 1120 0 1120 247 0 1120 1121 0 1121 248 0 1121 245 0
		 245 250 0 236 256 0 236 107 0 75 70 0 238 1120 0 239 1121 0 770 734 0 733 769 0 737 771 0
		 773 755 0 861 880 0 862 881 0 864 883 0 358 362 0 359 366 0 383 385 0 392 389 0 425 391 0
		 394 393 0 425 1122 0 1122 395 0 384 396 0;
	setAttr ".ed[2158:2323]" 402 401 0 1122 443 0 443 403 0 406 405 0 442 407 0 411 410 0
		 442 1123 0 1123 412 0 1123 399 0 363 370 0 397 413 0 399 415 0 1123 417 0 427 1122 0
		 81 748 0 246 750 0 886 887 0 889 890 0 249 1006 0 11 2 0 5 12 0 17 3 0 20 27 0 23 30 0
		 36 39 0 265 263 0 41 68 0 29 167 0 262 261 0 262 283 0 283 273 0 1100 291 0 91 157 0
		 90 161 0 303 163 0 162 300 0 311 308 0 1096 309 0 35 40 0 30 33 0 33 167 0 23 34 0
		 22 35 0 265 281 0 280 263 0 264 279 0 143 268 0 142 269 0 1103 1105 0 95 93 0 98 96 0
		 92 89 0 373 380 0 437 434 0 453 455 0 451 457 0 449 459 0 447 461 0 445 463 0 372 376 0
		 375 371 0 419 454 0 420 452 0 421 450 0 424 448 0 433 430 0 435 431 0 446 444 0 1124 1125 0
		 1125 1126 0 1126 1127 0 1127 1124 0 4 1127 0 1126 5 0 1127 1128 0 1128 1129 0 1129 1124 0
		 8 1128 0 12 1130 0 1130 1131 0 1131 9 0 1132 14 0 1131 1132 0 1133 16 0 1132 1133 0
		 1134 1135 0 1135 1131 0 1130 1134 0 1136 1132 0 1135 1136 0 1137 1138 0 1138 1135 0
		 1134 1137 0 1139 1138 0 1137 1140 0 1140 1139 0 1141 1133 0 1136 1141 0 1138 1142 0
		 1142 1136 0 1142 1143 0 1143 1141 0 1124 1144 0 1144 1145 0 1145 1125 0 1146 1147 0
		 1147 1145 0 1144 1146 0 1148 1149 0 1149 1150 0 1150 1151 0 1151 1148 0 1148 1152 0
		 1152 1153 0 1153 1149 0 1139 1154 0 1154 1142 0 1155 1154 0 1154 1156 0 1156 1157 0
		 1157 1155 0 1155 1143 0 1158 1159 0 1159 1148 0 1151 1158 0 1160 1161 0 1161 1159 0
		 1158 1160 0 1159 1162 0 1162 1152 0 1163 1164 0 1164 1165 0 1165 1162 0 1162 1163 0
		 1166 1128 0 50 1166 0 51 1167 0 1167 1166 0 53 1168 0 1168 1169 0 1169 54 0 57 1170 0
		 1170 1168 0 60 1171 0 1171 1170 0 1172 1171 0 62 1172 0 1173 1129 0 1166 1173 0 1129 1174 0
		 1174 1144 0 1175 1146 0 1174 1175 0 1176 1177 0 1177 1178 0 1178 1179 0 1179 1176 0
		 1180 1181 0 1181 1182 0 1182 1183 0 1183 1180 0 1184 1185 0 1185 1186 0 1186 1187 0
		 1187 1184 0 1188 1189 0;
	setAttr ".ed[2324:2489]" 1189 1190 0 1190 1191 0 1191 1188 0 1192 1188 0 1191 1193 0
		 1193 1192 0 1194 1173 0 1167 1194 0 1195 1196 0 1196 1169 0 1168 1195 0 1170 1197 0
		 1197 1195 0 1198 1199 0 1199 1195 0 1197 1198 0 1200 1201 0 1201 1202 0 1202 1200 0
		 1199 1203 0 1203 1196 0 1204 1205 0 1205 1206 0 1206 1207 0 1207 1204 0 1169 1167 0
		 1196 1194 0 1203 1208 0 1208 1194 0 1200 1204 0 1207 1201 0 1209 1174 0 1173 1209 0
		 1208 1209 0 1205 1210 0 1210 1211 0 1211 1206 0 1157 1165 0 1165 1212 0 1212 1155 0
		 1213 1212 0 1164 1213 0 1214 1179 0 1178 1215 0 1215 1214 0 1214 1216 0 1216 1183 0
		 1183 1179 0 1217 1184 0 1187 1218 0 1218 1217 0 1219 1220 0 1220 1221 0 1221 1222 0
		 1222 1219 0 1223 1224 0 1224 1221 0 1220 1223 0 1225 1226 0 1226 1224 0 1224 1227 0
		 1227 1225 0 1223 1228 0 1228 1227 0 1225 1229 0 1229 1230 0 1230 1226 0 1231 1232 0
		 1232 1233 0 1233 1234 0 1234 1231 0 1229 1235 0 1235 1236 0 1236 1230 0 1225 1237 0
		 1237 1235 0 1227 1238 0 1238 1237 0 1228 1239 0 1239 1238 0 1240 1241 0 1241 1228 0
		 1223 1240 0 1242 1239 0 1241 1242 0 1220 1243 0 1243 1240 0 1133 1222 0 1222 134 0
		 1141 1219 0 1244 1243 0 1219 1244 0 1245 1244 0 1219 1143 0 1143 1245 0 1212 1245 0
		 1213 1246 0 1246 1245 0 1247 1244 0 1246 1247 0 1248 1243 0 1247 1248 0 1249 1240 0
		 1248 1249 0 1250 1241 0 1249 1250 0 1246 1251 0 1251 1252 0 1252 1247 0 1171 1253 0
		 1253 1197 0 1253 1254 0 1254 1255 0 1255 1256 0 1256 1253 0 1257 1197 0 1256 1257 0
		 1258 1198 0 1257 1258 0 1259 1254 0 1254 152 0 151 1259 0 1260 1255 0 1259 1260 0
		 1261 1202 0 1202 1198 0 1258 1261 0 1262 1263 0 1263 1264 0 1264 1265 0 1265 1262 0
		 1266 1263 0 1262 1267 0 1267 1266 0 1263 1268 0 1268 1269 0 1269 1264 0 1266 1270 0
		 1270 1268 0 1215 1271 0 1271 1272 0 1272 1214 0 1273 1274 0 1274 1271 0 1271 1275 0
		 1275 1273 0 1276 1272 0 1272 1277 0 1277 1278 0 1278 1276 0 1279 1280 0 1280 1239 0
		 1242 1279 0 1281 1280 0 1279 1282 0 1282 1281 0 1283 1284 0 1284 1281 0 1282 1283 0
		 1281 1285 0 1285 1239 0 1284 1286 0 1286 1285 0 1283 1287 0 1287 1286 0 1282 1288 0;
	setAttr ".ed[2490:2655]" 1288 1287 0 1242 1288 0 1289 1290 0 1290 1241 0 1250 1289 0
		 1291 1289 0 1289 186 0 185 1291 0 1292 1291 0 188 1292 0 189 1293 0 1293 1292 0 1290 1242 0
		 1291 1294 0 1294 1290 0 1292 1295 0 1295 1294 0 1294 1288 0 1295 1287 0 1293 1296 0
		 1296 1295 0 1297 1287 0 1296 1297 0 1298 1286 0 1297 1298 0 1296 1299 0 1299 1298 0
		 1293 1300 0 1300 1299 0 1301 1232 0 1232 1236 0 1235 1301 0 1301 1302 0 1302 1233 0
		 1303 1304 0 1304 1233 0 1302 1303 0 1304 1305 0 1305 1234 0 1305 204 0 203 1234 0
		 1306 1307 0 1307 1303 0 1302 1306 0 1308 1237 0 1238 1309 0 1309 1308 0 1308 1301 0
		 1308 1306 0 1309 1310 0 1310 1306 0 1310 1311 0 1311 1307 0 1312 1311 0 1310 1313 0
		 1313 1312 0 1285 1309 0 1314 1315 0 1315 1309 0 1285 1314 0 1315 1313 0 1298 1314 0
		 1316 1312 0 1313 1317 0 1317 1316 0 1318 1316 0 1317 1319 0 1319 1318 0 1319 1320 0
		 1320 1305 0 1305 1318 0 1321 1322 0 1322 1316 0 1318 1321 0 1304 1321 0 1322 1311 0
		 1307 1322 0 1321 1303 0 1299 1323 0 1323 1314 0 1300 1324 0 1324 1323 0 1315 1325 0
		 1325 1317 0 1323 1325 0 1326 1319 0 1325 1326 0 1324 1326 0 1319 227 0 226 1320 0
		 1324 229 0 228 1326 0 1182 1176 0 1216 1327 0 1327 1180 0 1276 1216 0 1328 1327 0
		 1276 1328 0 1278 1329 0 1329 1328 0 1328 1330 0 1330 1218 0 1218 1327 0 1331 1332 0
		 1332 1330 0 1330 1333 0 1333 1331 0 1334 1181 0 1181 1186 0 1186 1335 0 1335 1334 0
		 1336 1337 0 1337 1334 0 1335 1336 0 1338 1339 0 1339 1337 0 1336 1338 0 1338 1340 0
		 1340 1341 0 1341 1342 0 1342 1338 0 1343 1344 0 1344 1190 0 1189 1343 0 1343 1345 0
		 1345 1346 0 1346 1344 0 1345 1347 0 1347 1348 0 1348 1346 0 1347 1349 0 1349 1350 0
		 1350 1348 0 1351 1352 0 1352 1353 0 1353 1354 0 1354 1351 0 1352 1192 0 1193 1353 0
		 1355 1182 0 1334 1355 0 1356 1176 0 1355 1356 0 1357 1177 0 1356 1357 0 1357 1358 0
		 1358 1160 0 1160 1177 0 1359 1360 0 1360 1163 0 1163 1161 0 1161 1359 0 1361 1213 0
		 1164 1362 0 1362 1361 0 1361 1251 0 1363 1364 0 1364 1365 0 1365 1366 0 1366 1363 0
		 1337 1367 0 1367 1355 0 1368 1356 0 1367 1368 0 1369 1357 0 1368 1369 0;
	setAttr ".ed[2656:2821]" 1369 1370 0 1370 1358 0 1339 1371 0 1371 1367 0 1372 1368 0
		 1371 1372 0 1373 1369 0 1372 1373 0 1373 1374 0 1374 1370 0 1365 1375 0 1375 1376 0
		 1376 1366 0 1377 1378 0 1378 1379 0 1379 1380 0 1380 1377 0 1375 1380 0 1379 1376 0
		 1378 1381 0 1381 1382 0 1382 1379 0 1383 1376 0 1382 1383 0 1384 1366 0 1383 1384 0
		 1385 1363 0 1384 1385 0 1386 1174 0 1209 1211 0 1211 1386 0 1387 1175 0 1386 1387 0
		 1387 1388 0 1388 1273 0 1273 1175 0 1387 1381 0 1381 1374 0 1374 1388 0 1386 1382 0
		 1210 1382 0 1384 1389 0 1389 1390 0 1390 1385 0 1383 1391 0 1391 1389 0 1210 1391 0
		 1392 1391 0 1205 1392 0 1393 1389 0 1392 1393 0 1394 1390 0 1393 1394 0 299 1390 0
		 1394 298 0 1395 1396 0 1396 1204 0 1200 1395 0 1395 1397 0 1397 1398 0 1398 1396 0
		 307 1399 0 1399 1400 0 1400 304 0 309 1401 0 1401 1399 0 1397 1402 0 1402 1403 0
		 1403 1398 0 1404 1405 0 1405 1400 0 1400 1267 0 1267 1404 0 1406 1404 0 1262 1406 0
		 1261 1407 0 1407 1408 0 1408 1265 0 1265 1261 0 1409 1407 0 1258 1409 0 1410 1411 0
		 1411 1412 0 1412 1413 0 1413 1410 0 1414 1415 0 1415 1411 0 1410 1414 0 1409 1416 0
		 1416 1417 0 1417 1407 0 1418 1417 0 1416 1419 0 1419 1418 0 1420 1418 0 1419 1421 0
		 1421 1420 0 1257 1422 0 1422 1409 0 1423 1416 0 1422 1423 0 1424 1419 0 1423 1424 0
		 1424 1425 0 1425 1421 0 1256 1426 0 1426 1422 0 1427 1423 0 1426 1427 0 1427 1428 0
		 1428 1424 0 1428 1429 0 1429 1425 0 1403 1394 0 1393 1398 0 1392 1396 0 1408 1406 0
		 1413 1417 0 1418 1410 0 1420 1414 0 1254 1172 0 1255 1430 0 1430 1426 0 1260 1431 0
		 1431 1430 0 1430 1432 0 1432 1427 0 1431 1433 0 1433 1432 0 1434 1428 0 1432 1434 0
		 1433 1435 0 1435 1434 0 1436 1429 0 1434 1436 0 1435 1437 0 1437 1436 0 1438 1260 0
		 1259 1439 0 1439 1438 0 1440 1431 0 1438 1440 0 1441 1433 0 1440 1441 0 1442 1435 0
		 1441 1442 0 1443 1437 0 1442 1443 0 1439 1405 0 1405 1444 0 1444 1438 0 1441 1412 0
		 1411 1442 0 1415 1443 0 1445 1446 0 1446 1404 0 1406 1445 0 1446 1444 0 1407 1445 0
		 1445 1413 0 1413 1447 0 1447 1446 0 1399 1266 0 1401 1270 0 1448 1440 0 1444 1448 0;
	setAttr ".ed[2822:2987]" 1447 1448 0 1448 1412 0 1449 1450 0 1450 1425 0 1429 1449 0
		 1451 1452 0 1452 1453 0 1453 1454 0 1454 1451 0 1455 1456 0 1456 1457 0 1457 1458 0
		 1458 1455 0 1459 1460 0 1460 1461 0 1461 1462 0 1462 1459 0 1463 1464 0 1464 1459 0
		 1462 1463 0 1465 1466 0 1466 1467 0 1467 1468 0 1468 1465 0 1469 1470 0 1470 1471 0
		 1471 1472 0 1472 1469 0 1473 1474 0 1474 1469 0 1472 1473 0 1475 1421 0 1450 1475 0
		 1476 1477 0 1477 1452 0 1451 1476 0 1476 1478 0 1478 1479 0 1479 1477 0 1436 1480 0
		 1480 1449 0 1480 1481 0 1481 1453 0 1453 1449 0 1437 1482 0 1482 1480 0 1454 1483 0
		 1483 1484 0 1484 1457 0 1457 1454 0 1482 1485 0 1485 1481 0 1486 1487 0 1487 1484 0
		 1483 1486 0 1455 1488 0 1488 1489 0 1489 1456 0 1488 1490 0 1490 1491 0 1491 1489 0
		 1443 1492 0 1492 1482 0 1492 1493 0 1493 1485 0 1494 1495 0 1495 1487 0 1486 1494 0
		 1415 1496 0 1496 1492 0 1496 1497 0 1497 1493 0 1498 1499 0 1499 1495 0 1494 1498 0
		 1414 1500 0 1500 1496 0 1420 1501 0 1501 1500 0 1500 1502 0 1502 1497 0 1501 1479 0
		 1479 1502 0 1503 1504 0 1504 1499 0 1498 1503 0 1503 1478 0 1478 1491 0 1491 1504 0
		 1475 1501 0 1459 1505 0 1505 1506 0 1506 1460 0 1505 1507 0 1507 1508 0 1508 1506 0
		 1507 1509 0 1509 1510 0 1510 1508 0 1464 1511 0 1511 1505 0 1512 1507 0 1511 1512 0
		 1513 1509 0 1512 1513 0 1509 1514 0 1514 1515 0 1515 1510 0 1513 1516 0 1516 1514 0
		 1517 1518 0 1518 1461 0 1461 1458 0 1458 1517 0 1519 1520 0 1520 1521 0 1521 1518 0
		 1518 1519 0 1522 1463 0 1462 1521 0 1521 1522 0 1520 1523 0 1523 1522 0 1524 1468 0
		 1467 1525 0 1525 1524 0 1525 1526 0 1526 1527 0 1527 1524 0 1524 1528 0 1528 1471 0
		 1471 1468 0 1529 1530 0 1530 1531 0 1531 1528 0 1528 1529 0 1532 1533 0 1533 1520 0
		 1519 1532 0 1532 1534 0 1534 1535 0 1535 1515 0 1515 1532 0 1533 1536 0 1536 1523 0
		 1533 1514 0 1516 1536 0 1537 1527 0 1526 1538 0 1538 1537 0 1539 1537 0 1538 1540 0
		 1540 1539 0 1540 1541 0 1541 1542 0 1542 1539 0 1541 1543 0 1543 1544 0 1544 1542 0
		 1543 1545 0 1545 1546 0 1546 1544 0 1545 1466 0 1465 1546 0 1469 1547 0 1547 1548 0;
	setAttr ".ed[2988:3153]" 1548 1470 0 1547 1549 0 1549 1550 0 1550 1548 0 1549 1551 0
		 1551 1552 0 1552 1550 0 1551 1553 0 1553 1554 0 1554 1552 0 1553 1555 0 1555 1556 0
		 1556 1554 0 1555 1530 0 1529 1556 0 1557 1473 0 1472 1531 0 1531 1557 0 1558 1557 0
		 1530 1558 0 1555 1559 0 1559 1558 0 1553 1560 0 1560 1559 0 1551 1561 0 1561 1560 0
		 1549 1562 0 1562 1561 0 1547 1563 0 1563 1562 0 1474 1563 0 1562 1564 0 1564 1565 0
		 1565 1561 0 1566 1565 0 1564 1567 0 1567 1566 0 1565 1568 0 1568 1560 0 1569 1559 0
		 1568 1569 0 1570 1558 0 1569 1570 0 1566 1571 0 1571 1568 0 1572 1569 0 1571 1572 0
		 1573 1570 0 1572 1573 0 1574 1575 0 1575 1576 0 1576 1577 0 1577 1574 0 1578 1579 0
		 1579 1580 0 1580 1581 0 1581 1578 0 1582 1583 0 1583 1584 0 1584 1585 0 1585 1582 0
		 1586 1557 0 1570 1586 0 1586 1577 0 1577 1473 0 1573 1587 0 1587 1586 0 1587 1588 0
		 1588 1577 0 1582 1589 0 1589 1590 0 1590 1583 0 1563 1591 0 1591 1564 0 1474 1592 0
		 1592 1591 0 1593 1567 0 1591 1593 0 1592 1594 0 1594 1593 0 1579 1592 0 1592 1595 0
		 1595 1580 0 1578 1585 0 1584 1596 0 1596 1578 0 1597 1594 0 1579 1597 0 1596 1597 0
		 1585 1581 0 1581 1598 0 1598 1582 0 1599 1600 0 1600 1601 0 1601 1602 0 1602 1599 0
		 1603 1599 0 1602 1604 0 1604 1603 0 1605 1606 0 1606 1601 0 1600 1605 0 1607 1606 0
		 1605 1608 0 1608 1607 0 1609 1610 0 1610 1607 0 1608 1609 0 1611 1612 0 1612 1613 0
		 1613 1614 0 1614 1611 0 1615 1616 0 1616 1611 0 1614 1615 0 1617 1618 0 1618 1616 0
		 1615 1617 0 1603 1619 0 1619 1620 0 1620 1599 0 1621 1600 0 1620 1621 0 1622 1605 0
		 1621 1622 0 1623 1608 0 1622 1623 0 1624 1609 0 1623 1624 0 1613 1609 0 1624 1625 0
		 1625 1613 0 1626 1615 0 1614 1627 0 1627 1626 0 1628 1617 0 1626 1628 0 1621 1624 0
		 1621 1629 0 1629 1630 0 1630 1624 0 1631 1632 0 1632 1630 0 1629 1631 0 1633 1634 0
		 1634 1632 0 1631 1633 0 1612 1610 0 1630 1635 0 1635 1625 0 1636 1626 0 1627 1637 0
		 1637 1636 0 1638 1628 0 1636 1638 0 1632 1639 0 1639 1635 0 1640 1636 0 1637 1641 0
		 1641 1640 0 1642 1638 0 1640 1642 0 1643 1644 0 1644 1618 0 1617 1643 0 1628 1645 0;
	setAttr ".ed[3154:3319]" 1645 1643 0 1646 1644 0 1643 1647 0 1647 1646 0 1648 1646 0
		 1647 1649 0 1649 1648 0 1620 1650 0 1650 1629 0 1651 1631 0 1650 1651 0 1652 1633 0
		 1651 1652 0 1653 1654 0 1654 1652 0 1651 1653 0 1655 1653 0 1650 1655 0 1656 1657 0
		 1657 1654 0 1653 1656 0 1658 1659 0 1659 1656 0 1653 1658 0 1655 1660 0 1660 1658 0
		 1661 1662 0 1662 1603 0 1604 1661 0 1661 1663 0 1663 1664 0 1664 1662 0 1634 1665 0
		 1665 1639 0 1666 1640 0 1641 1667 0 1667 1666 0 1625 1627 0 1635 1637 0 1639 1641 0
		 1665 1667 0 1638 1668 0 1668 1645 0 1668 1669 0 1669 1670 0 1670 1645 0 1671 1668 0
		 1642 1671 0 1671 1649 0 1649 1669 0 1671 1672 0 1672 1648 0 1666 1673 0 1673 1642 0
		 1673 1672 0 1662 1674 0 1674 1619 0 1619 1655 0 1674 1660 0 1664 1675 0 1675 1674 0
		 1676 1664 0 1663 1677 0 1677 1676 0 1678 1675 0 1676 1678 0 1679 1677 0 1663 1680 0
		 1680 1679 0 1661 1681 0 1681 1680 0 1602 1682 0 1682 1683 0 1683 1604 0 1684 1682 0
		 1601 1684 0 1685 1684 0 1606 1685 0 1686 1685 0 1607 1686 0 1687 1686 0 1610 1687 0
		 1612 1688 0 1688 1687 0 1689 1690 0 1690 1611 0 1616 1689 0 1691 1689 0 1618 1691 0
		 1687 1684 0 1687 1692 0 1692 1693 0 1693 1684 0 1633 1693 0 1692 1634 0 1688 1694 0
		 1694 1692 0 1695 1696 0 1696 1690 0 1689 1695 0 1697 1695 0 1691 1697 0 1694 1665 0
		 1667 1696 0 1695 1666 0 1697 1673 0 1698 1691 0 1644 1698 0 1693 1699 0 1699 1682 0
		 1652 1699 0 1700 1699 0 1654 1700 0 1701 1654 0 1657 1702 0 1702 1701 0 1701 1703 0
		 1703 1700 0 1690 1688 0 1696 1694 0 1704 1697 0 1698 1704 0 1698 1705 0 1705 1706 0
		 1706 1704 0 1704 1672 0 1706 1648 0 1683 1681 0 1700 1683 0 1703 1681 0 1647 1670 0
		 1705 1646 0 1707 1708 0 1708 1709 0 1709 1710 0 1710 1707 0 1711 1707 0 1710 1712 0
		 1712 1711 0 1713 1714 0 1714 1709 0 1708 1713 0 1715 1714 0 1713 1716 0 1716 1715 0
		 1717 1718 0 1718 1715 0 1716 1717 0 1719 1720 0 1720 1721 0 1721 1722 0 1722 1719 0
		 1723 1724 0 1724 1719 0 1722 1723 0 1725 1726 0 1726 1724 0 1723 1725 0 1711 1727 0
		 1727 1728 0 1728 1707 0 1729 1708 0 1728 1729 0 1730 1713 0 1729 1730 0 1731 1716 0;
	setAttr ".ed[3320:3485]" 1730 1731 0 1732 1717 0 1731 1732 0 1721 1717 0 1732 1733 0
		 1733 1721 0 1734 1723 0 1722 1735 0 1735 1734 0 1736 1725 0 1734 1736 0 1729 1732 0
		 1729 1737 0 1737 1738 0 1738 1732 0 1739 1740 0 1740 1738 0 1737 1739 0 1741 1742 0
		 1742 1740 0 1739 1741 0 1720 1718 0 1738 1743 0 1743 1733 0 1744 1734 0 1735 1745 0
		 1745 1744 0 1746 1736 0 1744 1746 0 1740 1747 0 1747 1743 0 1748 1744 0 1745 1749 0
		 1749 1748 0 1750 1746 0 1748 1750 0 1751 1752 0 1752 1726 0 1725 1751 0 1736 1753 0
		 1753 1751 0 1754 1752 0 1751 1755 0 1755 1754 0 1756 1754 0 1755 1757 0 1757 1756 0
		 1728 1758 0 1758 1737 0 1759 1739 0 1758 1759 0 1760 1741 0 1759 1760 0 1761 1762 0
		 1762 1760 0 1759 1761 0 1763 1761 0 1758 1763 0 1764 1765 0 1765 1762 0 1761 1764 0
		 1763 1766 0 1766 1764 0 1767 1768 0 1768 1711 0 1712 1767 0 1767 1769 0 1769 1770 0
		 1770 1768 0 1742 1771 0 1771 1747 0 1772 1748 0 1749 1773 0 1773 1772 0 1733 1735 0
		 1743 1745 0 1747 1749 0 1771 1773 0 1746 1774 0 1774 1753 0 1774 1775 0 1775 1776 0
		 1776 1753 0 1777 1774 0 1750 1777 0 1777 1757 0 1757 1775 0 1777 1778 0 1778 1756 0
		 1772 1779 0 1779 1750 0 1779 1778 0 1768 1780 0 1780 1727 0 1727 1763 0 1780 1766 0
		 1770 1781 0 1781 1780 0 1782 1770 0 1769 1783 0 1783 1782 0 1784 1781 0 1782 1784 0
		 1678 1783 0 1769 1675 0 1767 1674 0 1710 1785 0 1785 1786 0 1786 1712 0 1787 1785 0
		 1709 1787 0 1788 1787 0 1714 1788 0 1789 1788 0 1715 1789 0 1790 1789 0 1718 1790 0
		 1720 1791 0 1791 1790 0 1792 1793 0 1793 1719 0 1724 1792 0 1794 1792 0 1726 1794 0
		 1790 1787 0 1790 1795 0 1795 1796 0 1796 1787 0 1741 1796 0 1795 1742 0 1791 1797 0
		 1797 1795 0 1798 1799 0 1799 1793 0 1792 1798 0 1800 1798 0 1794 1800 0 1797 1771 0
		 1773 1799 0 1798 1772 0 1800 1779 0 1801 1794 0 1752 1801 0 1796 1802 0 1802 1785 0
		 1760 1802 0 1803 1802 0 1762 1803 0 1658 1762 0 1765 1659 0 1660 1803 0 1793 1791 0
		 1799 1797 0 1804 1800 0 1801 1804 0 1801 1805 0 1805 1806 0 1806 1804 0 1804 1778 0
		 1806 1756 0 1786 1674 0 1803 1786 0 1755 1776 0 1805 1754 0 1781 1807 0 1807 1766 0;
	setAttr ".ed[3486:3651]" 1808 1764 0 1807 1808 0 1809 1765 0 1808 1809 0 1810 1808 0
		 1807 1811 0 1811 1810 0 1812 1813 0 1813 1810 0 1811 1812 0 1784 1811 0 1784 1814 0
		 1814 1812 0 1782 1815 0 1815 1814 0 1816 1817 0 1817 1818 0 1818 1819 0 1819 1816 0
		 1819 1820 0 1820 1816 0 1820 1821 0 1821 1822 0 1822 1816 0 1823 1824 0 1824 1825 0
		 1825 1826 0 1826 1823 0 1827 1828 0 1828 1823 0 1826 1827 0 1829 1830 0 1830 1826 0
		 1825 1829 0 1831 1832 0 1832 1830 0 1829 1831 0 1830 1833 0 1833 1827 0 1832 1834 0
		 1834 1833 0 1835 1836 0 1836 1828 0 1827 1835 0 1192 1837 0 1837 1838 0 1838 1188 0
		 1833 1839 0 1839 1835 0 1839 1840 0 1840 1838 0 1838 1835 0 1834 1841 0 1841 1839 0
		 1841 1842 0 1842 1840 0 1843 1836 0 1836 1837 0 1837 1844 0 1844 1843 0 1843 1845 0
		 1845 1828 0 1846 1823 0 1845 1846 0 1846 1847 0 1847 1824 0 1848 1816 0 1822 1849 0
		 1849 1848 0 1850 1817 0 1848 1850 0 1851 1852 0 1852 1821 0 1820 1851 0 1853 1854 0
		 1854 1852 0 1851 1853 0 1678 1851 0 1819 1678 0 1855 1856 0 1856 1810 0 1813 1855 0
		 1857 1858 0 1858 1859 0 1859 1860 0 1860 1857 0 1859 1850 0 1848 1860 0 1861 1862 0
		 1862 1822 0 1821 1861 0 1863 1861 0 1852 1863 0 1864 1863 0 1854 1864 0 1862 1865 0
		 1865 1849 0 1679 1853 0 1678 1679 0 1819 1782 0 1818 1815 0 1857 1866 0 1866 1867 0
		 1867 1858 0 1809 1868 0 1868 1659 0 1869 1656 0 1868 1869 0 1870 1657 0 1869 1870 0
		 1871 1702 0 1870 1871 0 1872 1873 0 1873 1702 0 1871 1872 0 1856 1809 0 1857 1874 0
		 1874 1875 0 1875 1866 0 1860 1876 0 1876 1874 0 1850 1877 0 1877 1878 0 1878 1817 0
		 1879 1880 0 1880 1878 0 1877 1879 0 1881 1880 0 1879 1882 0 1882 1881 0 1883 1884 0
		 1884 1881 0 1882 1883 0 1885 1886 0 1886 1887 0 1887 1888 0 1888 1885 0 1889 1890 0
		 1890 1885 0 1888 1889 0 1891 1879 0 1877 1892 0 1892 1891 0 1893 1882 0 1891 1893 0
		 1894 1883 0 1893 1894 0 1887 1883 0 1894 1895 0 1895 1887 0 1896 1889 0 1888 1897 0
		 1897 1896 0 1892 1894 0 1892 1898 0 1898 1899 0 1899 1894 0 1900 1901 0 1901 1899 0
		 1898 1900 0 1902 1903 0 1903 1901 0 1900 1902 0 1886 1884 0 1899 1904 0 1904 1895 0;
	setAttr ".ed[3652:3817]" 1905 1896 0 1897 1906 0 1906 1905 0 1901 1907 0 1907 1904 0
		 1908 1905 0 1906 1909 0 1909 1908 0 1910 1911 0 1911 1912 0 1912 1913 0 1913 1910 0
		 1896 1914 0 1914 1913 0 1913 1889 0 1915 1911 0 1910 1916 0 1916 1915 0 1917 1915 0
		 1916 1918 0 1918 1917 0 1858 1898 0 1892 1859 0 1867 1900 0 1903 1919 0 1919 1907 0
		 1920 1908 0 1909 1921 0 1921 1920 0 1895 1897 0 1904 1906 0 1907 1909 0 1919 1921 0
		 1905 1922 0 1922 1914 0 1923 1924 0 1924 1925 0 1925 1926 0 1926 1923 0 1927 1924 0
		 1924 1922 0 1922 1928 0 1928 1927 0 1927 1918 0 1918 1925 0 1927 1929 0 1929 1917 0
		 1920 1930 0 1930 1928 0 1928 1908 0 1931 1932 0 1932 1878 0 1880 1931 0 1933 1931 0
		 1881 1933 0 1934 1933 0 1884 1934 0 1886 1935 0 1935 1934 0 1936 1937 0 1937 1885 0
		 1890 1936 0 1934 1932 0 1934 1938 0 1938 1939 0 1939 1932 0 1902 1939 0 1938 1903 0
		 1935 1940 0 1940 1938 0 1941 1942 0 1942 1937 0 1936 1941 0 1940 1919 0 1921 1942 0
		 1941 1920 0 1943 1936 0 1890 1912 0 1912 1943 0 1812 1939 0 1902 1813 0 1937 1935 0
		 1942 1940 0 1944 1941 0 1943 1944 0 1945 1946 0 1946 1947 0 1947 1948 0 1948 1945 0
		 1929 1930 0 1930 1944 0 1944 1945 0 1945 1929 0 1948 1917 0 1932 1818 0 1916 1926 0
		 1947 1915 0 1910 1923 0 1946 1911 0 1914 1923 0 1946 1943 0 1932 1814 0 1867 1813 0
		 1949 1868 0 1856 1949 0 1950 1876 0 1848 1950 0 1849 1951 0 1951 1950 0 1952 1876 0
		 1951 1952 0 1865 1953 0 1953 1951 0 1954 1952 0 1953 1954 0 1955 1874 0 1952 1955 0
		 1956 1957 0 1957 1952 0 1954 1956 0 1955 1958 0 1958 1875 0 1959 1960 0 1960 1955 0
		 1952 1959 0 1957 1961 0 1961 1959 0 1962 1958 0 1960 1962 0 1958 1963 0 1963 1964 0
		 1964 1875 0 1965 1963 0 1963 1966 0 1966 1967 0 1967 1965 0 1962 1966 0 1968 1960 0
		 1961 1968 0 1969 1962 0 1968 1969 0 1970 1966 0 1969 1970 0 1971 1972 0 1972 1847 0
		 1846 1971 0 1971 1973 0 1973 1974 0 1974 1972 0 1973 1975 0 1975 1976 0 1976 1974 0
		 1845 1977 0 1977 1971 0 1843 1978 0 1978 1977 0 1351 1979 0 1979 1844 0 1844 1352 0
		 1980 1973 0 1977 1980 0 1978 1981 0 1981 1980 0 1349 1982 0 1982 1979 0 1351 1349 0;
	setAttr ".ed[3818:3983]" 1980 1983 0 1983 1975 0 1981 1984 0 1984 1983 0 1347 1985 0
		 1985 1982 0 1855 1866 0 1875 1856 0 1986 1987 0 1987 1988 0 1988 1989 0 1989 1986 0
		 1990 1986 0 1989 1991 0 1991 1990 0 1992 1993 0 1993 1988 0 1987 1992 0 1994 1993 0
		 1992 1995 0 1995 1994 0 1996 1997 0 1997 1994 0 1995 1996 0 1998 1999 0 1999 2000 0
		 2000 2001 0 2001 1998 0 2002 2003 0 2003 1998 0 2001 2002 0 2004 2005 0 2005 2003 0
		 2002 2004 0 1990 2006 0 2006 2007 0 2007 1986 0 2008 1987 0 2007 2008 0 2009 1992 0
		 2008 2009 0 2010 1995 0 2009 2010 0 2011 1996 0 2010 2011 0 2000 1996 0 2011 2012 0
		 2012 2000 0 2013 2002 0 2001 2014 0 2014 2013 0 2015 2004 0 2013 2015 0 2008 2011 0
		 2008 2016 0 2016 2017 0 2017 2011 0 2018 2019 0 2019 2017 0 2016 2018 0 2020 2021 0
		 2021 2019 0 2018 2020 0 1999 1997 0 2017 2022 0 2022 2012 0 2023 2013 0 2014 2024 0
		 2024 2023 0 2025 2015 0 2023 2025 0 2019 2026 0 2026 2022 0 2027 2023 0 2024 2028 0
		 2028 2027 0 2029 2025 0 2027 2029 0 2030 2031 0 2031 2005 0 2004 2030 0 2015 2032 0
		 2032 2030 0 2033 2031 0 2030 2034 0 2034 2033 0 2035 2033 0 2034 2036 0 2036 2035 0
		 2007 2037 0 2037 2016 0 2038 2018 0 2037 2038 0 2039 2020 0 2038 2039 0 2040 2041 0
		 2041 2039 0 2038 2040 0 2042 2040 0 2037 2042 0 1873 2043 0 2043 2041 0 2040 1873 0
		 2040 1701 0 2042 1703 0 2044 2045 0 2045 1990 0 1991 2044 0 2044 2046 0 2046 2047 0
		 2047 2045 0 2021 2048 0 2048 2026 0 2049 2027 0 2028 2050 0 2050 2049 0 2012 2014 0
		 2022 2024 0 2026 2028 0 2048 2050 0 2025 2051 0 2051 2032 0 2051 2052 0 2052 2053 0
		 2053 2032 0 2054 2051 0 2029 2054 0 2054 2036 0 2036 2052 0 2054 2055 0 2055 2035 0
		 2049 2056 0 2056 2029 0 2056 2055 0 2045 1681 0 1681 2006 0 2006 2042 0 2047 1680 0
		 2044 2057 0 2057 2058 0 2058 2046 0 1989 2059 0 2059 2060 0 2060 1991 0 2061 2059 0
		 1988 2061 0 2062 2061 0 1993 2062 0 2063 2062 0 1994 2063 0 2064 2063 0 1997 2064 0
		 1999 2065 0 2065 2064 0 2066 2067 0 2067 1998 0 2003 2066 0 2068 2066 0 2005 2068 0
		 2064 2061 0 2064 2069 0 2069 2070 0 2070 2061 0 2020 2070 0 2069 2021 0 2065 2071 0;
	setAttr ".ed[3984:4149]" 2071 2069 0 2072 2073 0 2073 2067 0 2066 2072 0 2074 2072 0
		 2068 2074 0 2071 2048 0 2050 2073 0 2072 2049 0 2074 2056 0 2075 2068 0 2031 2075 0
		 2070 2076 0 2076 2059 0 2039 2076 0 2077 2076 0 2041 2077 0 2078 2041 0 2043 2079 0
		 2079 2078 0 2078 2080 0 2080 2077 0 2067 2065 0 2073 2071 0 2081 2074 0 2075 2081 0
		 2075 2082 0 2082 2083 0 2083 2081 0 2081 2055 0 2083 2035 0 2060 2057 0 2077 2060 0
		 2080 2057 0 2034 2053 0 2082 2033 0 2084 1679 0 2047 2084 0 2046 2085 0 2085 2084 0
		 2058 2086 0 2086 2085 0 2086 1679 0 2087 1853 0 2086 2087 0 2088 1965 0 1965 2079 0
		 2043 2088 0 1872 2088 0 1970 2089 0 2089 1967 0 2090 2079 0 1967 2090 0 2091 2078 0
		 2090 2091 0 2087 2092 0 2092 1854 0 2093 1864 0 2092 2093 0 2093 2094 0 2094 1831 0
		 1831 1864 0 2095 1834 0 1832 2096 0 2096 2095 0 2097 1841 0 2095 2097 0 2097 2098 0
		 2098 1842 0 2099 2100 0 2100 2101 0 2101 2102 0 2102 2099 0 2103 2104 0 2104 2101 0
		 2100 2103 0 2105 2104 0 2103 2106 0 2106 2105 0 2107 2108 0 2108 2105 0 2106 2107 0
		 2109 2110 0 2110 2111 0 2111 2112 0 2112 2109 0 2113 2114 0 2114 2109 0 2112 2113 0
		 2115 2116 0 2116 2114 0 2113 2115 0 2099 2057 0 2057 2117 0 2117 2100 0 2118 2103 0
		 2117 2118 0 2119 2106 0 2118 2119 0 2120 2107 0 2119 2120 0 2111 2107 0 2120 2121 0
		 2121 2111 0 2122 2113 0 2112 2123 0 2123 2122 0 2124 2115 0 2122 2124 0 2117 2120 0
		 2117 2125 0 2125 2126 0 2126 2120 0 2127 2128 0 2128 2126 0 2125 2127 0 2129 2130 0
		 2130 2128 0 2127 2129 0 2110 2108 0 2126 2131 0 2131 2121 0 2132 2122 0 2123 2133 0
		 2133 2132 0 2134 2124 0 2132 2134 0 2128 2135 0 2135 2131 0 2136 2132 0 2133 2137 0
		 2137 2136 0 2138 2134 0 2136 2138 0 2139 2140 0 2140 2116 0 2115 2139 0 2124 2141 0
		 2141 2139 0 2142 2140 0 2139 2143 0 2143 2142 0 2144 2142 0 2143 2145 0 2145 2144 0
		 2146 2129 0 2127 2090 0 2090 2146 0 2125 2091 0 2147 2148 0 2148 2099 0 2102 2147 0
		 2147 2149 0 2149 2150 0 2150 2148 0 2130 2151 0 2151 2135 0 2152 2136 0 2137 2153 0
		 2153 2152 0 2121 2123 0 2131 2133 0 2135 2137 0 2151 2153 0 2134 2154 0 2154 2141 0;
	setAttr ".ed[4150:4315]" 2154 2155 0 2155 2156 0 2156 2141 0 2157 2154 0 2138 2157 0
		 2157 2145 0 2145 2155 0 2157 2158 0 2158 2144 0 2152 2159 0 2159 2138 0 2159 2158 0
		 2148 2058 0 2057 2091 0 2150 2086 0 2147 2160 0 2160 2161 0 2161 2149 0 2101 2162 0
		 2162 2163 0 2163 2102 0 2164 2162 0 2104 2164 0 2165 2164 0 2105 2165 0 2166 2165 0
		 2108 2166 0 2110 2167 0 2167 2166 0 2168 2169 0 2169 2109 0 2114 2168 0 2170 2168 0
		 2116 2170 0 2166 2162 0 2166 2171 0 2171 2172 0 2172 2162 0 2129 2172 0 2171 2130 0
		 2167 2173 0 2173 2171 0 2174 2175 0 2175 2169 0 2168 2174 0 2176 2174 0 2170 2176 0
		 2173 2151 0 2153 2175 0 2174 2152 0 2176 2159 0 2177 2170 0 2140 2177 0 2178 2172 0
		 2146 2178 0 2146 2089 0 2089 2179 0 2179 2178 0 2169 2167 0 2175 2173 0 2180 2176 0
		 2177 2180 0 2177 2181 0 2181 2182 0 2182 2180 0 2180 2158 0 2182 2144 0 2163 2160 0
		 2178 2163 0 2179 2160 0 2143 2156 0 2181 2142 0 2183 2179 0 1970 2183 0 2183 2161 0
		 1969 2161 0 2184 2161 0 1968 2184 0 1961 2185 0 2185 2184 0 1957 2186 0 2186 2185 0
		 1956 2093 0 2093 2186 0 2096 2094 0 2094 1976 0 1975 2096 0 2161 2086 0 2184 2087 0
		 2185 2092 0 1983 2095 0 1984 2097 0 1984 1985 0 1985 2098 0 1868 1871 0 1949 1964 0
		 1964 1871 0 1871 1965 0 1403 1095 0 1402 1096 0 1571 1567 0 1567 1573 0 2187 1597 0
		 1596 1590 0 1590 2187 0 1593 1587 0 1594 1588 0 1589 1574 0 1574 2187 0 1588 2187 0
		 1589 1598 0 1598 1575 0 1473 1576 0 1576 1595 0 1595 1474 0 1575 1580 0 2188 1278 0
		 1277 2189 0 2189 2188 0 1372 2189 0 2189 2190 0 2190 1373 0 1371 2188 0 1339 2191 0
		 2191 2188 0 2191 1329 0 1277 1274 0 1274 2190 0 1215 1151 0 1150 1215 0 2191 1342 0
		 1342 1333 0 1333 1329 0 1331 1341 0 1341 1350 0 1350 1354 0 1354 1331 0 1252 1103 0
		 1102 1247 0 1105 1364 0 1363 1104 0 1385 1106 0 1439 1108 0 1107 1405 0 1221 1109 0
		 1224 1110 0 1226 1111 0 1230 1112 0 1236 1113 0 1232 1114 0 1231 1115 0 1248 1117 0
		 1116 1249 0 1118 1250 0 1119 1300 0 1184 1191 0 1190 1185 0 1217 1193 0 1344 2192 0
		 2192 1185 0 1346 2193 0 2193 2192 0 1348 1340 0 1340 2193 0 1353 1332 0 1217 1332 0;
	setAttr ".ed[4316:4399]" 1180 1187 0 2192 1335 0 2193 1336 0 1861 1825 0 1824 1862 0
		 1863 1829 0 1847 1865 0 1972 1953 0 1974 1954 0 1976 1956 0 1452 1450 0 1456 1451 0
		 1477 1475 0 1481 1483 0 1484 1517 0 1485 1486 0 1487 2194 0 2194 1517 0 1489 1476 0
		 1493 1494 0 1495 1534 0 1534 2194 0 1497 1498 0 1499 1535 0 1502 1503 0 1504 2195 0
		 2195 1535 0 1490 2195 0 1460 1455 0 1506 1488 0 1508 1490 0 1510 2195 0 2194 1519 0
		 1840 1189 0 1842 1343 0 1979 1978 0 1982 1981 0 2098 1345 0 1126 1130 0 1125 1134 0
		 1145 1137 0 1147 1140 0 1157 1152 0 1360 1362 0 1178 1158 0 1275 1146 0 1358 1359 0
		 1370 1378 0 1378 1359 0 1388 2190 0 1264 1202 0 1269 1200 0 1395 1268 0 1270 1397 0
		 1401 1402 0 1156 1153 0 1275 1150 0 1150 1147 0 1149 1140 0 1153 1139 0 1360 1377 0
		 1380 1362 0 1375 1361 0 1365 1251 0 1364 1252 0 1206 1208 0 1203 1207 0 1199 1201 0
		 1470 1465 0 1527 1529 0 1548 1546 0 1550 1544 0 1552 1542 0 1554 1539 0 1556 1537 0
		 1463 1467 0 1466 1464 0 1545 1511 0 1543 1512 0 1541 1513 0 1540 1516 0 1522 1525 0
		 1523 1526 0 1536 1538 0;
	setAttr -s 8800 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.54789126 -0.089996673 0.83169454 -0.091497585
		 0.058698453 0.99407381 -0.010100369 0.31561154 0.94883472 -0.36296853 0.26184171
		 0.8942554 -4.4619527e-31 0.11100225 0.99382013 -4.3854088e-31 0.30859762 0.95119268
		 -0.010100369 0.31561154 0.94883472 -0.091497585 0.058698453 0.99407381 -0.54789126
		 -0.089996673 0.83169454 -0.71347123 -0.26368937 0.64917386 -0.21690875 -0.2158087
		 0.95203847 -0.091497585 0.058698453 0.99407381 -0.091497585 0.058698453 0.99407381
		 -0.21690875 -0.2158087 0.95203847 -3.8378113e-31 -0.087803334 0.99613786 -4.4619527e-31
		 0.11100225 0.99382013 -4.0121183e-31 0.52202022 0.85293311 0.029601593 0.56473041
		 0.8247444 0.031700462 0.46940681 0.88241279 -4.2446758e-31 0.4092167 0.9124372 0.006399591
		 0.66975719 0.74255258 0.029601593 0.56473041 0.8247444 -4.0121183e-31 0.52202022
		 0.85293311 -3.7424599e-31 0.61770672 0.78640854 -0.12950642 0.57932872 0.80473989
		 0.006399591 0.66975719 0.74255258 -3.7424599e-31 0.61770672 0.78640854 -3.5486369e-31
		 0.54550493 0.83810759 -0.24486378 0.47585368 0.84475148 0.031700462 0.46940681 0.88241279
		 0.029601593 0.56473041 0.8247444 -0.17674902 0.61569524 0.76790571 -0.16969468 0.74207669
		 0.64847964 -0.17674902 0.61569524 0.76790571 0.029601593 0.56473041 0.8247444 0.006399591
		 0.66975719 0.74255258 -0.4082489 0.50404078 0.76110166 -0.24486378 0.47585368 0.84475148
		 -0.17674902 0.61569524 0.76790571 -0.32978642 0.65678638 0.67813903 -0.28220338 0.66368747
		 0.69273382 -0.38610753 0.52093506 0.7612803 -0.4082489 0.50404078 0.76110166 -0.32978642
		 0.65678638 0.67813903 -0.28478661 0.69626731 0.65886903 -0.16969468 0.74207669 0.64847964
		 0.006399591 0.66975719 0.74255258 -0.12950642 0.57932872 0.80473989 -0.32978642 0.65678638
		 0.67813903 -0.17674902 0.61569524 0.76790571 -0.16969468 0.74207669 0.64847964 -0.28038368
		 0.75962842 0.58681315 -0.28478661 0.69626731 0.65886903 -0.32280096 0.78950232 0.52200156
		 -0.28038368 0.75962842 0.58681315 -0.16969468 0.74207669 0.64847964 -0.36296853 0.26184171
		 0.8942554 -0.54566103 0.26344305 0.79551983 -0.71194339 -0.206595 0.67115951 -0.54789126
		 -0.089996673 0.83169454 -0.69513375 -0.21996875 0.6843996 -0.71194339 -0.206595 0.67115951
		 -0.54566103 0.26344305 0.79551983 -0.53543878 0.25534123 0.80505043 -0.39409468 0.72328317
		 0.56705451 -0.47456229 0.57693011 0.66478741 -0.4167873 0.2968958 0.85915148 -0.34430754
		 0.53299296 0.77289766 -0.34430754 0.53299296 0.77289766 -0.22050552 0.67848957 0.70073479
		 -0.26085058 0.85234368 0.45328495 -0.39409468 0.72328317 0.56705451 -0.32978642 0.65678638
		 0.67813903 -0.28038368 0.75962842 0.58681315 -0.21355014 0.77590001 0.59361231 -0.28220338
		 0.66368747 0.69273382 -0.17457585 0.88122833 0.43927205 -0.11776043 0.91123992 0.39468253
		 -0.12180056 0.79396039 0.59564382 -0.21355014 0.77590001 0.59361231 -0.17457585 0.88122833
		 0.43927205 -0.21355014 0.77590001 0.59361231 -0.28038368 0.75962842 0.58681315 -0.32280096
		 0.78950232 0.52200156 -0.69459206 0.69980007 0.16679855 -0.47456229 0.57693011 0.66478741
		 -0.39409468 0.72328317 0.56705451 -0.55471742 0.83013701 0.056224085 -0.70439792
		 0.53678125 -0.46442381 -0.69459206 0.69980007 0.16679855 -0.55471742 0.83013701 0.056224085
		 -0.55832207 0.62422949 -0.54645586 -0.55471742 0.83013701 0.056224085 -0.39409468
		 0.72328317 0.56705451 -0.26085058 0.85234368 0.45328495 -0.36629164 0.93015426 -0.025365956
		 -0.32872993 0.72517133 -0.60503155 -0.36629164 0.93015426 -0.025365956 -0.19056705
		 0.9807846 -0.04178191 -0.13145663 0.7881192 -0.60132134 -0.3025074 -0.14840363 0.94152302
		 -3.3142459e-31 -0.037100427 0.99931157 -3.8378113e-31 -0.087803334 0.99613786 -0.21690875
		 -0.2158087 0.95203847 -2.4193656e-31 -0.008299714 0.99996555 -3.3142459e-31 -0.037100427
		 0.99931157 -0.3025074 -0.14840363 0.94152302 -0.35619193 -0.056898709 0.93267888
		 -7.8165002e-32 0.093700044 0.99560046 -1.804795e-31 0.064401552 0.99792409 -0.37628907
		 0.024699282 0.92617303 -0.36890846 0.09280213 0.9248212 -2.7233609e-32 0.0275006
		 0.99962181 -7.8165002e-32 0.093700044 0.99560046 -0.36890846 0.09280213 0.9248212
		 -0.31370062 0.01510003 0.94940186 -2.7233609e-32 0.0275006 0.99962181 -0.31370062
		 0.01510003 0.94940186 -0.23294565 -0.13512047 0.96305698 0 -0.13109599 0.99136966
		 -0.38111696 -0.32429761 0.86578339 -0.007349073 -0.36785305 0.92985493 0 -0.13109599
		 0.99136966 -0.23294565 -0.13512047 0.96305698 -0.75682348 -0.18490574 0.62691951
		 -0.3025074 -0.14840363 0.94152302 -0.21690875 -0.2158087 0.95203847 -0.71347123 -0.26368937
		 0.64917386 -0.54789126 -0.089996673 0.83169454 -0.71194339 -0.206595 0.67115951 -0.86092305
		 -0.39040622 0.32618162 -0.71347123 -0.26368937 0.64917386 -0.7273342 -0.61298949
		 0.30859163 -0.86092305 -0.39040622 0.32618162 -0.71194339 -0.206595 0.67115951 -0.69513375
		 -0.21996875 0.6843996 -0.68457127 0.62621522 -0.3731176 -0.61746722 0.70977229 0.33905387
		 -0.70191431 0.64479095 0.3025904 -0.72877419 0.54872632 -0.40961882 -0.59925628 0.71727109
		 0.35554758 -0.60166913 0.72329247 0.33888379 -0.69951397 0.63328815 -0.33109871 -0.72677469
		 0.58908564 -0.35323739 -0.5255959 0.78660709 0.32403439 -0.59532833 0.71663904 0.36333546
		 -0.72136879 0.59324557 -0.35733292 -0.69540644 0.62270492 -0.35867605 -0.49260965
		 0.83014095 0.26115462 -0.45320502 0.85075408 0.26612535 -0.66800362 0.65865916 -0.34632254
		 -0.73114026 0.61045218 -0.30460152 -0.029495526 0.70927632 0.70431322 0.026274331
		 0.70194322 0.71174806 -0.45320502 0.85075408 0.26612535 -0.49260965 0.83014095 0.26115462
		 -0.77101958 -0.064701639 0.63351601 -0.35619193 -0.056898709 0.93267888 -0.3025074
		 -0.14840363 0.94152302 -0.75682348 -0.18490574 0.62691951 -0.69817793 0.096596956
		 0.70937759 -0.36890846 0.09280213 0.9248212 -0.37628907 0.024699282 0.92617303 -0.74410433
		 0.014600085 0.6679039 -0.36890846 0.09280213 0.9248212 -0.69817793 0.096596956 0.70937759;
	setAttr ".n[166:331]" -type "float3"  -0.58782315 0.13815756 0.79710501 -0.31370062
		 0.01510003 0.94940186 -0.92984575 0.207353 0.30395985 -0.58782315 0.13815756 0.79710501
		 -0.69817793 0.096596956 0.70937759 -0.90818101 0.1475969 0.39169177 -0.87893564 0.16410667
		 -0.44781819 -0.96275431 0.21120836 -0.16880499 -0.98816454 0.14649475 -0.045498367
		 -0.90818101 0.1475969 0.39169177 -0.69817793 0.096596956 0.70937759 -0.74410433 0.014600085
		 0.6679039 -0.95218527 0.048199255 0.30169532 -0.86189228 -0.040199641 -0.50549549
		 -0.99689865 0.026499964 -0.074099906 -0.98137528 -0.17519557 -0.078798011 -0.84677213
		 -0.28339067 -0.45018515 -1.804795e-31 0.064401552 0.99792409 -2.4193656e-31 -0.008299714
		 0.99996555 -0.35619193 -0.056898709 0.93267888 -0.37628907 0.024699282 0.92617303
		 -0.35619193 -0.056898709 0.93267888 -0.77101958 -0.064701639 0.63351601 -0.74410433
		 0.014600085 0.6679039 -0.37628907 0.024699282 0.92617303 -0.77101958 -0.064701639
		 0.63351601 -0.95580167 -0.1089002 0.27310047 -0.95218527 0.048199255 0.30169532 -0.74410433
		 0.014600085 0.6679039 -0.87893564 0.16410667 -0.44781819 -0.98816454 0.14649475 -0.045498367
		 -0.99689865 0.026499964 -0.074099906 -0.86189228 -0.040199641 -0.50549549 -0.93040913
		 -0.25791103 0.26042417 -0.75682348 -0.18490574 0.62691951 -0.71347123 -0.26368937
		 0.64917386 -0.86092305 -0.39040622 0.32618162 -0.95580167 -0.1089002 0.27310047 -0.77101958
		 -0.064701639 0.63351601 -0.75682348 -0.18490574 0.62691951 -0.93040913 -0.25791103
		 0.26042417 -0.84677213 -0.28339067 -0.45018515 -0.98137528 -0.17519557 -0.078798011
		 -0.95668036 -0.28245223 -0.070593253 -0.82483321 -0.37591037 -0.42230511 -0.11776043
		 0.91123992 0.39468253 -0.17457585 0.88122833 0.43927205 -0.25900957 0.96559215 0.02336365
		 -0.19056705 0.9807846 -0.04178191 -0.25892162 0.7735014 -0.57849383 -0.13145663 0.7881192
		 -0.60132134 -0.19056705 0.9807846 -0.04178191 -0.25900957 0.96559215 0.02336365 -0.34155121
		 0.49669692 0.79789406 -0.40294564 0.39638895 0.82493067 -0.70191431 0.64479095 0.3025904
		 -0.61746722 0.70977229 0.33905387 -0.61746722 0.70977229 0.33905387 -0.60166913 0.72329247
		 0.33888379 -0.32929656 0.49771014 0.80240166 -0.34155121 0.49669692 0.79789406 -0.12621643
		 0.56168783 0.8176651 -0.31309777 0.41739789 0.85308194 -0.59532833 0.71663904 0.36333546
		 -0.5255959 0.78660709 0.32403439 -0.61367744 0.56317931 0.55337965 -0.37801212 0.2367076
		 0.89502871 -0.61050266 -0.077600345 0.78820348 -0.92680442 0.09160044 0.36420172
		 -0.92372084 -0.33210748 0.1909043 -0.92680442 0.09160044 0.36420172 -0.61050266 -0.077600345
		 0.78820348 -0.69428146 -0.63168311 0.3448908 -0.79661107 -0.48230672 0.36440507 -0.82699931
		 -0.56079954 0.039699964 -0.69428146 -0.63168311 0.3448908 -0.50511533 -0.692321 0.51531559
		 -0.69428146 -0.63168311 0.3448908 -0.82699931 -0.56079954 0.039699964 -0.94029236
		 -0.33979726 -0.01969984 -0.92372084 -0.33210748 0.1909043 -0.50511533 -0.692321 0.51531559
		 -0.52379495 -0.16909836 0.83489197 -0.69480711 -0.19050196 0.69350708 -0.79661107
		 -0.48230672 0.36440507 -0.63370931 -0.43080634 0.64250946 -0.70289284 0.16749831
		 0.69129294 -0.81897289 0.14999504 0.55388165 -0.62519383 -0.095599063 0.77459246
		 -0.69480711 -0.19050196 0.69350708 -0.52379495 -0.16909836 0.83489197 -0.41950935
		 -0.086501926 0.90362012 -0.68041742 -0.16710427 0.71351826 -0.68041742 -0.16710427
		 0.71351826 -0.86969584 -0.23839886 0.43219796 -0.79661107 -0.48230672 0.36440507
		 -0.69480711 -0.19050196 0.69350708 -0.79661107 -0.48230672 0.36440507 -0.86969584
		 -0.23839886 0.43219796 -0.95567787 -0.22649476 0.18809564 -0.82699931 -0.56079954
		 0.039699964 -0.95567787 -0.22649476 0.18809564 -0.9706189 -0.22480439 0.085801668
		 -0.94029236 -0.33979726 -0.01969984 -0.82699931 -0.56079954 0.039699964 -0.96160334
		 -0.073200256 -0.26450092 -0.92372084 -0.33210748 0.1909043 -0.94029236 -0.33979726
		 -0.01969984 -0.88693815 -0.28861243 -0.36061552 -0.81372577 -0.45641446 -0.35991138
		 -0.88693815 -0.28861243 -0.36061552 -0.94029236 -0.33979726 -0.01969984 -0.9706189
		 -0.22480439 0.085801668 -0.92372084 -0.33210748 0.1909043 -0.96160334 -0.073200256
		 -0.26450092 -0.94858944 0.2599971 -0.180498 -0.92680442 0.09160044 0.36420172 -0.12950642
		 0.57932872 0.80473989 -3.5486369e-31 0.54550493 0.83810759 -3.7396443e-32 0.18259773
		 0.98318774 -0.37801212 0.2367076 0.89502871 -0.28478661 0.69626731 0.65886903 -0.12950642
		 0.57932872 0.80473989 -0.37801212 0.2367076 0.89502871 -0.61367744 0.56317931 0.55337965
		 -0.63388038 0.76387638 -0.12119626 -0.61367744 0.56317931 0.55337965 -0.92680442
		 0.09160044 0.36420172 -0.94858944 0.2599971 -0.180498 -0.39069459 0.91948724 0.043599397
		 -0.32280096 0.78950232 0.52200156 -0.61367744 0.56317931 0.55337965 -0.63388038 0.76387638
		 -0.12119626 -0.32280096 0.78950232 0.52200156 -0.39069459 0.91948724 0.043599397
		 -0.25900957 0.96559215 0.02336365 -0.17457585 0.88122833 0.43927205 -0.25900957 0.96559215
		 0.02336365 -0.39069459 0.91948724 0.043599397 -0.31968322 0.75878137 -0.56749755
		 -0.25892162 0.7735014 -0.57849383 -0.30651689 0.6277346 -0.71553946 -0.31968322 0.75878137
		 -0.56749755 -0.39069459 0.91948724 0.043599397 -0.63388038 0.76387638 -0.12119626
		 -0.59520602 0.33370337 -0.7310074 -0.30651689 0.6277346 -0.71553946 -0.63388038 0.76387638
		 -0.12119626 -0.94858944 0.2599971 -0.180498 -0.69828618 0.11459773 -0.706586 -0.59520602
		 0.33370337 -0.7310074 -0.94858944 0.2599971 -0.180498 -0.96160334 -0.073200256 -0.26450092
		 -0.6630832 -0.24739374 -0.70648211 -0.69828618 0.11459773 -0.706586 -0.96160334 -0.073200256
		 -0.26450092 -0.88693815 -0.28861243 -0.36061552 -0.30651689 0.6277346 -0.71553946
		 -0.13460508 0.47001773 -0.87233299 -0.26921371 0.44061965 -0.8563751 -0.31968322
		 0.75878137 -0.56749755 -0.31370062 0.01510003 0.94940186 -0.58782315 0.13815756 0.79710501
		 -0.14218645 -0.047287975 0.98870969 -0.23294565 -0.13512047 0.96305698 -0.14218645
		 -0.047287975 0.98870969;
	setAttr ".n[332:497]" -type "float3"  0.0407135 0.074792832 0.99636763 0.60496116
		 -0.14737955 0.78249681 0.085171774 -0.40457296 0.91053087 -0.55449206 0.24551553
		 0.79514819 0.0407135 0.074792832 0.99636763 -0.14218645 -0.047287975 0.98870969 -0.58782315
		 0.13815756 0.79710501 -0.92968494 0.26920214 0.25142828 -0.55449206 0.24551553 0.79514819
		 -0.58782315 0.13815756 0.79710501 -0.92984575 0.207353 0.30395985 0.69446731 -0.53052151
		 0.48606795 0.019237887 -0.86680061 0.49828371 0.007798987 -0.69768286 0.71636432
		 0.085171774 -0.40457296 0.91053087 0.95245165 -0.14349315 0.26878542 0.69446731 -0.53052151
		 0.48606795 0.085171774 -0.40457296 0.91053087 0.60496116 -0.14737955 0.78249681 -0.96278977
		 0.19492759 -0.18718728 -0.92968494 0.26920214 0.25142828 -0.92984575 0.207353 0.30395985
		 -0.96275431 0.21120836 -0.16880499 -0.60454983 0.053098053 -0.79479563 -0.9109897
		 0.13055919 -0.39121875 -0.86692625 0.26612204 -0.42144737 -0.57510769 0.27306306
		 -0.77115995 -0.12329188 0.25001767 -0.96035945 -0.10499063 -0.03599219 -0.99382168
		 -0.60454983 0.053098053 -0.79479563 -0.57510769 0.27306306 -0.77115995 -0.57510769
		 0.27306306 -0.77115995 -0.86692625 0.26612204 -0.42144737 -0.76117927 0.3259843 -0.56066066
		 -0.56944501 0.3883467 -0.72451311 -0.12329188 0.25001767 -0.96035945 -0.57510769
		 0.27306306 -0.77115995 -0.56944501 0.3883467 -0.72451311 -0.13149731 0.39509192 -0.90918142
		 -0.34155121 0.49669692 0.79789406 0.13816568 -0.034166675 0.98981965 -0.11591226
		 -0.13383104 0.98420203 -0.40294564 0.39638895 0.82493067 -0.44095433 -0.79927808
		 0.40830609 -0.48408279 -0.24684057 0.8394841 -0.11591226 -0.13383104 0.98420203 0.26110694
		 -0.78453553 0.56242973 0.12753503 -0.041951705 0.99094647 0.55178046 -0.60593754
		 0.57304281 0.55821168 -0.60529476 0.56746632 0.13816568 -0.034166675 0.98981965 -0.28478661
		 0.69626731 0.65886903 -0.61367744 0.56317931 0.55337965 -0.32280096 0.78950232 0.52200156
		 -0.83213192 -0.53922075 -0.12960498 -0.81372577 -0.45641446 -0.35991138 -0.9706189
		 -0.22480439 0.085801668 -0.88447392 -0.20429397 0.41948763 -0.85721189 -0.042500589
		 0.51320708 -0.87471819 -0.0046000956 -0.48461008 -0.83213192 -0.53922075 -0.12960498
		 -0.88447392 -0.20429397 0.41948763 -0.82705599 0.55367053 -0.097094826 -0.87471819
		 -0.0046000956 -0.48461008 -0.85721189 -0.042500589 0.51320708 -0.83080506 0.32250196
		 0.45360276 -0.9706189 -0.22480439 0.085801668 -0.93969619 -0.014599941 0.34169859
		 -0.85721189 -0.042500589 0.51320708 -0.88447392 -0.20429397 0.41948763 -0.85721189
		 -0.042500589 0.51320708 -0.93969619 -0.014599941 0.34169859 -0.93996543 0.10289621
		 0.32538801 -0.83080506 0.32250196 0.45360276 -0.83080506 0.32250196 0.45360276 -0.93996543
		 0.10289621 0.32538801 -0.94739574 0.28849873 -0.13859938 -0.82705599 0.55367053 -0.097094826
		 -0.82705599 0.55367053 -0.097094826 -0.94739574 0.28849873 -0.13859938 -0.81915694
		 -0.060496822 -0.57037008 -0.87471819 -0.0046000956 -0.48461008 -0.87471819 -0.0046000956
		 -0.48461008 -0.81915694 -0.060496822 -0.57037008 -0.81372577 -0.45641446 -0.35991138
		 -0.83213192 -0.53922075 -0.12960498 -0.51749533 -0.47069579 -0.71459365 -0.6630832
		 -0.24739374 -0.70648211 -0.88693815 -0.28861243 -0.36061552 -0.78521705 -0.42860931
		 -0.4469097 -0.53450382 -0.13750099 -0.83390594 4.5202201e-31 -0.052700549 -0.99861038
		 4.2811363e-31 -0.38699275 -0.92208278 -0.51749533 -0.47069579 -0.71459365 -0.54071325
		 0.37070909 -0.75511849 3.9927904e-31 0.4059065 -0.91391462 4.5202201e-31 -0.052700549
		 -0.99861038 -0.53450382 -0.13750099 -0.83390594 2.060553e-31 0.85591829 -0.51711106
		 3.9927904e-31 0.4059065 -0.91391462 -0.54071325 0.37070909 -0.75511849 -0.58272141
		 0.71192616 -0.3919144 -0.88693815 -0.28861243 -0.36061552 -0.81372577 -0.45641446
		 -0.35991138 -0.78521705 -0.42860931 -0.4469097 -0.51749533 -0.47069579 -0.71459365
		 -0.78521705 -0.42860931 -0.4469097 -0.89757615 -0.18559507 -0.39988938 -0.53450382
		 -0.13750099 -0.83390594 -0.53450382 -0.13750099 -0.83390594 -0.89757615 -0.18559507
		 -0.39988938 -0.92855394 0.14219294 -0.34288299 -0.54071325 0.37070909 -0.75511849
		 -0.78521705 -0.42860931 -0.4469097 -0.81372577 -0.45641446 -0.35991138 -0.81915694
		 -0.060496822 -0.57037008 -0.89757615 -0.18559507 -0.39988938 -0.89757615 -0.18559507
		 -0.39988938 -0.81915694 -0.060496822 -0.57037008 -0.94739574 0.28849873 -0.13859938
		 -0.92855394 0.14219294 -0.34288299 -0.54071325 0.37070909 -0.75511849 -0.92855394
		 0.14219294 -0.34288299 -0.92937762 0.33719185 -0.15019637 -0.58272141 0.71192616
		 -0.3919144 -0.99335951 0.099595949 0.057597652 -0.92937762 0.33719185 -0.15019637
		 -0.92855394 0.14219294 -0.34288299 -0.94739574 0.28849873 -0.13859938 -0.98377258
		 0.091397449 0.1543957 -0.99335951 0.099595949 0.057597652 -0.94739574 0.28849873
		 -0.13859938 -0.93996543 0.10289621 0.32538801 -0.99335951 0.099595949 0.057597652
		 -0.98377258 0.091397449 0.1543957 -0.91011935 0.3942084 0.12760271 -0.92937762 0.33719185
		 -0.15019637 -0.92937762 0.33719185 -0.15019637 -0.91011935 0.3942084 0.12760271 -0.54620945
		 0.83091444 0.10600184 -0.58272141 0.71192616 -0.3919144 -0.64210814 0.017700225 0.7664097
		 -0.68041742 -0.16710427 0.71351826 -0.41950935 -0.086501926 0.90362012 -0.62519383
		 -0.095599063 0.77459246 -0.62519383 -0.095599063 0.77459246 -0.81897289 0.14999504
		 0.55388165 -0.56071371 0.14270349 0.81561995 -0.64210814 0.017700225 0.7664097 -0.36920992
		 0.14010376 0.91872466 -0.56071371 0.14270349 0.81561995 -0.81897289 0.14999504 0.55388165
		 -0.64570791 0.058900721 0.76130939 -0.81897289 0.14999504 0.55388165 -0.70289284
		 0.16749831 0.69129294 -0.59488416 0.070898108 0.80067867 -0.64570791 0.058900721
		 0.76130939 -0.70289284 0.16749831 0.69129294 -4.4127292e-31 0.28540233 0.95840782
		 -4.4662282e-31 0.22399764 0.97458971 -0.59488416 0.070898108 0.80067867 -0.5739851
		 0.030999195 0.81827879 -0.56071371 0.14270349 0.81561995 -0.36920992 0.14010376 0.91872466
		 -0.44701099 0.01380034 0.89442199 -0.81577802 -0.10039729 0.56958461;
	setAttr ".n[498:663]" -type "float3"  -0.98034352 -0.085503802 0.1778079 -0.95567787
		 -0.22649476 0.18809564 -0.86969584 -0.23839886 0.43219796 -0.86969584 -0.23839886
		 0.43219796 -0.68041742 -0.16710427 0.71351826 -0.64210814 0.017700225 0.7664097 -0.81577802
		 -0.10039729 0.56958461 -0.81577802 -0.10039729 0.56958461 -0.64210814 0.017700225
		 0.7664097 -0.56071371 0.14270349 0.81561995 -0.5739851 0.030999195 0.81827879 -0.81577802
		 -0.10039729 0.56958461 -0.5739851 0.030999195 0.81827879 -0.88389426 -0.021399861
		 0.46719697 -0.98034352 -0.085503802 0.1778079 -0.88389426 -0.021399861 0.46719697
		 -0.5739851 0.030999195 0.81827879 -0.44701099 0.01380034 0.89442199 -0.55501884 -0.17450592
		 0.81332761 -0.63867712 -0.10789613 0.76187271 -0.89223206 0.071902588 0.44581604
		 -0.88389426 -0.021399861 0.46719697 -0.55501884 -0.17450592 0.81332761 -0.98034352
		 -0.085503802 0.1778079 -0.93969619 -0.014599941 0.34169859 -0.9706189 -0.22480439
		 0.085801668 -0.95567787 -0.22649476 0.18809564 -0.97966188 0.081196845 0.18349287
		 -0.93969619 -0.014599941 0.34169859 -0.98034352 -0.085503802 0.1778079 -0.96529531
		 0.096699528 0.2425988 -0.96529531 0.096699528 0.2425988 -0.98034352 -0.085503802
		 0.1778079 -0.88389426 -0.021399861 0.46719697 -0.89223206 0.071902588 0.44581604
		 -0.97966188 0.081196845 0.18349287 -0.98377258 0.091397449 0.1543957 -0.93996543
		 0.10289621 0.32538801 -0.93969619 -0.014599941 0.34169859 -0.44091353 -0.25880796
		 0.85942638 -0.54671121 0.0828017 0.83321708 -0.89223206 0.071902588 0.44581604 -0.63867712
		 -0.10789613 0.76187271 -0.39069873 -0.30449903 0.86869723 -0.29161295 0.078103475
		 0.95334238 -0.54671121 0.0828017 0.83321708 -0.44091353 -0.25880796 0.85942638 -0.39069873
		 -0.30449903 0.86869723 -0.59488416 0.070898108 0.80067867 -0.26310477 -0.017000308
		 0.96461749 -0.29161295 0.078103475 0.95334238 -0.387209 -0.28780672 0.87592036 -0.39069873
		 -0.30449903 0.86869723 -0.44091353 -0.25880796 0.85942638 -0.34040177 -0.32370168
		 0.88280451 -0.39069873 -0.30449903 0.86869723 -0.387209 -0.28780672 0.87592036 -0.64570791
		 0.058900721 0.76130939 -0.59488416 0.070898108 0.80067867 -0.34040177 -0.32370168
		 0.88280451 -0.44091353 -0.25880796 0.85942638 -0.63867712 -0.10789613 0.76187271
		 -0.55501884 -0.17450592 0.81332761 -0.36920992 0.14010376 0.91872466 -0.387209 -0.28780672
		 0.87592036 -0.34040177 -0.32370168 0.88280451 -0.44701099 0.01380034 0.89442199 -0.98377258
		 0.091397449 0.1543957 -0.97966188 0.081196845 0.18349287 -0.84928823 0.37089485 0.37569478
		 -0.91011935 0.3942084 0.12760271 -0.91011935 0.3942084 0.12760271 -0.84928823 0.37089485
		 0.37569478 -0.44392321 0.65653431 0.60983187 -0.54620945 0.83091444 0.10600184 -0.89223206
		 0.071902588 0.44581604 -0.54671121 0.0828017 0.83321708 -0.71442598 0.24010874 0.65722394
		 -0.96529531 0.096699528 0.2425988 -0.84928823 0.37089485 0.37569478 -0.97966188 0.081196845
		 0.18349287 -0.96529531 0.096699528 0.2425988 -0.71442598 0.24010874 0.65722394 -0.29870921
		 0.36101115 0.88342726 -0.71442598 0.24010874 0.65722394 -0.54671121 0.0828017 0.83321708
		 -0.29161295 0.078103475 0.95334238 -0.71442598 0.24010874 0.65722394 -0.29870921
		 0.36101115 0.88342726 -0.44392321 0.65653431 0.60983187 -0.84928823 0.37089485 0.37569478
		 -0.26310477 -0.017000308 0.96461749 -4.5206198e-31 0.081497833 0.99667352 -4.4647043e-31
		 0.22610091 0.97410387 -0.29161295 0.078103475 0.95334238 -0.29870921 0.36101115 0.88342726
		 -4.2874097e-31 0.38298172 0.92375594 -3.282355e-31 0.73690087 0.67600083 -0.44392321
		 0.65653431 0.60983187 -0.64570791 0.058900721 0.76130939 -0.387209 -0.28780672 0.87592036
		 -0.36920992 0.14010376 0.91872466 -0.44701099 0.01380034 0.89442199 -0.34040177 -0.32370168
		 0.88280451 -0.55501884 -0.17450592 0.81332761 -0.61746722 0.70977229 0.33905387 -0.68457127
		 0.62621522 -0.3731176 -0.69951397 0.63328815 -0.33109871 -0.60166913 0.72329247 0.33888379
		 -0.59925628 0.71727109 0.35554758 -0.32738921 0.4427706 0.83472776 -0.32929656 0.49771014
		 0.80240166 -0.60166913 0.72329247 0.33888379 0.12753503 -0.041951705 0.99094647 0.13816568
		 -0.034166675 0.98981965 -0.34155121 0.49669692 0.79789406 -0.32929656 0.49771014
		 0.80240166 0.060939182 -0.08874689 0.99418831 0.12753503 -0.041951705 0.99094647
		 -0.32929656 0.49771014 0.80240166 -0.32738921 0.4427706 0.83472776 0.12753503 -0.041951705
		 0.99094647 0.060939182 -0.08874689 0.99418831 0.49585685 -0.62284672 0.60513461 0.55178046
		 -0.60593754 0.57304281 -0.32738921 0.4427706 0.83472776 -0.31309777 0.41739789 0.85308194
		 0.029958107 -0.10209316 0.99432361 0.060939182 -0.08874689 0.99418831 0.56872541
		 -0.39922762 0.71914446 0.39747962 -0.60546583 0.68950784 0.029958107 -0.10209316
		 0.99432361 0.2847977 0.079814009 0.95525914 -0.3994036 0.059373926 -0.91485053 -0.36406884
		 0.18191236 -0.91343409 -0.72136879 0.59324557 -0.35733292 -0.72677469 0.58908564
		 -0.35323739 0.22080809 -0.39123678 -0.89340782 -0.36406884 0.18191236 -0.91343409
		 -0.3994036 0.059373926 -0.91485053 0.12638034 -0.48133311 -0.86737907 0.51863486
		 -0.72983956 -0.44536743 0.22080809 -0.39123678 -0.89340782 0.12638034 -0.48133311
		 -0.86737907 0.47810301 -0.75249583 -0.45295426 0.51863486 -0.72983956 -0.44536743
		 0.62537003 -0.76984924 0.12745389 0.68904471 -0.69202161 0.2152289 0.5268997 -0.74955654
		 -0.40067652 -0.66314608 0.042993903 -0.74725419 -0.73114026 0.61045218 -0.30460152
		 -0.66800362 0.65865916 -0.34632254 -0.58364099 0.097870916 -0.80609208 -0.58364099
		 0.097870916 -0.80609208 -0.059926622 -0.53692955 -0.84149593 -0.19366869 -0.5775705
		 -0.79303515 -0.66314608 0.042993903 -0.74725419 -0.059926622 -0.53692955 -0.84149593
		 0.52104437 -0.76307279 -0.38240382 0.4352175 -0.82418507 -0.36235994 -0.19366869
		 -0.5775705 -0.79303515 0.52104437 -0.76307279 -0.38240382 0.71363068 -0.67302579
		 0.19433884 0.70978773 -0.67975223 0.18476541 0.4352175 -0.82418507 -0.36235994 0.73787379
		 -0.24852404 0.6275174;
	setAttr ".n[664:829]" -type "float3"  0.71424484 -0.25048891 0.65353626 0.49249578
		 0.25000304 0.83363444 0.48038939 0.28306112 0.83012193 0.48038939 0.28306112 0.83012193
		 0.49249578 0.25000304 0.83363444 0.026274331 0.70194322 0.71174806 -0.029495526 0.70927632
		 0.70431322 -0.44260645 0.071223065 -0.89388299 -0.3994036 0.059373926 -0.91485053
		 -0.72677469 0.58908564 -0.35323739 -0.69951397 0.63328815 -0.33109871 -0.40494138
		 0.11143681 -0.90752649 -0.44260645 0.071223065 -0.89388299 -0.69951397 0.63328815
		 -0.33109871 -0.68457127 0.62621522 -0.3731176 -0.39523652 0.061476149 -0.91651994
		 -0.40494138 0.11143681 -0.90752649 -0.68457127 0.62621522 -0.3731176 -0.72877419
		 0.54872632 -0.40961882 -0.39523652 0.061476149 -0.91651994 -0.72877419 0.54872632
		 -0.40961882 -0.70439792 0.53678125 -0.46442381 -0.37075049 0.068899617 -0.92617327
		 -0.31047499 0.1207783 -0.94287747 -0.55832207 0.62422949 -0.54645586 -0.32872993
		 0.72517133 -0.60503155 -0.20667364 0.23739164 -0.94917399 -0.26088765 0.40396416
		 -0.87678421 -0.11089709 0.35474825 -0.92836171 -0.13145663 0.7881192 -0.60132134
		 -0.25892162 0.7735014 -0.57849383 -0.26088765 0.40396416 -0.87678421 -0.25892162
		 0.7735014 -0.57849383 -0.31968322 0.75878137 -0.56749755 -0.26921371 0.44061965 -0.8563751
		 0.034598812 -0.06529776 -0.99726582 -0.10501898 -0.013418495 -0.9943797 -0.2198386
		 0.14594504 -0.96455741 -0.05720222 0.15190589 -0.98673832 -0.3994036 0.059373926
		 -0.91485053 -0.44260645 0.071223065 -0.89388299 0.051280037 -0.51674473 -0.8546024
		 0.12638034 -0.48133311 -0.86737907 0.091121458 -0.4866918 -0.86880833 0.051280037
		 -0.51674473 -0.8546024 -0.44260645 0.071223065 -0.89388299 -0.40494138 0.11143681
		 -0.90752649 0.039390717 -0.50129741 -0.86437798 0.091121458 -0.4866918 -0.86880833
		 -0.40494138 0.11143681 -0.90752649 -0.39523652 0.061476149 -0.91651994 -0.39523652
		 0.061476149 -0.91651994 -0.37075049 0.068899617 -0.92617327 -0.1638279 -0.44406921
		 -0.88088757 0.039390717 -0.50129741 -0.86437798 0.12638034 -0.48133311 -0.86737907
		 0.051280037 -0.51674473 -0.8546024 0.43968263 -0.78845447 -0.43013805 0.47810301
		 -0.75249583 -0.45295426 0.45080885 -0.7853595 -0.42424262 0.43968263 -0.78845447
		 -0.43013805 0.051280037 -0.51674473 -0.8546024 0.091121458 -0.4866918 -0.86880833
		 0.31398255 -0.86529255 -0.39074773 0.45080885 -0.7853595 -0.42424262 0.091121458
		 -0.4866918 -0.86880833 0.039390717 -0.50129741 -0.86437798 0.039390717 -0.50129741
		 -0.86437798 -0.1638279 -0.44406921 -0.88088757 -0.25372469 -0.92386836 -0.2865153
		 0.31398255 -0.86529255 -0.39074773 -0.10501898 -0.013418495 -0.9943797 -0.30138397
		 -0.078364633 -0.95027715 -0.29632211 0.1196974 -0.94755775 -0.2198386 0.14594504
		 -0.96455741 -0.27767256 -0.032995611 -0.960109 -0.16306761 0.014305179 -0.98651117
		 -0.40194565 -0.28877673 -0.86893481 -0.26613355 -0.33161101 -0.90510058 -0.30138397
		 -0.078364633 -0.95027715 -0.40194565 -0.28877673 -0.86893481 -0.16306761 0.014305179
		 -0.98651117 -0.29632211 0.1196974 -0.94755775 -0.26613355 -0.33161101 -0.90510058
		 -0.40194565 -0.28877673 -0.86893481 -0.70094442 -0.50371236 -0.5049265 -0.68455672
		 -0.65727168 -0.3152397 -0.39738688 -0.31786063 -0.86084163 -0.70094442 -0.50371236
		 -0.5049265 -0.40194565 -0.28877673 -0.86893481 -0.30138397 -0.078364633 -0.95027715
		 -0.096363172 -0.20175581 -0.97468394 -0.39738688 -0.31786063 -0.86084163 -0.30138397
		 -0.078364633 -0.95027715 -0.10501898 -0.013418495 -0.9943797 0.13899764 -0.16889714
		 -0.97578347 -0.096363172 -0.20175581 -0.97468394 -0.10501898 -0.013418495 -0.9943797
		 0.034598812 -0.06529776 -0.99726582 -0.93349767 -0.35783356 -0.023179172 -0.95668036
		 -0.28245223 -0.070593253 -0.93040913 -0.25791103 0.26042417 -0.86092305 -0.39040622
		 0.32618162 -0.82035559 -0.57184172 0.0037055847 -0.93349767 -0.35783356 -0.023179172
		 -0.86092305 -0.39040622 0.32618162 -0.7273342 -0.61298949 0.30859163 -0.82035559
		 -0.57184172 0.0037055847 -0.7273342 -0.61298949 0.30859163 -0.44095433 -0.79927808
		 0.40830609 -0.28696766 -0.95348018 0.092331544 -0.28696766 -0.95348018 0.092331544
		 -0.25372469 -0.92386836 -0.2865153 -0.68455672 -0.65727168 -0.3152397 -0.82035559
		 -0.57184172 0.0037055847 -0.70094442 -0.50371236 -0.5049265 -0.93349767 -0.35783356
		 -0.023179172 -0.82035559 -0.57184172 0.0037055847 -0.68455672 -0.65727168 -0.3152397
		 -0.82483321 -0.37591037 -0.42230511 -0.95668036 -0.28245223 -0.070593253 -0.93349767
		 -0.35783356 -0.023179172 -0.70094442 -0.50371236 -0.5049265 0.13899764 -0.16889714
		 -0.97578347 0.11929494 -0.31798652 -0.9405601 -0.11000601 -0.35200959 -0.92950952
		 -0.096363172 -0.20175581 -0.97468394 -0.096363172 -0.20175581 -0.97468394 -0.11000601
		 -0.35200959 -0.92950952 -0.53632134 -0.3636286 -0.76166505 -0.39738688 -0.31786063
		 -0.86084163 -0.39738688 -0.31786063 -0.86084163 -0.53632134 -0.3636286 -0.76166505
		 -0.82483321 -0.37591037 -0.42230511 -0.70094442 -0.50371236 -0.5049265 -0.55418038
		 -0.37828663 -0.74147379 -0.84677213 -0.28339067 -0.45018515 -0.82483321 -0.37591037
		 -0.42230511 -0.53632134 -0.3636286 -0.76166505 -0.16530159 -0.38590372 -0.90760881
		 -0.55418038 -0.37828663 -0.74147379 -0.53632134 -0.3636286 -0.76166505 -0.11000601
		 -0.35200959 -0.92950952 0.086300254 -0.34910104 -0.93310273 -0.16530159 -0.38590372
		 -0.90760881 -0.11000601 -0.35200959 -0.92950952 0.11929494 -0.31798652 -0.9405601
		 3.1003468e-31 -0.33369347 -0.94268161 0.086300254 -0.34910104 -0.93310273 0.11929494
		 -0.31798652 -0.9405601 3.6981976e-31 -0.32129315 -0.94697976 -0.54597092 0.24928674
		 -0.79985738 -0.87893564 0.16410667 -0.44781819 -0.86189228 -0.040199641 -0.50549549
		 -0.56699169 -0.088198714 -0.81898803 -0.54597092 0.24928674 -0.79985738 -0.56699169
		 -0.088198714 -0.81898803 -0.18629929 -0.11279958 -0.97599632 -0.14249533 0.26389137
		 -0.95396876 0 -0.21109267 -0.97746605 0.25826362 -0.11724153 -0.95893395 0.15696955
		 0.19514953 -0.96813077 2.98659e-32 0.18510358 -0.982719 2.98659e-32 0.18510358 -0.982719
		 0.15696955 0.19514953 -0.96813077 0.071498141 0.35879064 -0.93067575;
	setAttr ".n[830:995]" -type "float3"  0 0.31718758 -0.94836283 -0.14249533
		 0.26389137 -0.95396876 -0.18629929 -0.11279958 -0.97599632 0.0022999856 -0.094799407
		 -0.99549371 -0.007000078 0.23400259 -0.97221076 0.0049243467 -0.38056526 -0.92474097
		 -0.10499063 -0.03599219 -0.99382168 0.25826362 -0.11724153 -0.95893395 0.48608923
		 -0.5257569 -0.69806659 -0.56766808 -0.25750092 -0.78195029 -0.60454983 0.053098053
		 -0.79479563 -0.10499063 -0.03599219 -0.99382168 0.0049243467 -0.38056526 -0.92474097
		 -0.96278977 0.19492759 -0.18718728 -0.9109897 0.13055919 -0.39121875 -0.86442709
		 -0.029816136 -0.50187325 -0.92101997 0.15049435 -0.35926831 -0.94847041 0.25299457
		 0.1907815 -0.92968494 0.26920214 0.25142828 -0.96278977 0.19492759 -0.18718728 -0.92101997
		 0.15049435 -0.35926831 -0.43989646 -0.10449171 -0.89194876 -0.42725825 -0.028740585
		 -0.9036727 0.48205665 -0.28072122 -0.82994998 0.43139863 -0.34755164 -0.83252811
		 -0.39430624 -0.17870548 -0.90143603 -0.43989646 -0.10449171 -0.89194876 0.43139863
		 -0.34755164 -0.83252811 0.42749679 -0.39404696 -0.81361753 -0.92101997 0.15049435
		 -0.35926831 -0.88915282 0.13031444 -0.43866324 -0.96576643 0.16949219 0.19638631
		 -0.94847041 0.25299457 0.1907815 -0.90952533 0.0038698101 -0.41563049 -0.97870785
		 0.025174597 0.20370851 -0.96576643 0.16949219 0.19638631 -0.88915282 0.13031444 -0.43866324
		 -0.92437309 -0.010309878 -0.3813504 -0.96455735 -0.0099099679 0.26368719 -0.97870785
		 0.025174597 0.20370851 -0.90952533 0.0038698101 -0.41563049 -0.92968494 0.26920214
		 0.25142828 -0.94847041 0.25299457 0.1907815 -0.59669632 0.22689508 0.7697221 -0.55449206
		 0.24551553 0.79514819 -0.62613583 0.14661756 0.76580495 -0.59669632 0.22689508 0.7697221
		 -0.94847041 0.25299457 0.1907815 -0.96576643 0.16949219 0.19638631 -0.6578989 -0.036794383
		 0.75220692 -0.62613583 0.14661756 0.76580495 -0.96576643 0.16949219 0.19638631 -0.97870785
		 0.025174597 0.20370851 -0.6578989 -0.036794383 0.75220692 -0.97870785 0.025174597
		 0.20370851 -0.96455735 -0.0099099679 0.26368719 -0.62052161 -0.085452124 0.77951962
		 -0.55449206 0.24551553 0.79514819 -0.59669632 0.22689508 0.7697221 0.051981173 0.098159924
		 0.99381214 0.0407135 0.074792832 0.99636763 0.084556095 0.03471081 0.99581397 0.051981173
		 0.098159924 0.99381214 -0.59669632 0.22689508 0.7697221 -0.62613583 0.14661756 0.76580495
		 0.084556095 0.03471081 0.99581397 -0.62613583 0.14661756 0.76580495 -0.6578989 -0.036794383
		 0.75220692 0.056319334 -0.14035009 0.98849887 0.056319334 -0.14035009 0.98849887
		 -0.6578989 -0.036794383 0.75220692 -0.62052161 -0.085452124 0.77951962 0.022699561
		 -0.23753205 0.97111446 -0.18629929 -0.11279958 -0.97599632 -0.16530159 -0.38590372
		 -0.90760881 0.086300254 -0.34910104 -0.93310273 0.0022999856 -0.094799407 -0.99549371
		 -0.18629929 -0.11279958 -0.97599632 -0.56699169 -0.088198714 -0.81898803 -0.55418038
		 -0.37828663 -0.74147379 -0.16530159 -0.38590372 -0.90760881 -0.56699169 -0.088198714
		 -0.81898803 -0.86189228 -0.040199641 -0.50549549 -0.84677213 -0.28339067 -0.45018515
		 -0.55418038 -0.37828663 -0.74147379 -0.60454983 0.053098053 -0.79479563 -0.56766808
		 -0.25750092 -0.78195029 -0.86442709 -0.029816136 -0.50187325 -0.9109897 0.13055919
		 -0.39121875 -0.42725825 -0.028740585 -0.9036727 -0.43989646 -0.10449171 -0.89194876
		 -0.90952533 0.0038698101 -0.41563049 -0.88915282 0.13031444 -0.43866324 -0.90952533
		 0.0038698101 -0.41563049 -0.43989646 -0.10449171 -0.89194876 -0.39430624 -0.17870548
		 -0.90143603 -0.92437309 -0.010309878 -0.3813504 -0.38111696 -0.32429761 0.86578339
		 0.085171774 -0.40457296 0.91053087 0.007798987 -0.69768286 0.71636432 -0.007349073
		 -0.36785305 0.92985493 -0.23294565 -0.13512047 0.96305698 -0.14218645 -0.047287975
		 0.98870969 0.085171774 -0.40457296 0.91053087 -0.38111696 -0.32429761 0.86578339
		 0.0407135 0.074792832 0.99636763 0.051981173 0.098159924 0.99381214 0.65803087 -0.06659621
		 0.75004017 0.60496116 -0.14737955 0.78249681 0.65803087 -0.06659621 0.75004017 0.94103158
		 -0.12901276 0.31275427 0.95245165 -0.14349315 0.26878542 0.60496116 -0.14737955 0.78249681
		 0.051981173 0.098159924 0.99381214 0.084556095 0.03471081 0.99581397 0.70901787 -0.10949208
		 0.69663846 0.65803087 -0.06659621 0.75004017 0.65803087 -0.06659621 0.75004017 0.70901787
		 -0.10949208 0.69663846 0.93383557 -0.21320759 0.28721711 0.94103158 -0.12901276 0.31275427
		 0.72083575 -0.22018363 0.65720242 0.70901787 -0.10949208 0.69663846 0.084556095 0.03471081
		 0.99581397 0.056319334 -0.14035009 0.98849887 0.70901787 -0.10949208 0.69663846 0.72083575
		 -0.22018363 0.65720242 0.93442267 -0.28159222 0.21808267 0.93383557 -0.21320759 0.28721711
		 0.71270913 -0.32745177 0.62033945 0.72083575 -0.22018363 0.65720242 0.056319334 -0.14035009
		 0.98849887 0.022699561 -0.23753205 0.97111446 0.72083575 -0.22018363 0.65720242 0.71270913
		 -0.32745177 0.62033945 0.9423213 -0.31865546 0.10241686 0.93442267 -0.28159222 0.21808267
		 0.97907323 -0.10977599 -0.17136165 0.90162665 -0.41451889 -0.12346425 0.69446731
		 -0.53052151 0.48606795 0.95245165 -0.14349315 0.26878542 0.97636604 -0.12488068 -0.17639212
		 0.97907323 -0.10977599 -0.17136165 0.95245165 -0.14349315 0.26878542 0.94103158 -0.12901276
		 0.31275427 0.94776475 -0.27201936 -0.1665758 0.97636604 -0.12488068 -0.17639212 0.94103158
		 -0.12901276 0.31275427 0.93383557 -0.21320759 0.28721711 0.90493602 -0.3658255 -0.2173993
		 0.94776475 -0.27201936 -0.1665758 0.93383557 -0.21320759 0.28721711 0.93442267 -0.28159222
		 0.21808267 0.86823189 -0.36500818 -0.33606908 0.90493602 -0.3658255 -0.2173993 0.93442267
		 -0.28159222 0.21808267 0.9423213 -0.31865546 0.10241686 0.90162665 -0.41451889 -0.12346425
		 0.97907323 -0.10977599 -0.17136165 0.73050386 -0.2376918 -0.64020836 0.48608923 -0.5257569
		 -0.69806659 0.94776475 -0.27201936 -0.1665758 0.90493602 -0.3658255 -0.2173993 0.43139863
		 -0.34755164 -0.83252811 0.48205665 -0.28072122 -0.82994998 0.90493602 -0.3658255
		 -0.2173993;
	setAttr ".n[996:1161]" -type "float3"  0.86823189 -0.36500818 -0.33606908 0.42749679
		 -0.39404696 -0.81361753 0.43139863 -0.34755164 -0.83252811 -0.58178639 -0.11843351
		 -0.80467266 -0.56766808 -0.25750092 -0.78195029 0.0049243467 -0.38056526 -0.92474097
		 0.0041576712 -0.23725152 -0.97143936 0.73050386 -0.2376918 -0.64020836 0.0041576712
		 -0.23725152 -0.97143936 0.0049243467 -0.38056526 -0.92474097 0.48608923 -0.5257569
		 -0.69806659 -0.56766808 -0.25750092 -0.78195029 -0.58178639 -0.11843351 -0.80467266
		 -0.92101997 0.15049435 -0.35926831 -0.86442709 -0.029816136 -0.50187325 0.0041576712
		 -0.23725152 -0.97143936 -0.026562672 -0.038383067 -0.99891001 -0.42725825 -0.028740585
		 -0.9036727 -0.58178639 -0.11843351 -0.80467266 -0.58178639 -0.11843351 -0.80467266
		 -0.42725825 -0.028740585 -0.9036727 -0.88915282 0.13031444 -0.43866324 -0.92101997
		 0.15049435 -0.35926831 0.25826362 -0.11724153 -0.95893395 -0.10499063 -0.03599219
		 -0.99382168 -0.12329188 0.25001767 -0.96035945 0.15696955 0.19514953 -0.96813077
		 0.15696955 0.19514953 -0.96813077 -0.12329188 0.25001767 -0.96035945 -0.13149731
		 0.39509192 -0.90918142 0.071498141 0.35879064 -0.93067575 0.66385829 -0.10508696
		 -0.74043828 0.73050386 -0.2376918 -0.64020836 0.97907323 -0.10977599 -0.17136165
		 0.97636604 -0.12488068 -0.17639212 0.66385829 -0.10508696 -0.74043828 -0.026562672
		 -0.038383067 -0.99891001 0.0041576712 -0.23725152 -0.97143936 0.73050386 -0.2376918
		 -0.64020836 0.66385829 -0.10508696 -0.74043828 0.97636604 -0.12488068 -0.17639212
		 0.94776475 -0.27201936 -0.1665758 0.48205665 -0.28072122 -0.82994998 0.18571277 -0.29102764
		 0.93851674 0.022699561 -0.23753205 0.97111446 -0.62052161 -0.085452124 0.77951962
		 -0.5527041 -0.026965298 0.83294117 -0.56431538 -0.085835226 0.82108492 0.3462781
		 -0.37178048 0.86131918 0.29982322 -0.32588488 0.89660752 -0.5709337 -0.029624287
		 0.82046151 -0.60047066 -0.23568346 0.76412582 0.31540078 -0.48824739 0.8137179 0.32633033
		 -0.48081717 0.81383252 -0.5949167 -0.19772345 0.77908891 -0.54014409 -0.22721213
		 0.81032032 0.30845577 -0.36788291 0.87722129 0.3396621 -0.41684508 0.84313101 -0.57493573
		 -0.22132933 0.78769422 0.26720563 -0.38109946 0.88507873 0.30845577 -0.36788291 0.87722129
		 -0.54014409 -0.22721213 0.81032032 -0.53147876 -0.28083152 0.79916453 -0.59477949
		 -0.26175749 0.76007915 0.22291064 -0.37908113 0.89811379 0.24026057 -0.41030449 0.87973011
		 -0.55936986 -0.31215551 0.76789606 -0.62355536 0.059094857 0.77954251 0.37027872
		 -0.088158868 0.92472792 0.27832159 -0.27618712 0.91992271 -0.61165935 -0.12066827
		 0.7818644 0.57398272 0.39125851 0.71934736 0.37027872 -0.088158868 0.92472792 -0.62355536
		 0.059094857 0.77954251 -0.66766101 0.53948265 0.51301777 -0.95392299 0.070522994
		 0.291646 -0.5527041 -0.026965298 0.83294117 -0.62052161 -0.085452124 0.77951962 -0.96455735
		 -0.0099099679 0.26368719 -0.96412778 0.1487034 0.21987478 -0.56431538 -0.085835226
		 0.82108492 -0.5709337 -0.029624287 0.82046151 -0.96498388 0.10283791 0.24130988 -0.96498388
		 0.10283791 0.24130988 -0.90644121 0.078830749 -0.41490969 -0.87435818 0.25727826
		 -0.41146776 -0.96412778 0.1487034 0.21987478 0.022699561 -0.23753205 0.97111446 0.18571277
		 -0.29102764 0.93851674 0.68889391 -0.4698334 0.55197984 0.71270913 -0.32745177 0.62033945
		 0.18571277 -0.29102764 0.93851674 0.29982322 -0.32588488 0.89660752 0.69681114 -0.53718913
		 0.47527054 0.68889391 -0.4698334 0.55197984 0.71270913 -0.32745177 0.62033945 0.68889391
		 -0.4698334 0.55197984 0.91921026 -0.38822007 0.065861195 0.9423213 -0.31865546 0.10241686
		 0.3462781 -0.37178048 0.86131918 0.32633033 -0.48081717 0.81383252 0.78724629 -0.42164713
		 0.44995216 0.76565176 -0.45055738 0.45910287 0.68889391 -0.4698334 0.55197984 0.69681114
		 -0.53718913 0.47527054 0.90686637 -0.41576007 0.068825223 0.91921026 -0.38822007
		 0.065861195 0.93260807 -0.34399024 0.1091463 0.76565176 -0.45055738 0.45910287 0.78724629
		 -0.42164713 0.44995216 0.94759876 -0.30575076 0.092590973 -0.60047066 -0.23568346
		 0.76412582 -0.5949167 -0.19772345 0.77908891 -0.97405678 0.13348249 0.18274507 -0.96734607
		 0.15644096 0.19941875 -0.96734607 0.15644096 0.19941875 -0.97405678 0.13348249 0.18274507
		 -0.84468126 0.351475 -0.40370649 -0.83358616 0.41434222 -0.36531448 0.9423213 -0.31865546
		 0.10241686 0.91921026 -0.38822007 0.065861195 0.83930421 -0.3176856 -0.44118512 0.86823189
		 -0.36500818 -0.33606908 0.83930421 -0.3176856 -0.44118512 0.91921026 -0.38822007
		 0.065861195 0.90686637 -0.41576007 0.068825223 0.82299757 -0.30218834 -0.48099601
		 0.84792596 -0.17223759 -0.50135398 0.93260807 -0.34399024 0.1091463 0.94759876 -0.30575076
		 0.092590973 0.8608461 -0.07246317 -0.50367951 0.86823189 -0.36500818 -0.33606908
		 0.83930421 -0.3176856 -0.44118512 0.39590877 -0.26858193 -0.87813437 0.42749679 -0.39404696
		 -0.81361753 0.39590877 -0.26858193 -0.87813437 0.83930421 -0.3176856 -0.44118512
		 0.82299757 -0.30218834 -0.48099601 0.36481735 -0.16695185 -0.91598874 0.3932611 0.061313409
		 -0.91738015 0.84792596 -0.17223759 -0.50135398 0.8608461 -0.07246317 -0.50367951
		 0.4227908 0.22028978 -0.87904513 0.42749679 -0.39404696 -0.81361753 0.39590877 -0.26858193
		 -0.87813437 -0.37169552 -0.10461728 -0.92244112 -0.39430624 -0.17870548 -0.90143603
		 -0.37169552 -0.10461728 -0.92244112 -0.9205389 0.060591687 -0.38592324 -0.92437309
		 -0.010309878 -0.3813504 -0.39430624 -0.17870548 -0.90143603 -0.37169552 -0.10461728
		 -0.92244112 0.39590877 -0.26858193 -0.87813437 0.36481735 -0.16695185 -0.91598874
		 -0.3578946 -0.032407094 -0.93319947 -0.37169552 -0.10461728 -0.92244112 -0.3578946
		 -0.032407094 -0.93319947 -0.90644121 0.078830749 -0.41490969 -0.9205389 0.060591687
		 -0.38592324 -0.3280381 0.22554117 -0.91734517 0.3932611 0.061313409 -0.91738015 0.4227908
		 0.22028978 -0.87904513 -0.29653949 0.384956 -0.8739984 -0.3280381 0.22554117 -0.91734517
		 -0.29653949 0.384956 -0.8739984 -0.84468126 0.351475 -0.40370649;
	setAttr ".n[1162:1327]" -type "float3"  -0.87435818 0.25727826 -0.41146776 -0.026562672
		 -0.038383067 -0.99891001 0.66385829 -0.10508696 -0.74043828 0.48205665 -0.28072122
		 -0.82994998 -0.42725825 -0.028740585 -0.9036727 -0.9205389 0.060591687 -0.38592324
		 -0.95392299 0.070522994 0.291646 -0.96455735 -0.0099099679 0.26368719 -0.92437309
		 -0.010309878 -0.3813504 -0.54014409 -0.22721213 0.81032032 -0.57493573 -0.22132933
		 0.78769422 -0.95159292 0.19342515 0.23886736 -0.96238643 0.114762 0.24625601 -0.96238643
		 0.114762 0.24625601 -0.95159292 0.19342515 0.23886736 -0.81177026 0.45544517 -0.36551166
		 -0.84964645 0.35282597 -0.39193714 -0.84964645 0.35282597 -0.39193714 -0.81177026
		 0.45544517 -0.36551166 -0.27292261 0.55083627 -0.78872848 -0.32711464 0.46056727
		 -0.82515079 -0.54014409 -0.22721213 0.81032032 -0.96238643 0.114762 0.24625601 -0.97378248
		 -0.020841137 0.22652458 -0.53147876 -0.28083152 0.79916453 -0.88381851 0.20229083
		 -0.42183325 -0.97378248 -0.020841137 0.22652458 -0.96238643 0.114762 0.24625601 -0.84964645
		 0.35282597 -0.39193714 -0.35712254 0.31620738 -0.87890637 -0.88381851 0.20229083
		 -0.42183325 -0.84964645 0.35282597 -0.39193714 -0.32711464 0.46056727 -0.82515079
		 -0.32711464 0.46056727 -0.82515079 -0.27292261 0.55083627 -0.78872848 0.39817408
		 0.45184442 -0.79830694 0.36541149 0.36447895 -0.85652179 -0.32711464 0.46056727 -0.82515079
		 0.36541149 0.36447895 -0.85652179 0.32415485 0.23983458 -0.9150973 -0.35712254 0.31620738
		 -0.87890637 0.78834164 -0.38052818 0.48344153 0.31540078 -0.48824739 0.8137179 0.3396621
		 -0.41684508 0.84313101 0.77491081 -0.28009462 0.56662178 0.97734499 -0.082926005
		 0.19473059 0.77491081 -0.28009462 0.56662178 0.75445467 -0.27875489 0.59421706 0.96892941
		 -0.15855703 0.18983024 0.77106577 -0.32045752 0.5502404 0.75445467 -0.27875489 0.59421706
		 0.30845577 -0.36788291 0.87722129 0.26720563 -0.38109946 0.88507873 0.75445467 -0.27875489
		 0.59421706 0.77106577 -0.32045752 0.5502404 0.96109098 -0.25010389 0.11726962 0.96892941
		 -0.15855703 0.18983024 0.83915627 -0.3324627 0.43044782 0.79120588 -0.36170584 0.49311477
		 0.24026057 -0.41030449 0.87973011 0.22291064 -0.37908113 0.89811379 0.79120588 -0.36170584
		 0.49311477 0.83915627 -0.3324627 0.43044782 0.9614231 -0.26209345 -0.083502583 0.95128441
		 -0.30771556 0.019212808 0.83915627 -0.3324627 0.43044782 0.22291064 -0.37908113 0.89811379
		 0.27832159 -0.27618712 0.91992271 0.88252479 -0.26240259 0.3902497 0.97424936 -0.195852
		 -0.1117147 0.88252479 -0.26240259 0.3902497 0.93804783 -0.11968083 0.32518116 0.99363589
		 -0.04626593 -0.10269929 0.89671952 0.21814051 -0.38510877 0.97734499 -0.082926005
		 0.19473059 0.96892941 -0.15855703 0.18983024 0.8979286 0.12159485 -0.42301181 0.89671952
		 0.21814051 -0.38510877 0.39817408 0.45184442 -0.79830694 0.43209514 0.3750689 -0.82013237
		 0.89358443 0.096398942 -0.43842226 0.96109098 -0.25010389 0.11726962 0.85796392 0.00081280567
		 -0.51370925 0.8979286 0.12159485 -0.42301181 0.96892941 -0.15855703 0.18983024 0.8979286
		 0.12159485 -0.42301181 0.85796392 0.00081280567 -0.51370925 0.32415485 0.23983458
		 -0.9150973 0.36541149 0.36447895 -0.85652179 0.80026996 -0.13889292 -0.58333242 0.81992054
		 -0.1302529 -0.55746257 0.95128441 -0.30771556 0.019212808 0.9614231 -0.26209345 -0.083502583
		 0.29243246 0.035169277 -0.95563924 0.29669958 0.095955841 -0.95013779 0.81992054
		 -0.1302529 -0.55746257 0.80026996 -0.13889292 -0.58333242 0.29669958 0.095955841
		 -0.95013779 0.29243246 0.035169277 -0.95563924 -0.40923053 0.12206911 -0.90422869
		 -0.39791468 0.19357759 -0.89676732 -0.39791468 0.19357759 -0.89676732 -0.40923053
		 0.12206911 -0.90422869 -0.9166345 0.046878412 -0.39696798 -0.91017115 0.098829456
		 -0.40227008 -0.91017115 0.098829456 -0.40227008 -0.9166345 0.046878412 -0.39696798
		 -0.97001088 -0.10392281 0.21972461 -0.97057813 -0.10185367 0.21818312 -0.97001088
		 -0.10392281 0.21972461 -0.59477949 -0.26175749 0.76007915 -0.55936986 -0.31215551
		 0.76789606 -0.97057813 -0.10185367 0.21818312 -0.62355536 0.059094857 0.77954251
		 -0.61165935 -0.12066827 0.7818644 -0.9801873 -0.0048305467 0.1980139 -0.98394263
		 0.12123755 0.13098985 -0.9801873 -0.0048305467 0.1980139 -0.93209487 0.0625448 -0.35677347
		 -0.91424829 0.14551926 -0.37811938 -0.98394263 0.12123755 0.13098985 -0.93209487
		 0.0625448 -0.35677347 -0.43226913 0.13908102 -0.89095449 -0.4338921 0.27930635 -0.85657787
		 -0.91424829 0.14551926 -0.37811938 -0.4338921 0.27930635 -0.85657787 -0.43226913
		 0.13908102 -0.89095449 0.35465392 0.079758182 -0.9315896 0.46574268 0.26672739 -0.8437655
		 0.46574268 0.26672739 -0.8437655 0.35465392 0.079758182 -0.9315896 0.85189235 -0.083785012
		 -0.51697147 0.91736758 0.074290559 -0.39104685 0.91736758 0.074290559 -0.39104685
		 0.85189235 -0.083785012 -0.51697147 0.97424936 -0.195852 -0.1117147 0.99363589 -0.04626593
		 -0.10269929 0.90747947 0.06799306 0.41455755 0.93804783 -0.11968083 0.32518116 0.37027872
		 -0.088158868 0.92472792 0.57398272 0.39125851 0.71934736 0.98278552 0.15997444 0.092416301
		 0.99363589 -0.04626593 -0.10269929 0.93804783 -0.11968083 0.32518116 0.90747947 0.06799306
		 0.41455755 0.99363589 -0.04626593 -0.10269929 0.98278552 0.15997444 0.092416301 0.93207967
		 0.29559544 -0.20940579 0.91736758 0.074290559 -0.39104685 0.91736758 0.074290559
		 -0.39104685 0.93207967 0.29559544 -0.20940579 0.50603485 0.41047785 -0.75857538 0.46574268
		 0.26672739 -0.8437655 0.46574268 0.26672739 -0.8437655 0.50603485 0.41047785 -0.75857538
		 -0.3879154 0.3315559 -0.85999554 -0.4338921 0.27930635 -0.85657787 -0.4338921 0.27930635
		 -0.85657787 -0.3879154 0.3315559 -0.85999554 -0.88576186 0.081562623 -0.45691741
		 -0.91424829 0.14551926 -0.37811938 -0.91424829 0.14551926 -0.37811938 -0.88576186
		 0.081562623 -0.45691741 -0.98553598 0.11857747 -0.12107114 -0.98394263 0.12123755
		 0.13098985 -0.98553598 0.11857747 -0.12107114;
	setAttr ".n[1328:1493]" -type "float3"  -0.66766101 0.53948265 0.51301777 -0.62355536
		 0.059094857 0.77954251 -0.98394263 0.12123755 0.13098985 -0.88576186 0.081562623
		 -0.45691741 -0.3879154 0.3315559 -0.85999554 -0.41777101 0.039082959 -0.90771139
		 -0.905312 -0.09471757 -0.41405168 -0.42558256 -0.21210563 -0.87971056 -0.88896036
		 -0.20106742 -0.41148683 -0.905312 -0.09471757 -0.41405168 -0.41777101 0.039082959
		 -0.90771139 -0.41777101 0.039082959 -0.90771139 -0.3879154 0.3315559 -0.85999554
		 0.50603485 0.41047785 -0.75857538 0.5058648 0.13702796 -0.85165966 0.96045655 0.14891817
		 -0.23525849 0.5058648 0.13702796 -0.85165966 0.50603485 0.41047785 -0.75857538 0.93207967
		 0.29559544 -0.20940579 0.9712342 0.072352812 0.2268682 0.96045655 0.14891817 -0.23525849
		 0.93207967 0.29559544 -0.20940579 0.98278552 0.15997444 0.092416301 -0.41777101 0.039082959
		 -0.90771139 0.5058648 0.13702796 -0.85165966 0.52209294 -0.098834127 -0.8471427 -0.42558256
		 -0.21210563 -0.87971056 0.97460449 -0.01561955 -0.22338791 0.52209294 -0.098834127
		 -0.8471427 0.5058648 0.13702796 -0.85165966 0.96045655 0.14891817 -0.23525849 0.95521432
		 -0.044961508 0.29247919 0.97460449 -0.01561955 -0.22338791 0.96045655 0.14891817
		 -0.23525849 0.9712342 0.072352812 0.2268682 0.95080382 0.25175917 0.18052544 0.97751892
		 0.13079089 0.16538006 0.57644552 0.70451689 0.41396433 0.53236699 0.78217679 0.32370484
		 -0.89867032 0.40616813 0.16558705 -0.3094188 0.92032397 0.23929863 -0.48753822 0.86710811
		 0.10212727 -0.93277526 0.30287182 -0.19544548 0.36480856 0.51017195 0.77887052 -0.55417442
		 0.49530336 0.66900325 -0.61842483 -0.005497721 0.78582472 0.42017552 0.028635247
		 0.90699095 0.95091575 -0.026411531 0.30832064 0.9712342 0.072352812 0.2268682 0.98278552
		 0.15997444 0.092416301 0.90747947 0.06799306 0.41455755 0.95091575 -0.026411531 0.30832064
		 0.90747947 0.06799306 0.41455755 0.57398272 0.39125851 0.71934736 0.97751892 0.13079089
		 0.16538006 0.9712342 0.072352812 0.2268682 0.95091575 -0.026411531 0.30832064 0.94730186
		 -0.19320776 0.25551903 0.95521432 -0.044961508 0.29247919 0.95091575 -0.026411531
		 0.30832064 0.97751892 0.13079089 0.16538006 0.9936769 0.01911396 0.11063869 0.94730186
		 -0.19320776 0.25551903 0.36480856 0.51017195 0.77887052 0.42017552 0.028635247 0.90699095
		 0.92489171 0.14120457 0.35303903 0.88526213 0.34527177 0.31160611 -0.88576186 0.081562623
		 -0.45691741 -0.905312 -0.09471757 -0.41405168 -0.9281798 -0.11792517 -0.3529532 -0.98553598
		 0.11857747 -0.12107114 -0.98553598 0.11857747 -0.12107114 -0.9281798 -0.11792517
		 -0.3529532 -0.94254464 0.13443002 -0.30584019 -0.66766101 0.53948265 0.51301777 -0.91509676
		 -0.18712486 -0.3571865 -0.9281798 -0.11792517 -0.3529532 -0.905312 -0.09471757 -0.41405168
		 -0.88896036 -0.20106742 -0.41148683 -0.91509676 -0.18712486 -0.3571865 -0.90518689
		 -0.093410276 -0.4146218 -0.94254464 0.13443002 -0.30584019 -0.9281798 -0.11792517
		 -0.3529532 -0.48753822 0.86710811 0.10212727 -0.58543015 0.77636701 0.23350756 -0.94254464
		 0.13443002 -0.30584019 -0.93277526 0.30287182 -0.19544548 -0.89867032 0.40616813
		 0.16558705 -0.98771167 -0.036354966 0.15199979 -0.61842483 -0.005497721 0.78582472
		 -0.55417442 0.49530336 0.66900325 -0.9702425 -0.094784543 -0.22281255 -0.93277526
		 0.30287182 -0.19544548 -0.94254464 0.13443002 -0.30584019 -0.90518689 -0.093410276
		 -0.4146218 -0.93277526 0.30287182 -0.19544548 -0.9702425 -0.094784543 -0.22281255
		 -0.98771167 -0.036354966 0.15199979 -0.89867032 0.40616813 0.16558705 0.36480856
		 0.51017195 0.77887052 0.434387 0.83855706 0.32883126 -0.3094188 0.92032397 0.23929863
		 -0.55417442 0.49530336 0.66900325 -0.64672232 0.6904825 0.32401261 -0.91022158 0.19056556
		 -0.36767033 -0.88830924 0.23327097 -0.39558986 -0.64493662 0.7185747 0.26020598 -0.74151653
		 0.62210697 0.25126904 -0.91884977 0.20107883 -0.33953261 -0.91022158 0.19056556 -0.36767033
		 -0.64672232 0.6904825 0.32401261 -0.69558614 0.68954831 0.20170036 -0.64493662 0.7185747
		 0.26020598 -0.88830924 0.23327097 -0.39558986 -0.89546633 0.26872554 -0.35486141
		 -0.98439246 0.045477826 -0.17000951 -0.7799111 0.4775604 0.40456739 -0.69558614 0.68954831
		 0.20170036 -0.89546633 0.26872554 -0.35486141 -0.71179754 0.4135907 0.56770325 -0.7799111
		 0.4775604 0.40456739 -0.98439246 0.045477826 -0.17000951 -0.98775029 -0.10259792
		 -0.11757132 -0.98626888 -0.022236681 -0.1636437 -0.76172984 0.47621289 0.43930504
		 -0.74754715 0.43730751 0.49993539 -0.98850667 -0.050123535 -0.14262584 -0.80398327
		 0.41032049 0.43040448 -0.76172984 0.47621289 0.43930504 -0.98626888 -0.022236681
		 -0.1636437 -0.98486495 -0.058391582 -0.16319142 -0.82889694 0.34454486 0.4407025
		 -0.80398327 0.41032049 0.43040448 -0.98486495 -0.058391582 -0.16319142 -0.98863751
		 -0.081077009 -0.12657967 -0.64672232 0.6904825 0.32401261 0.0087048253 0.69169199
		 0.72214013 -0.17801113 0.65154213 0.73743129 -0.74151653 0.62210697 0.25126904 0.059134368
		 0.68352312 0.72752953 0.0087048253 0.69169199 0.72214013 -0.64672232 0.6904825 0.32401261
		 -0.64493662 0.7185747 0.26020598 -0.2549538 0.77350783 0.58024496 0.059134368 0.68352312
		 0.72752953 -0.64493662 0.7185747 0.26020598 -0.69558614 0.68954831 0.20170036 -0.28291586
		 0.62081611 0.73112649 -0.2549538 0.77350783 0.58024496 -0.69558614 0.68954831 0.20170036
		 -0.7799111 0.4775604 0.40456739 0.012773701 0.58456409 0.81124699 -0.28291586 0.62081611
		 0.73112649 -0.7799111 0.4775604 0.40456739 -0.71179754 0.4135907 0.56770325 -0.74754715
		 0.43730751 0.49993539 -0.099787652 0.59486067 0.79761094 0.012773701 0.58456409 0.81124699
		 -0.71179754 0.4135907 0.56770325 -0.18264093 0.63648278 0.74935436 -0.14732547 0.6482349
		 0.74705201 -0.76172984 0.47621289 0.43930504 -0.80398327 0.41032049 0.43040448 -0.23028038
		 0.56376237 0.79318529 -0.18264093 0.63648278 0.74935436 -0.80398327 0.41032049 0.43040448;
	setAttr ".n[1494:1659]" -type "float3"  -0.82889694 0.34454486 0.4407025 -0.2549538
		 0.77350783 0.58024496 -0.28291586 0.62081611 0.73112649 0.012773701 0.58456409 0.81124699
		 0.059134368 0.68352312 0.72752953 0.059134368 0.68352312 0.72752953 0.012773701 0.58456409
		 0.81124699 0.62860626 0.33428565 0.70221597 0.62600553 0.2534712 0.73747504 0.8708992
		 -0.29882932 0.39017379 0.62600553 0.2534712 0.73747504 0.62860626 0.33428565 0.70221597
		 0.94320172 -0.16898812 0.28603065 0.73606741 -0.67054969 -0.092562735 0.8708992 -0.29882932
		 0.39017379 0.94320172 -0.16898812 0.28603065 0.80498314 -0.55131245 -0.21921837 -0.71179754
		 0.4135907 0.56770325 -0.98775029 -0.10259792 -0.11757132 -0.98850667 -0.050123535
		 -0.14262584 -0.74754715 0.43730751 0.49993539 0.012773701 0.58456409 0.81124699 -0.099787652
		 0.59486067 0.79761094 0.55420816 0.37789592 0.74165219 0.62860626 0.33428565 0.70221597
		 0.55483449 0.51444161 0.65384138 0.54465562 0.46863431 0.69550854 -0.14732547 0.6482349
		 0.74705201 -0.18264093 0.63648278 0.74935436 0.52461648 0.43643343 0.73096061 0.55483449
		 0.51444161 0.65384138 -0.18264093 0.63648278 0.74935436 -0.23028038 0.56376237 0.79318529
		 0.62860626 0.33428565 0.70221597 0.55420816 0.37789592 0.74165219 0.94703031 -0.053733472
		 0.31661704 0.94320172 -0.16898812 0.28603065 0.98046297 0.044670146 0.19156453 0.94648951
		 -0.025994226 0.32168603 0.54465562 0.46863431 0.69550854 0.55483449 0.51444161 0.65384138
		 0.97746825 -0.023394627 0.20978196 0.98046297 0.044670146 0.19156453 0.55483449 0.51444161
		 0.65384138 0.52461648 0.43643343 0.73096061 -0.75349188 -0.10039736 0.64974636 -0.82889694
		 0.34454486 0.4407025 -0.98863751 -0.081077009 -0.12657967 -0.85990345 -0.48989126
		 0.14343162 -0.82889694 0.34454486 0.4407025 -0.75349188 -0.10039736 0.64974636 -0.23317192
		 0.39612409 0.88809717 -0.23028038 0.56376237 0.79318529 -0.082374327 -0.93672532
		 0.3402355 -0.010979624 -0.61022067 0.79215539 -0.75349188 -0.10039736 0.64974636
		 -0.85990345 -0.48989126 0.14343162 0.56101233 -0.81236041 0.159172 0.64302129 -0.5579201
		 0.52464163 -0.010979624 -0.61022067 0.79215539 -0.082374327 -0.93672532 0.3402355
		 0.059134368 0.68352312 0.72752953 0.62600553 0.2534712 0.73747504 0.57902789 0.32068914
		 0.74959004 0.0087048253 0.69169199 0.72214013 0.85060543 -0.27955621 0.44532993 0.57902789
		 0.32068914 0.74959004 0.62600553 0.2534712 0.73747504 0.8708992 -0.29882932 0.39017379
		 0.6860441 -0.71345669 -0.14255907 0.85060543 -0.27955621 0.44532993 0.8708992 -0.29882932
		 0.39017379 0.73606741 -0.67054969 -0.092562735 0.40428168 -0.5213995 0.75146449 0.85060543
		 -0.27955621 0.44532993 0.6860441 -0.71345669 -0.14255907 0.42031303 -0.90737915 0.0002287145
		 -0.097549357 0.090190932 0.9911356 0.57902789 0.32068914 0.74959004 0.85060543 -0.27955621
		 0.44532993 0.40428168 -0.5213995 0.75146449 0.52346605 -0.84271938 0.12572698 0.40428168
		 -0.5213995 0.75146449 0.42031303 -0.90737915 0.0002287145 0.71099168 -0.68712229
		 0.14951195 -0.069899365 -0.70740956 0.70333904 0.40428168 -0.5213995 0.75146449 0.52346605
		 -0.84271938 0.12572698 0.56233323 -0.81206858 0.15596776 0.40428168 -0.5213995 0.75146449
		 -0.069899365 -0.70740956 0.70333904 -0.72837681 -0.36703521 0.57857788 -0.097549357
		 0.090190932 0.9911356 -0.91745585 0.065162748 -0.39246473 -0.91884977 0.20107883
		 -0.33953261 -0.74151653 0.62210697 0.25126904 -0.79266274 0.52516627 0.30965486 -0.91745585
		 0.065162748 -0.39246473 -0.79266274 0.52516627 0.30965486 -0.81267941 0.57801467
		 0.073832139 -0.93695766 0.28019103 -0.208814 0.94320172 -0.16898812 0.28603065 0.94703031
		 -0.053733472 0.31661704 0.82326478 -0.50748551 -0.25434926 0.80498314 -0.55131245
		 -0.21921837 0.84305418 -0.41436878 -0.34286752 0.81552631 -0.50784075 -0.27751511
		 0.94648951 -0.025994226 0.32168603 0.98046297 0.044670146 0.19156453 -0.76172984
		 0.47621289 0.43930504 -0.14732547 0.6482349 0.74705201 -0.099787652 0.59486067 0.79761094
		 -0.74754715 0.43730751 0.49993539 -0.099787652 0.59486067 0.79761094 -0.14732547
		 0.6482349 0.74705201 0.54465562 0.46863431 0.69550854 0.55420816 0.37789592 0.74165219
		 0.55420816 0.37789592 0.74165219 0.54465562 0.46863431 0.69550854 0.94648951 -0.025994226
		 0.32168603 0.94703031 -0.053733472 0.31661704 0.94648951 -0.025994226 0.32168603
		 0.81552631 -0.50784075 -0.27751511 0.82326478 -0.50748551 -0.25434926 0.94703031
		 -0.053733472 0.31661704 -0.23028038 0.56376237 0.79318529 -0.23317192 0.39612409
		 0.88809717 0.5250783 0.21449703 0.82357991 0.52461648 0.43643343 0.73096061 -0.23317192
		 0.39612409 0.88809717 0.18527898 -0.052049231 0.98130655 0.55483341 -0.1507844 0.8181833
		 0.5250783 0.21449703 0.82357991 0.9146508 -0.21121339 0.34467787 0.97746825 -0.023394627
		 0.20978196 0.52461648 0.43643343 0.73096061 0.5250783 0.21449703 0.82357991 0.9146508
		 -0.21121339 0.34467787 0.5250783 0.21449703 0.82357991 0.55483341 -0.1507844 0.8181833
		 0.64302129 -0.5579201 0.52464163 0.64302129 -0.5579201 0.52464163 0.56101233 -0.81236041
		 0.159172 0.79003161 -0.5937705 -0.15259945 0.9146508 -0.21121339 0.34467787 0.98046297
		 0.044670146 0.19156453 0.97746825 -0.023394627 0.20978196 0.83183432 -0.46550167
		 -0.30225796 0.84305418 -0.41436878 -0.34286752 0.83183432 -0.46550167 -0.30225796
		 0.97746825 -0.023394627 0.20978196 0.9146508 -0.21121339 0.34467787 0.79003161 -0.5937705
		 -0.15259945 -0.74151653 0.62210697 0.25126904 -0.17801113 0.65154213 0.73743129 -0.87763327
		 0.32236436 0.35474086 -0.79266274 0.52516627 0.30965486 -0.17801113 0.65154213 0.73743129
		 0.0087048253 0.69169199 0.72214013 0.57902789 0.32068914 0.74959004 -0.097549357
		 0.090190932 0.9911356 -0.17801113 0.65154213 0.73743129 -0.097549357 0.090190932
		 0.9911356 -0.72837681 -0.36703521 0.57857788 -0.87763327 0.32236436 0.35474086 -0.79266274
		 0.52516627 0.30965486;
	setAttr ".n[1660:1825]" -type "float3"  -0.87763327 0.32236436 0.35474086 -0.80727005
		 0.49293467 0.32454661 -0.81267941 0.57801467 0.073832139 -0.8044064 0.59242666 -0.044283494
		 -0.85352832 0.51104409 -0.10160398 -0.93695766 0.28019103 -0.208814 -0.81267941 0.57801467
		 0.073832139 -0.68389267 0.71880543 0.12493821 -0.8044064 0.59242666 -0.044283494
		 -0.81267941 0.57801467 0.073832139 -0.80727005 0.49293467 0.32454661 -0.86065692
		 0.48524258 -0.15430267 -0.94019783 0.31537092 0.12872137 -0.93695766 0.28019103 -0.208814
		 -0.85352832 0.51104409 -0.10160398 -0.93695766 0.28019103 -0.208814 -0.94019783 0.31537092
		 0.12872137 -0.97387511 0.22698069 0.0068579861 -0.91745585 0.065162748 -0.39246473
		 -0.91022158 0.19056556 -0.36767033 -0.91884977 0.20107883 -0.33953261 -0.62422597
		 -0.3417888 -0.70251149 -0.53044987 -0.36674535 -0.76427794 -0.52464771 -0.37510031
		 -0.76422805 -0.88830924 0.23327097 -0.39558986 -0.91022158 0.19056556 -0.36767033
		 -0.53044987 -0.36674535 -0.76427794 -0.73383766 -0.14551611 -0.66355658 -0.89546633
		 0.26872554 -0.35486141 -0.88830924 0.23327097 -0.39558986 -0.52464771 -0.37510031
		 -0.76422805 -0.75492603 -0.31059596 -0.57759577 -0.98439246 0.045477826 -0.17000951
		 -0.89546633 0.26872554 -0.35486141 -0.73383766 -0.14551611 -0.66355658 -0.58317393
		 -0.49429044 -0.64465892 -0.98775029 -0.10259792 -0.11757132 -0.98439246 0.045477826
		 -0.17000951 -0.75492603 -0.31059596 -0.57759577 -0.98850667 -0.050123535 -0.14262584
		 -0.98775029 -0.10259792 -0.11757132 -0.58317393 -0.49429044 -0.64465892 -0.6147266
		 -0.48937404 -0.61856627 -0.62599516 -0.44902405 -0.63757932 -0.98486495 -0.058391582
		 -0.16319142 -0.98626888 -0.022236681 -0.1636437 -0.61515784 -0.45151195 -0.64631093
		 -0.63571835 -0.48736173 -0.59861565 -0.98863751 -0.081077009 -0.12657967 -0.98486495
		 -0.058391582 -0.16319142 -0.62599516 -0.44902405 -0.63757932 -0.73383766 -0.14551611
		 -0.66355658 -0.52464771 -0.37510031 -0.76422805 -0.58317393 -0.49429044 -0.64465892
		 -0.75492603 -0.31059596 -0.57759577 -0.52464771 -0.37510031 -0.76422805 0.07834132
		 -0.75326592 -0.65303379 0.12770377 -0.72439033 -0.67745882 -0.58317393 -0.49429044
		 -0.64465892 0.73606741 -0.67054969 -0.092562735 0.80498314 -0.55131245 -0.21921837
		 0.12770377 -0.72439033 -0.67745882 0.07834132 -0.75326592 -0.65303379 -0.58317393
		 -0.49429044 -0.64465892 0.12770377 -0.72439033 -0.67745882 0.1603215 -0.70926744
		 -0.68646687 -0.6147266 -0.48937404 -0.61856627 0.17540637 -0.64839387 -0.74082249
		 -0.62599516 -0.44902405 -0.63757932 -0.61515784 -0.45151195 -0.64631093 0.16962233
		 -0.67203814 -0.720828 0.14002563 -0.70470983 -0.69554067 -0.63571835 -0.48736173
		 -0.59861565 -0.62599516 -0.44902405 -0.63757932 0.17540637 -0.64839387 -0.74082249
		 0.12770377 -0.72439033 -0.67745882 0.80498314 -0.55131245 -0.21921837 0.82326478
		 -0.50748551 -0.25434926 0.1603215 -0.70926744 -0.68646687 0.84305418 -0.41436878
		 -0.34286752 0.17540637 -0.64839387 -0.74082249 0.16962233 -0.67203814 -0.720828 0.81552631
		 -0.50784075 -0.27751511 0.83183432 -0.46550167 -0.30225796 0.14002563 -0.70470983
		 -0.69554067 0.17540637 -0.64839387 -0.74082249 0.84305418 -0.41436878 -0.34286752
		 -0.67711526 -0.53692901 -0.50321192 -0.85990345 -0.48989126 0.14343162 -0.98863751
		 -0.081077009 -0.12657967 -0.63571835 -0.48736173 -0.59861565 -0.52464771 -0.37510031
		 -0.76422805 -0.53044987 -0.36674535 -0.76427794 0.061652843 -0.69915217 -0.71230972
		 0.07834132 -0.75326592 -0.65303379 0.6860441 -0.71345669 -0.14255907 0.73606741 -0.67054969
		 -0.092562735 0.07834132 -0.75326592 -0.65303379 0.061652843 -0.69915217 -0.71230972
		 -0.077336833 -0.81246012 -0.57786465 0.42031303 -0.90737915 0.0002287145 0.6860441
		 -0.71345669 -0.14255907 0.061652843 -0.69915217 -0.71230972 0.0071081631 -0.96934664
		 0.24559426 0.66786075 -0.70670128 0.23352793 0.71099168 -0.68712229 0.14951195 0.42031303
		 -0.90737915 0.0002287145 0.42031303 -0.90737915 0.0002287145 -0.077336833 -0.81246012
		 -0.57786465 -0.62685585 -0.77377427 -0.091242023 0.0071081631 -0.96934664 0.24559426
		 -0.98626888 -0.022236681 -0.1636437 -0.98850667 -0.050123535 -0.14262584 -0.6147266
		 -0.48937404 -0.61856627 -0.61515784 -0.45151195 -0.64631093 -0.6147266 -0.48937404
		 -0.61856627 0.1603215 -0.70926744 -0.68646687 0.16962233 -0.67203814 -0.720828 -0.61515784
		 -0.45151195 -0.64631093 0.1603215 -0.70926744 -0.68646687 0.82326478 -0.50748551
		 -0.25434926 0.81552631 -0.50784075 -0.27751511 0.16962233 -0.67203814 -0.720828 0.13331091
		 -0.7982167 -0.58743364 -0.67711526 -0.53692901 -0.50321192 -0.63571835 -0.48736173
		 -0.59861565 0.14002563 -0.70470983 -0.69554067 0.13331091 -0.7982167 -0.58743364
		 0.28597555 -0.95101929 -0.11738941 -0.29699764 -0.92754996 -0.22681159 -0.67711526
		 -0.53692901 -0.50321192 0.79003161 -0.5937705 -0.15259945 0.13331091 -0.7982167 -0.58743364
		 0.14002563 -0.70470983 -0.69554067 0.83183432 -0.46550167 -0.30225796 0.79003161
		 -0.5937705 -0.15259945 0.56101233 -0.81236041 0.159172 0.28597555 -0.95101929 -0.11738941
		 0.13331091 -0.7982167 -0.58743364 -0.91884977 0.20107883 -0.33953261 -0.91745585
		 0.065162748 -0.39246473 -0.97387511 0.22698069 0.0068579861 -0.62422597 -0.3417888
		 -0.70251149 -0.62422597 -0.3417888 -0.70251149 -0.077336833 -0.81246012 -0.57786465
		 0.061652843 -0.69915217 -0.71230972 -0.53044987 -0.36674535 -0.76427794 -0.62422597
		 -0.3417888 -0.70251149 -0.97387511 0.22698069 0.0068579861 -0.62685585 -0.77377427
		 -0.091242023 -0.077336833 -0.81246012 -0.57786465 0.18527898 -0.052049231 0.98130655
		 -0.010979624 -0.61022067 0.79215539 0.64302129 -0.5579201 0.52464163 0.55483341 -0.1507844
		 0.8181833 0.56101233 -0.81236041 0.159172 -0.082374327 -0.93672532 0.3402355 -0.29699764
		 -0.92754996 -0.22681159 0.28597555 -0.95101929 -0.11738941 -0.75349188 -0.10039736
		 0.64974636 -0.010979624 -0.61022067 0.79215539 0.18527898 -0.052049231 0.98130655
		 -0.23317192 0.39612409 0.88809717 -0.85990345 -0.48989126 0.14343162 -0.67711526
		 -0.53692901 -0.50321192 -0.29699764 -0.92754996 -0.22681159;
	setAttr ".n[1826:1991]" -type "float3"  -0.082374327 -0.93672532 0.3402355 -0.51648438
		 0.77798581 0.35774571 -0.92268699 0.35105264 -0.15940747 -0.87802261 0.40184569 -0.25999305
		 -0.48045838 0.83583385 0.2655966 -0.5587157 0.75024068 0.35351902 -0.91461748 0.4039605
		 -0.01705371 -0.92268699 0.35105264 -0.15940747 -0.51648438 0.77798581 0.35774571
		 -0.60708022 0.74825996 0.26750812 -0.48045838 0.83583385 0.2655966 -0.87802261 0.40184569
		 -0.25999305 -0.91371071 0.35361487 -0.20022301 -0.98730022 0.15121369 -0.048710097
		 -0.69532341 0.5401774 0.47406089 -0.60708022 0.74825996 0.26750812 -0.91371071 0.35361487
		 -0.20022301 -0.65932542 0.49575785 0.56525582 -0.69532341 0.5401774 0.47406089 -0.98730022
		 0.15121369 -0.048710097 -0.99969649 0.021866698 0.011348067 -0.9751367 0.16829793
		 -0.14416721 -0.6899116 0.58557349 0.42558864 -0.69332385 0.54879558 0.46703902 -0.99110514
		 0.10065072 -0.087063156 -0.70597988 0.53178501 0.46775752 -0.6899116 0.58557349 0.42558864
		 -0.9751367 0.16829793 -0.14416721 -0.98363227 0.13618372 -0.11798973 -0.73286325
		 0.43617359 0.52217245 -0.70597988 0.53178501 0.46775752 -0.98363227 0.13618372 -0.11798973
		 -0.99643075 0.081061445 -0.023554936 -0.51648438 0.77798581 0.35774571 0.068451084
		 0.73040611 0.67957437 0.0069919275 0.72107393 0.69282287 -0.5587157 0.75024068 0.35351902
		 0.1934732 0.72394061 0.66217679 0.068451084 0.73040611 0.67957437 -0.51648438 0.77798581
		 0.35774571 -0.48045838 0.83583385 0.2655966 -0.11108714 0.84030455 0.53061092 0.1934732
		 0.72394061 0.66217679 -0.48045838 0.83583385 0.2655966 -0.60708022 0.74825996 0.26750812
		 -0.28282595 0.58569813 0.75958353 -0.11108714 0.84030455 0.53061092 -0.60708022 0.74825996
		 0.26750812 -0.69532341 0.5401774 0.47406089 0.088686287 0.61147934 0.78627461 -0.28282595
		 0.58569813 0.75958353 -0.69532341 0.5401774 0.47406089 -0.65932542 0.49575785 0.56525582
		 -0.69332385 0.54879558 0.46703902 0.01170515 0.62051314 0.7841087 0.088686287 0.61147934
		 0.78627461 -0.65932542 0.49575785 0.56525582 0.0046079457 0.65538722 0.75527894 -0.0010293978
		 0.66605079 0.74590564 -0.6899116 0.58557349 0.42558864 -0.70597988 0.53178501 0.46775752
		 -0.019602688 0.55637121 0.8307026 0.0046079457 0.65538722 0.75527894 -0.70597988
		 0.53178501 0.46775752 -0.73286325 0.43617359 0.52217245 -0.11108714 0.84030455 0.53061092
		 -0.28282595 0.58569813 0.75958353 0.088686287 0.61147934 0.78627461 0.1934732 0.72394061
		 0.66217679 0.1934732 0.72394061 0.66217679 0.088686287 0.61147934 0.78627461 0.71338165
		 0.30488834 0.63097519 0.72990489 0.25994626 0.63219208 0.86105686 -0.40684518 0.30505416
		 0.72990489 0.25994626 0.63219208 0.71338165 0.30488834 0.63097519 0.92504627 -0.33491057
		 0.17923246 0.53639495 -0.82146174 -0.19360037 0.86105686 -0.40684518 0.30505416 0.92504627
		 -0.33491057 0.17923246 0.6039055 -0.72714782 -0.32642648 -0.65932542 0.49575785 0.56525582
		 -0.99969649 0.021866698 0.011348067 -0.99110514 0.10065072 -0.087063156 -0.69332385
		 0.54879558 0.46703902 0.088686287 0.61147934 0.78627461 0.01170515 0.62051314 0.7841087
		 0.63847601 0.29489022 0.71090657 0.71338165 0.30488834 0.63097519 0.67112744 0.39232343
		 0.62902325 0.64438474 0.36152026 0.67384821 -0.0010293978 0.66605079 0.74590564 0.0046079457
		 0.65538722 0.75527894 0.65426236 0.28997654 0.6984657 0.67112744 0.39232343 0.62902325
		 0.0046079457 0.65538722 0.75527894 -0.019602688 0.55637121 0.8307026 0.71338165 0.30488834
		 0.63097519 0.63847601 0.29489022 0.71090657 0.93689138 -0.27864334 0.21116918 0.92504627
		 -0.33491057 0.17923246 0.98281872 -0.13144602 0.12957369 0.94684196 -0.20878661 0.24474163
		 0.64438474 0.36152026 0.67384821 0.67112744 0.39232343 0.62902325 0.95708436 -0.21694307
		 0.1921594 0.98281872 -0.13144602 0.12957369 0.67112744 0.39232343 0.62902325 0.65426236
		 0.28997654 0.6984657 -0.59096611 -0.023726355 0.80634737 -0.73286325 0.43617359 0.52217245
		 -0.99643075 0.081061445 -0.023554936 -0.8470431 -0.38709933 0.36424181 -0.73286325
		 0.43617359 0.52217245 -0.59096611 -0.023726355 0.80634737 -0.010693964 0.36923414
		 0.92927486 -0.019602688 0.55637121 0.8307026 -0.046103343 -0.87631536 0.47952673
		 0.11253615 -0.56326121 0.81857949 -0.59096611 -0.023726355 0.80634737 -0.8470431
		 -0.38709933 0.36424181 0.50138122 -0.827308 0.25333458 0.64565879 -0.55001205 0.5297277
		 0.11253615 -0.56326121 0.81857949 -0.046103343 -0.87631536 0.47952673 0.1934732 0.72394061
		 0.66217679 0.72990489 0.25994626 0.63219208 0.64511198 0.29405382 0.70523959 0.068451084
		 0.73040611 0.67957437 0.86220509 -0.39029443 0.32291278 0.64511198 0.29405382 0.70523959
		 0.72990489 0.25994626 0.63219208 0.86105686 -0.40684518 0.30505416 0.47563437 -0.85820246
		 -0.19302991 0.86220509 -0.39029443 0.32291278 0.86105686 -0.40684518 0.30505416 0.53639495
		 -0.82146174 -0.19360037 0.80645645 -0.39726576 0.43795884 0.86220509 -0.39029443
		 0.32291278 0.47563437 -0.85820246 -0.19302991 0.42937303 -0.87004977 0.24218225 0.56877351
		 0.25939584 0.78051937 0.64511198 0.29405382 0.70523959 0.86220509 -0.39029443 0.32291278
		 0.80645645 -0.39726576 0.43795884 0.73907775 -0.357021 0.57122684 0.80645645 -0.39726576
		 0.43795884 0.42937303 -0.87004977 0.24218225 0.7120083 -0.63429981 0.30117765 0.80645645
		 -0.39726576 0.43795884 0.73907775 -0.357021 0.57122684 0.49149859 0.19362895 0.84908009
		 0.56877351 0.25939584 0.78051937 -0.93172896 0.36314353 -0.0028107928 -0.91461748
		 0.4039605 -0.01705371 -0.5587157 0.75024068 0.35351902 -0.46035179 0.73784274 0.4936237
		 -0.93172896 0.36314353 -0.0028107928 -0.46035179 0.73784274 0.4936237 -0.42125636
		 0.78901815 0.4472062 -0.79260081 0.57593787 0.20019881 0.92504627 -0.33491057 0.17923246
		 0.93689138 -0.27864334 0.21116918 0.5923835 -0.70972681 -0.38127375 0.6039055 -0.72714782
		 -0.32642648 0.68728411 -0.55549496 -0.46804473;
	setAttr ".n[1992:2157]" -type "float3"  0.63301659 -0.64324874 -0.43072149 0.94684196
		 -0.20878661 0.24474163 0.98281872 -0.13144602 0.12957369 -0.6899116 0.58557349 0.42558864
		 -0.0010293978 0.66605079 0.74590564 0.01170515 0.62051314 0.7841087 -0.69332385 0.54879558
		 0.46703902 0.01170515 0.62051314 0.7841087 -0.0010293978 0.66605079 0.74590564 0.64438474
		 0.36152026 0.67384821 0.63847601 0.29489022 0.71090657 0.63847601 0.29489022 0.71090657
		 0.64438474 0.36152026 0.67384821 0.94684196 -0.20878661 0.24474163 0.93689138 -0.27864334
		 0.21116918 0.94684196 -0.20878661 0.24474163 0.63301659 -0.64324874 -0.43072149 0.5923835
		 -0.70972681 -0.38127375 0.93689138 -0.27864334 0.21116918 -0.019602688 0.55637121
		 0.8307026 -0.010693964 0.36923414 0.92927486 0.67966747 0.048966572 0.73188412 0.65426236
		 0.28997654 0.6984657 -0.010693964 0.36923414 0.92927486 0.37644258 -0.16969921 0.91076517
		 0.65369701 -0.21290329 0.72619033 0.67966747 0.048966572 0.73188412 0.87422109 -0.33445206
		 0.35196501 0.95708436 -0.21694307 0.1921594 0.65426236 0.28997654 0.6984657 0.67966747
		 0.048966572 0.73188412 0.87422109 -0.33445206 0.35196501 0.67966747 0.048966572 0.73188412
		 0.65369701 -0.21290329 0.72619033 0.64565879 -0.55001205 0.5297277 0.64565879 -0.55001205
		 0.5297277 0.50138122 -0.827308 0.25333458 0.70309353 -0.69966704 -0.12698629 0.87422109
		 -0.33445206 0.35196501 0.98281872 -0.13144602 0.12957369 0.95708436 -0.21694307 0.1921594
		 0.69028461 -0.62097412 -0.37134656 0.68728411 -0.55549496 -0.46804473 0.69028461
		 -0.62097412 -0.37134656 0.95708436 -0.21694307 0.1921594 0.87422109 -0.33445206 0.35196501
		 0.70309353 -0.69966704 -0.12698629 -0.5587157 0.75024068 0.35351902 0.0069919275
		 0.72107393 0.69282287 -0.010910219 0.67434901 0.73833215 -0.46035179 0.73784274 0.4936237
		 0.0069919275 0.72107393 0.69282287 0.068451084 0.73040611 0.67957437 0.64511198 0.29405382
		 0.70523959 0.56877351 0.25939584 0.78051937 0.0069919275 0.72107393 0.69282287 0.56877351
		 0.25939584 0.78051937 0.49149859 0.19362895 0.84908009 -0.010910219 0.67434901 0.73833215
		 -0.46035179 0.73784274 0.4936237 -0.010910219 0.67434901 0.73833215 -0.025452441
		 0.64891696 0.76043338 -0.42125636 0.78901815 0.4472062 -0.31252739 0.84012288 0.44330594
		 -0.57278293 0.78455311 0.23747875 -0.79260081 0.57593787 0.20019881 -0.42125636 0.78901815
		 0.4472062 -0.040045176 0.66545808 0.74536031 -0.31252739 0.84012288 0.44330594 -0.42125636
		 0.78901815 0.4472062 -0.025452441 0.64891696 0.76043338 -0.68389267 0.71880543 0.12493821
		 -0.80727005 0.49293467 0.32454661 -0.79260081 0.57593787 0.20019881 -0.57278293 0.78455311
		 0.23747875 -0.79260081 0.57593787 0.20019881 -0.80727005 0.49293467 0.32454661 -0.87763327
		 0.32236436 0.35474086 -0.93172896 0.36314353 -0.0028107928 -0.92268699 0.35105264
		 -0.15940747 -0.91461748 0.4039605 -0.01705371 -0.92469138 -0.19083495 -0.32943571
		 -0.76147091 -0.29754639 -0.57587165 -0.70118409 -0.32243541 -0.63590586 -0.87802261
		 0.40184569 -0.25999305 -0.92268699 0.35105264 -0.15940747 -0.76147091 -0.29754639
		 -0.57587165 -0.84429955 -0.072280832 -0.53097433 -0.91371071 0.35361487 -0.20022301
		 -0.87802261 0.40184569 -0.25999305 -0.70118409 -0.32243541 -0.63590586 -0.87881172
		 -0.25939903 -0.40050238 -0.98730022 0.15121369 -0.048710097 -0.91371071 0.35361487
		 -0.20022301 -0.84429955 -0.072280832 -0.53097433 -0.73204643 -0.43490478 -0.52437192
		 -0.99969649 0.021866698 0.011348067 -0.98730022 0.15121369 -0.048710097 -0.87881172
		 -0.25939903 -0.40050238 -0.99110514 0.10065072 -0.087063156 -0.99969649 0.021866698
		 0.011348067 -0.73204643 -0.43490478 -0.52437192 -0.74811536 -0.37124878 -0.54999799
		 -0.71791482 -0.34502497 -0.60461235 -0.98363227 0.13618372 -0.11798973 -0.9751367
		 0.16829793 -0.14416721 -0.70857787 -0.32783049 -0.62485564 -0.71510243 -0.40591291
		 -0.56908983 -0.99643075 0.081061445 -0.023554936 -0.98363227 0.13618372 -0.11798973
		 -0.71791482 -0.34502497 -0.60461235 -0.84429955 -0.072280832 -0.53097433 -0.70118409
		 -0.32243541 -0.63590586 -0.73204643 -0.43490478 -0.52437192 -0.87881172 -0.25939903
		 -0.40050238 -0.70118409 -0.32243541 -0.63590586 -0.17296392 -0.78188914 -0.59894311
		 -0.12828261 -0.75500685 -0.64304608 -0.73204643 -0.43490478 -0.52437192 0.53639495
		 -0.82146174 -0.19360037 0.6039055 -0.72714782 -0.32642648 -0.12828261 -0.75500685
		 -0.64304608 -0.17296392 -0.78188914 -0.59894311 -0.73204643 -0.43490478 -0.52437192
		 -0.12828261 -0.75500685 -0.64304608 -0.14388658 -0.72631025 -0.67213845 -0.74811536
		 -0.37124878 -0.54999799 0.0085364021 -0.65466523 -0.75587076 -0.71791482 -0.34502497
		 -0.60461235 -0.70857787 -0.32783049 -0.62485564 -0.018631898 -0.66350734 -0.74793774
		 -0.022745011 -0.70685244 -0.70699525 -0.71510243 -0.40591291 -0.56908983 -0.71791482
		 -0.34502497 -0.60461235 0.0085364021 -0.65466523 -0.75587076 -0.12828261 -0.75500685
		 -0.64304608 0.6039055 -0.72714782 -0.32642648 0.5923835 -0.70972681 -0.38127375 -0.14388658
		 -0.72631025 -0.67213845 0.68728411 -0.55549496 -0.46804473 0.0085364021 -0.65466523
		 -0.75587076 -0.018631898 -0.66350734 -0.74793774 0.63301659 -0.64324874 -0.43072149
		 0.69028461 -0.62097412 -0.37134656 -0.022745011 -0.70685244 -0.70699525 0.0085364021
		 -0.65466523 -0.75587076 0.68728411 -0.55549496 -0.46804473 -0.76253086 -0.51656097
		 -0.38950151 -0.8470431 -0.38709933 0.36424181 -0.99643075 0.081061445 -0.023554936
		 -0.71510243 -0.40591291 -0.56908983 -0.70118409 -0.32243541 -0.63590586 -0.76147091
		 -0.29754639 -0.57587165 -0.20665672 -0.75782663 -0.61886334 -0.17296392 -0.78188914
		 -0.59894311 0.47563437 -0.85820246 -0.19302991 0.53639495 -0.82146174 -0.19360037
		 -0.17296392 -0.78188914 -0.59894311 -0.20665672 -0.75782663 -0.61886334 -0.34392703
		 -0.80667841 -0.48060808 0.42937303 -0.87004977 0.24218225 0.47563437 -0.85820246
		 -0.19302991 -0.20665672 -0.75782663 -0.61886334 -0.069899365 -0.70740956 0.70333904
		 0.56233323 -0.81206858 0.15596776 0.7120083 -0.63429981 0.30117765;
	setAttr ".n[2158:2323]" -type "float3"  0.42937303 -0.87004977 0.24218225 0.42937303
		 -0.87004977 0.24218225 -0.34392703 -0.80667841 -0.48060808 -0.72837681 -0.36703521
		 0.57857788 -0.069899365 -0.70740956 0.70333904 -0.9751367 0.16829793 -0.14416721
		 -0.99110514 0.10065072 -0.087063156 -0.74811536 -0.37124878 -0.54999799 -0.70857787
		 -0.32783049 -0.62485564 -0.74811536 -0.37124878 -0.54999799 -0.14388658 -0.72631025
		 -0.67213845 -0.018631898 -0.66350734 -0.74793774 -0.70857787 -0.32783049 -0.62485564
		 -0.14388658 -0.72631025 -0.67213845 0.5923835 -0.70972681 -0.38127375 0.63301659
		 -0.64324874 -0.43072149 -0.018631898 -0.66350734 -0.74793774 0.024960952 -0.85685462
		 -0.51495349 -0.76253086 -0.51656097 -0.38950151 -0.71510243 -0.40591291 -0.56908983
		 -0.022745011 -0.70685244 -0.70699525 0.024960952 -0.85685462 -0.51495349 0.20141277
		 -0.97917801 -0.025363568 -0.31460473 -0.94815576 -0.044994429 -0.76253086 -0.51656097
		 -0.38950151 0.024960952 -0.85685462 -0.51495349 -0.022745011 -0.70685244 -0.70699525
		 0.69028461 -0.62097412 -0.37134656 0.70309353 -0.69966704 -0.12698629 0.70309353
		 -0.69966704 -0.12698629 0.50138122 -0.827308 0.25333458 0.20141277 -0.97917801 -0.025363568
		 0.024960952 -0.85685462 -0.51495349 -0.91461748 0.4039605 -0.01705371 -0.93172896
		 0.36314353 -0.0028107928 -0.87763327 0.32236436 0.35474086 -0.92469138 -0.19083495
		 -0.32943571 -0.92469138 -0.19083495 -0.32943571 -0.34392703 -0.80667841 -0.48060808
		 -0.20665672 -0.75782663 -0.61886334 -0.76147091 -0.29754639 -0.57587165 -0.92469138
		 -0.19083495 -0.32943571 -0.87763327 0.32236436 0.35474086 -0.72837681 -0.36703521
		 0.57857788 -0.34392703 -0.80667841 -0.48060808 0.37644258 -0.16969921 0.91076517
		 0.11253615 -0.56326121 0.81857949 0.64565879 -0.55001205 0.5297277 0.65369701 -0.21290329
		 0.72619033 0.50138122 -0.827308 0.25333458 -0.046103343 -0.87631536 0.47952673 -0.31460473
		 -0.94815576 -0.044994429 0.20141277 -0.97917801 -0.025363568 -0.59096611 -0.023726355
		 0.80634737 0.11253615 -0.56326121 0.81857949 0.37644258 -0.16969921 0.91076517 -0.010693964
		 0.36923414 0.92927486 -0.8470431 -0.38709933 0.36424181 -0.76253086 -0.51656097 -0.38950151
		 -0.31460473 -0.94815576 -0.044994429 -0.046103343 -0.87631536 0.47952673 -0.010910219
		 0.67434901 0.73833215 0.49149859 0.19362895 0.84908009 0.40874663 0.11523589 0.90534353
		 -0.025452441 0.64891696 0.76043338 0.70446438 -0.47153485 0.5304572 0.40874663 0.11523589
		 0.90534353 0.49149859 0.19362895 0.84908009 0.73907775 -0.357021 0.57122684 0.75246221
		 -0.65081668 0.10118455 0.70446438 -0.47153485 0.5304572 0.73907775 -0.357021 0.57122684
		 0.7120083 -0.63429981 0.30117765 0.43055511 -0.71306932 0.55331224 0.31871492 0.020447684
		 0.94763005 0.40874663 0.11523589 0.90534353 0.70446438 -0.47153485 0.5304572 0.06561093
		 -0.034012642 0.99726546 0.31871492 0.020447684 0.94763005 0.43055511 -0.71306932
		 0.55331224 0.12723514 -0.71536982 0.68706423 0.31871492 0.020447684 0.94763005 -0.040045176
		 0.66545808 0.74536031 -0.025452441 0.64891696 0.76043338 0.40874663 0.11523589 0.90534353
		 0.31871492 0.020447684 0.94763005 0.06561093 -0.034012642 0.99726546 -0.12139197
		 0.59663588 0.79327774 -0.040045176 0.66545808 0.74536031 -0.040045176 0.66545808
		 0.74536031 -0.12139197 0.59663588 0.79327774 -0.17646889 0.80398375 0.5678634 -0.31252739
		 0.84012288 0.44330594 0.063711412 0.85385913 0.51659024 -0.29386708 0.84860939 0.43989116
		 -0.12590358 0.86831361 0.47977054 0.18359837 0.92193884 0.34105778 0.063711412 0.85385913
		 0.51659024 -0.35515979 0.81181824 0.46347889 -0.29386708 0.84860939 0.43989116 -0.35515979
		 0.81181824 0.46347889 0.063711412 0.85385913 0.51659024 0.12684438 0.68683654 0.71565783
		 -0.29604897 0.73710418 0.60748041 0.16020672 0.57876736 0.7996012 -0.29164076 0.7447874
		 0.60019779 -0.26933798 0.73662877 0.62035084 0.13947964 0.59253263 0.79337919 -0.39051142
		 0.76280516 0.51539218 -0.29164076 0.7447874 0.60019779 0.16020672 0.57876736 0.7996012
		 0.035564434 0.58031082 0.81361818 -0.67227614 0.70000482 0.24091083 -0.26933798 0.73662877
		 0.62035084 -0.29164076 0.7447874 0.60019779 -0.71944588 0.67845529 0.14864746 -0.8797946
		 0.33771536 -0.33452922 -0.67227614 0.70000482 0.24091083 -0.71944588 0.67845529 0.14864746
		 -0.85932577 0.28158754 -0.42692825 -0.39051142 0.76280516 0.51539218 -0.79902375
		 0.601165 -0.012714809 -0.71944588 0.67845529 0.14864746 -0.29164076 0.7447874 0.60019779
		 -0.71944588 0.67845529 0.14864746 -0.79902375 0.601165 -0.012714809 -0.84990072 0.10686328
		 -0.51599318 -0.85932577 0.28158754 -0.42692825 -0.52749586 0.73531413 0.42551297
		 -0.39051142 0.76280516 0.51539218 0.035564434 0.58031082 0.81361818 -0.07912939 0.59405613
		 0.80052227 -0.029495526 0.70927632 0.70431322 -0.49260965 0.83014095 0.26115462 -0.5321874
		 0.77698201 0.33626699 -0.06295345 0.6573838 0.75092173 -0.39051142 0.76280516 0.51539218
		 -0.52749586 0.73531413 0.42551297 -0.83693743 0.53933322 -0.093034491 -0.79902375
		 0.601165 -0.012714809 -0.52749586 0.73531413 0.42551297 -0.5321874 0.77698201 0.33626699
		 -0.81502652 0.5479936 -0.18824147 -0.83693743 0.53933322 -0.093034491 -0.79902375
		 0.601165 -0.012714809 -0.83693743 0.53933322 -0.093034491 -0.81985718 -0.0054239687
		 -0.57254243 -0.84990072 0.10686328 -0.51599318 -0.81985718 -0.0054239687 -0.57254243
		 -0.83693743 0.53933322 -0.093034491 -0.81502652 0.5479936 -0.18824147 -0.75573927
		 -0.015311649 -0.6546936 0.43131766 0.17529024 0.88500756 0.45261461 0.2332669 0.86065471
		 -0.06295345 0.6573838 0.75092173 -0.07912939 0.59405613 0.80052227 0.43131766 0.17529024
		 0.88500756 -0.07912939 0.59405613 0.80052227 0.035564434 0.58031082 0.81361818 0.49480259
		 0.13024603 0.85918939 0.66273105 0.056259077 0.74674124 0.49480259 0.13024603 0.85918939
		 0.035564434 0.58031082 0.81361818 0.16020672 0.57876736 0.7996012 0.16020672 0.57876736
		 0.7996012 0.13947964 0.59253263 0.79337919;
	setAttr ".n[2324:2489]" -type "float3"  0.69708121 0.062035289 0.71430343 0.66273105
		 0.056259077 0.74674124 0.85602289 0.49114478 0.16125004 0.75964254 0.26990905 0.59168601
		 0.12684438 0.68683654 0.71565783 0.063711412 0.85385913 0.51659024 0.72892725 0.68290865
		 0.047966491 0.85602289 0.49114478 0.16125004 0.063711412 0.85385913 0.51659024 0.18359837
		 0.92193884 0.34105778 -0.67228329 0.69543147 0.25379166 -0.35515979 0.81181824 0.46347889
		 -0.29604897 0.73710418 0.60748041 -0.66323942 0.66619104 0.34103224 -0.87585407 0.47836044
		 -0.063646443 -0.67228329 0.69543147 0.25379166 -0.66323942 0.66619104 0.34103224
		 -0.87553054 0.47134078 -0.10622707 -0.68389267 0.71880543 0.12493821 -0.29386708
		 0.84860939 0.43989116 -0.35515979 0.81181824 0.46347889 -0.67228329 0.69543147 0.25379166
		 0.20990564 -0.9592489 0.18915913 0.12723514 -0.71536982 0.68706423 0.43055511 -0.71306932
		 0.55331224 0.43436584 -0.899441 0.048292469 0.49702561 -0.80091453 -0.33391833 0.92186826
		 -0.2231265 -0.31681776 0.97908223 -0.033869602 -0.20062619 0.67369443 -0.70476931
		 -0.22234216 0.92186826 -0.2231265 -0.31681776 0.85602289 0.49114478 0.16125004 0.72892725
		 0.68290865 0.047966491 0.97908223 -0.033869602 -0.20062619 -0.25458962 0.73050922
		 0.63367218 -0.29604897 0.73710418 0.60748041 0.12684438 0.68683654 0.71565783 0.12577114
		 0.62559909 0.76993984 -0.6442076 0.68827224 0.33358341 -0.66323942 0.66619104 0.34103224
		 -0.29604897 0.73710418 0.60748041 -0.25458962 0.73050922 0.63367218 -0.9050355 0.36953548
		 -0.2106045 -0.87553054 0.47134078 -0.10622707 -0.66323942 0.66619104 0.34103224 -0.6442076
		 0.68827224 0.33358341 0.12577114 0.62559909 0.76993984 0.12684438 0.68683654 0.71565783
		 0.75964254 0.26990905 0.59168601 0.7105841 0.072161473 0.69990212 -0.86065692 0.48524258
		 -0.15430267 -0.68389267 0.71880543 0.12493821 -0.67228329 0.69543147 0.25379166 -0.87585407
		 0.47836044 -0.063646443 -0.57278293 0.78455311 0.23747875 -0.31252739 0.84012288
		 0.44330594 -0.29386708 0.84860939 0.43989116 -0.68389267 0.71880543 0.12493821 -0.86065692
		 0.48524258 -0.15430267 -0.85352832 0.51104409 -0.10160398 -0.8044064 0.59242666 -0.044283494
		 -0.68389267 0.71880543 0.12493821 -0.29386708 0.84860939 0.43989116 -0.31252739 0.84012288
		 0.44330594 -0.17646889 0.80398375 0.5678634 -0.12590358 0.86831361 0.47977054 0.67369443
		 -0.70476931 -0.22234216 0.23555067 -0.97071159 0.047274053 0.15838483 -0.96803313
		 -0.19448929 0.49702561 -0.80091453 -0.33391833 0.7120083 -0.63429981 0.30117765 0.56233323
		 -0.81206858 0.15596776 0.74148929 -0.66489923 -0.090014562 0.75246221 -0.65081668
		 0.10118455 0.60839796 -0.78750253 -0.098446622 0.74148929 -0.66489923 -0.090014562
		 0.56233323 -0.81206858 0.15596776 0.52346605 -0.84271938 0.12572698 0.65395361 -0.75649816
		 0.0074283471 0.60839796 -0.78750253 -0.098446622 0.52346605 -0.84271938 0.12572698
		 0.71099168 -0.68712229 0.14951195 0.81070411 -0.57722789 0.097810082 0.65395361 -0.75649816
		 0.0074283471 0.71099168 -0.68712229 0.14951195 0.66786075 -0.70670128 0.23352793
		 0.80346358 -0.56529033 0.18679684 0.81070411 -0.57722789 0.097810082 0.66786075 -0.70670128
		 0.23352793 0.57000256 -0.81468236 0.10672277 0.43436584 -0.899441 0.048292469 0.43055511
		 -0.71306932 0.55331224 0.70446438 -0.47153485 0.5304572 0.75246221 -0.65081668 0.10118455
		 0.15838483 -0.96803313 -0.19448929 0.41411552 -0.90836352 -0.05817239 0.4146823 -0.88499218
		 -0.21172476 0.49702561 -0.80091453 -0.33391833 0.49702561 -0.80091453 -0.33391833
		 0.4146823 -0.88499218 -0.21172476 0.75062972 -0.56900537 -0.33583906 0.92186826 -0.2231265
		 -0.31681776 0.72892725 0.68290865 0.047966491 0.18359837 0.92193884 0.34105778 0.028420271
		 0.96452916 0.26244205 0.55959368 0.8268013 0.057048012 0.52200037 0.82458961 0.21809989
		 0.55959368 0.8268013 0.057048012 0.028420271 0.96452916 0.26244205 0.053529255 0.9517327
		 0.30222416 0.09178786 0.84566623 0.52576005 0.59807551 0.69754571 0.39463356 0.52200037
		 0.82458961 0.21809989 0.053529255 0.9517327 0.30222416 0.65071446 0.67030948 0.35672945
		 0.59807551 0.69754571 0.39463356 0.09178786 0.84566623 0.52576005 0.000133422 0.83807838
		 0.54554987 -0.051627666 0.80777752 0.58722228 0.60961485 0.68266821 0.40290672 0.64869225
		 0.7000047 0.29865 -0.033193111 0.87422353 0.4843877 0.56755137 0.59665346 0.56735361
		 0.60961485 0.68266821 0.40290672 -0.051627666 0.80777752 0.58722228 0.038023803 0.69123185
		 0.721632 0.93344218 0.35698858 -0.035282198 0.98754674 0.02346495 -0.15556599 0.55959368
		 0.8268013 0.057048012 0.52200037 0.82458961 0.21809989 0.90075123 0.33318853 0.27862638
		 0.93344218 0.35698858 -0.035282198 0.52200037 0.82458961 0.21809989 0.59807551 0.69754571
		 0.39463356 0.99657124 0.06361679 0.052902386 0.90075123 0.33318853 0.27862638 0.59807551
		 0.69754571 0.39463356 0.65071446 0.67030948 0.35672945 0.64869225 0.7000047 0.29865
		 0.97746146 0.21077269 -0.0119966 0.99657124 0.06361679 0.052902386 0.65071446 0.67030948
		 0.35672945 0.97844893 0.16976821 0.11754329 0.97589171 0.21704224 -0.022978285 0.60961485
		 0.68266821 0.40290672 0.56755137 0.59665346 0.56735361 0.93344218 0.35698858 -0.035282198
		 0.90075123 0.33318853 0.27862638 0.99657124 0.06361679 0.052902386 0.98754674 0.02346495
		 -0.15556599 0.98754674 0.02346495 -0.15556599 0.99657124 0.06361679 0.052902386 0.76013321
		 -0.60522163 -0.23644082 0.75557005 -0.64385331 -0.12069304 0.19421916 -0.97568482
		 0.10157757 0.75557005 -0.64385331 -0.12069304 0.76013321 -0.60522163 -0.23644082
		 0.076955743 -0.96252632 -0.26004028 -0.33030704 -0.78381544 0.5258618 0.19421916
		 -0.97568482 0.10157757 0.076955743 -0.96252632 -0.26004028 -0.57123172 -0.82013917
		 0.032649677 0.65071446 0.67030948 0.35672945 0.000133422 0.83807838 0.54554987 -0.033193111
		 0.87422353 0.4843877 0.64869225 0.7000047 0.29865;
	setAttr ".n[2490:2655]" -type "float3"  0.99657124 0.06361679 0.052902386 0.97746146
		 0.21077269 -0.0119966 0.80558944 -0.50102061 -0.31623408 0.76013321 -0.60522163 -0.23644082
		 0.74911678 -0.54948753 -0.36998305 0.7764796 -0.47369149 -0.41556689 0.97589171 0.21704224
		 -0.022978285 0.97844893 0.16976821 0.11754329 0.76013321 -0.60522163 -0.23644082
		 0.80558944 -0.50102061 -0.31623408 0.10573646 -0.91879261 -0.38031566 0.076955743
		 -0.96252632 -0.26004028 0.010691656 -0.86316425 -0.50480998 0.04625573 -0.88334411
		 -0.46643707 0.7764796 -0.47369149 -0.41556689 0.74911678 -0.54948753 -0.36998305
		 0.6104759 0.26499048 0.74639082 0.56367719 0.65745389 0.50002235 0.10098529 0.75190556
		 0.65149063 -0.033167742 0.32379216 0.94554669 0.56755137 0.59665346 0.56735361 0.56367719
		 0.65745389 0.50002235 0.9780491 0.12931664 0.16339262 0.97844893 0.16976821 0.11754329
		 -0.078002706 -0.61568278 0.7841239 0.41123328 -0.63622928 0.65276301 0.6104759 0.26499048
		 0.74639082 -0.033167742 0.32379216 0.94554669 -0.22027841 -0.92284715 0.31595975
		 0.037271246 -0.96658605 0.25361827 0.41123328 -0.63622928 0.65276301 -0.078002706
		 -0.61568278 0.7841239 0.67369443 -0.70476931 -0.22234216 0.97908223 -0.033869602
		 -0.20062619 0.98754674 0.02346495 -0.15556599 0.75557005 -0.64385331 -0.12069304
		 0.75557005 -0.64385331 -0.12069304 0.19421916 -0.97568482 0.10157757 0.23555067 -0.97071159
		 0.047274053 0.67369443 -0.70476931 -0.22234216 0.076955743 -0.96252632 -0.26004028
		 0.10573646 -0.91879261 -0.38031566 -0.65341175 -0.74029475 -0.15816696 -0.57123172
		 -0.82013917 0.032649677 -0.65183777 -0.69558018 -0.30211881 -0.62625939 -0.72787464
		 -0.27928063 0.04625573 -0.88334411 -0.46643707 0.010691656 -0.86316425 -0.50480998
		 0.60961485 0.68266821 0.40290672 0.97589171 0.21704224 -0.022978285 0.97746146 0.21077269
		 -0.0119966 0.64869225 0.7000047 0.29865 0.97746146 0.21077269 -0.0119966 0.97589171
		 0.21704224 -0.022978285 0.7764796 -0.47369149 -0.41556689 0.80558944 -0.50102061
		 -0.31623408 0.80558944 -0.50102061 -0.31623408 0.7764796 -0.47369149 -0.41556689
		 0.04625573 -0.88334411 -0.46643707 0.10573646 -0.91879261 -0.38031566 0.04625573
		 -0.88334411 -0.46643707 -0.62625939 -0.72787464 -0.27928063 -0.65341175 -0.74029475
		 -0.15816696 0.10573646 -0.91879261 -0.38031566 0.97844893 0.16976821 0.11754329 0.9780491
		 0.12931664 0.16339262 0.7222749 -0.65102804 -0.2334127 0.74911678 -0.54948753 -0.36998305
		 0.98237467 -0.036771942 0.18326999 0.70297199 -0.65054864 0.28743139 0.43921188 -0.88310647
		 0.16497253 0.61166948 -0.78850675 -0.064168215 0.030824969 -0.99677902 -0.074036114
		 0.027114145 -0.94150203 -0.33591485 0.7222749 -0.65102804 -0.2334127 0.61166948 -0.78850675
		 -0.064168215 0.030824969 -0.99677902 -0.074036114 0.61166948 -0.78850675 -0.064168215
		 0.43921188 -0.88310647 0.16497253 0.037271246 -0.96658605 0.25361827 0.037271246
		 -0.96658605 0.25361827 -0.22027841 -0.92284715 0.31595975 -0.4515132 -0.89139622
		 0.039352041 0.030824969 -0.99677902 -0.074036114 -0.65183777 -0.69558018 -0.30211881
		 0.010691656 -0.86316425 -0.50480998 0.027114145 -0.94150203 -0.33591485 -0.59106594
		 -0.78921658 -0.16666795 0.72892725 0.68290865 0.047966491 0.55959368 0.8268013 0.057048012
		 0.98754674 0.02346495 -0.15556599 0.97908223 -0.033869602 -0.20062619 -0.38547263
		 0.83165938 0.39969176 0.053529255 0.9517327 0.30222416 0.028420271 0.96452916 0.26244205
		 -0.39750522 0.71905839 0.57003915 -0.43211818 0.70101428 0.56732076 0.09178786 0.84566623
		 0.52576005 0.053529255 0.9517327 0.30222416 -0.38547263 0.83165938 0.39969176 -0.66328329
		 0.53030801 0.52804232 0.000133422 0.83807838 0.54554987 0.09178786 0.84566623 0.52576005
		 -0.43211818 0.70101428 0.56732076 -0.033193111 0.87422353 0.4843877 0.000133422 0.83807838
		 0.54554987 -0.66328329 0.53030801 0.52804232 -0.65206438 0.59807539 0.46595913 -0.62130803
		 0.54674327 0.56129152 0.038023803 0.69123185 0.721632 -0.051627666 0.80777752 0.58722228
		 -0.69404501 0.55491954 0.45865658 -0.38547263 0.83165938 0.39969176 -0.39750522 0.71905839
		 0.57003915 -0.66328329 0.53030801 0.52804232 -0.43211818 0.70101428 0.56732076 -0.39750522
		 0.71905839 0.57003915 -0.5718596 0.07143636 0.81723523 -0.93818265 -0.053738527 0.34194368
		 -0.66328329 0.53030801 0.52804232 -0.33030704 -0.78381544 0.5258618 -0.57123172 -0.82013917
		 0.032649677 -0.93818265 -0.053738527 0.34194368 -0.5718596 0.07143636 0.81723523
		 -0.66328329 0.53030801 0.52804232 -0.93818265 -0.053738527 0.34194368 -0.98087358
		 -0.049581155 0.18822509 -0.65206438 0.59807539 0.46595913 -0.98190641 -0.083762221
		 0.16983418 -0.62130803 0.54674327 0.56129152 -0.69404501 0.55491954 0.45865658 -0.9930256
		 -0.059469979 0.10180098 -0.93818265 -0.053738527 0.34194368 -0.57123172 -0.82013917
		 0.032649677 -0.65341175 -0.74029475 -0.15816696 -0.98087358 -0.049581155 0.18822509
		 -0.65183777 -0.69558018 -0.30211881 -0.98190641 -0.083762221 0.16983418 -0.9930256
		 -0.059469979 0.10180098 -0.62625939 -0.72787464 -0.27928063 -0.60707295 0.50930309
		 0.60997772 0.10098529 0.75190556 0.65149063 0.038023803 0.69123185 0.721632 -0.62130803
		 0.54674327 0.56129152 0.12723514 -0.71536982 0.68706423 -0.33030704 -0.78381544 0.5258618
		 -0.5718596 0.07143636 0.81723523 0.06561093 -0.034012642 0.99726546 -0.051627666
		 0.80777752 0.58722228 -0.033193111 0.87422353 0.4843877 -0.65206438 0.59807539 0.46595913
		 -0.69404501 0.55491954 0.45865658 -0.65206438 0.59807539 0.46595913 -0.98087358 -0.049581155
		 0.18822509 -0.9930256 -0.059469979 0.10180098 -0.69404501 0.55491954 0.45865658 -0.98087358
		 -0.049581155 0.18822509 -0.65341175 -0.74029475 -0.15816696 -0.62625939 -0.72787464
		 -0.27928063 -0.9930256 -0.059469979 0.10180098 -0.93642849 -0.20259692 0.28645447
		 -0.60707295 0.50930309 0.60997772 -0.62130803 0.54674327 0.56129152 -0.98190641 -0.083762221
		 0.16983418 -0.82406133 -0.40124223 0.39990944 -0.49764496 -0.71790266 0.48679081;
	setAttr ".n[2656:2821]" -type "float3"  -0.57110572 -0.31293213 0.75888848 -0.5887779
		 0.4506017 0.67104298 -0.4515132 -0.89139622 0.039352041 -0.82406133 -0.40124223 0.39990944
		 -0.93642849 -0.20259692 0.28645447 -0.59106594 -0.78921658 -0.16666795 -0.4515132
		 -0.89139622 0.039352041 -0.22027841 -0.92284715 0.31595975 -0.49764496 -0.71790266
		 0.48679081 -0.82406133 -0.40124223 0.39990944 -0.12590358 0.86831361 0.47977054 -0.39750522
		 0.71905839 0.57003915 0.028420271 0.96452916 0.26244205 0.18359837 0.92193884 0.34105778
		 0.70297199 -0.65054864 0.28743139 0.41123328 -0.63622928 0.65276301 0.037271246 -0.96658605
		 0.25361827 0.43921188 -0.88310647 0.16497253 -0.22027841 -0.92284715 0.31595975 -0.078002706
		 -0.61568278 0.7841239 -0.57110572 -0.31293213 0.75888848 -0.49764496 -0.71790266
		 0.48679081 0.6104759 0.26499048 0.74639082 0.41123328 -0.63622928 0.65276301 0.70297199
		 -0.65054864 0.28743139 0.98237467 -0.036771942 0.18326999 -0.033167742 0.32379216
		 0.94554669 -0.5887779 0.4506017 0.67104298 -0.57110572 -0.31293213 0.75888848 -0.078002706
		 -0.61568278 0.7841239 0.56367719 0.65745389 0.50002235 0.56755137 0.59665346 0.56735361
		 0.038023803 0.69123185 0.721632 0.10098529 0.75190556 0.65149063 0.56367719 0.65745389
		 0.50002235 0.6104759 0.26499048 0.74639082 0.98237467 -0.036771942 0.18326999 0.9780491
		 0.12931664 0.16339262 0.9780491 0.12931664 0.16339262 0.98237467 -0.036771942 0.18326999
		 0.61166948 -0.78850675 -0.064168215 0.7222749 -0.65102804 -0.2334127 0.027114145
		 -0.94150203 -0.33591485 0.010691656 -0.86316425 -0.50480998 0.74911678 -0.54948753
		 -0.36998305 0.7222749 -0.65102804 -0.2334127 0.027114145 -0.94150203 -0.33591485
		 0.030824969 -0.99677902 -0.074036114 -0.4515132 -0.89139622 0.039352041 -0.59106594
		 -0.78921658 -0.16666795 -0.5887779 0.4506017 0.67104298 -0.033167742 0.32379216 0.94554669
		 0.10098529 0.75190556 0.65149063 -0.60707295 0.50930309 0.60997772 -0.82406133 -0.40124223
		 0.39990944 -0.5887779 0.4506017 0.67104298 -0.60707295 0.50930309 0.60997772 -0.93642849
		 -0.20259692 0.28645447 -0.98190641 -0.083762221 0.16983418 -0.65183777 -0.69558018
		 -0.30211881 -0.59106594 -0.78921658 -0.16666795 -0.93642849 -0.20259692 0.28645447
		 -0.17646889 0.80398375 0.5678634 -0.12139197 0.59663588 0.79327774 -0.39750522 0.71905839
		 0.57003915 -0.12590358 0.86831361 0.47977054 -0.33030704 -0.78381544 0.5258618 0.12723514
		 -0.71536982 0.68706423 0.23555067 -0.97071159 0.047274053 0.19421916 -0.97568482
		 0.10157757 -0.5718596 0.07143636 0.81723523 -0.39750522 0.71905839 0.57003915 -0.12139197
		 0.59663588 0.79327774 0.06561093 -0.034012642 0.99726546 0.62861419 -0.76641792 -0.13209009
		 0.43436584 -0.899441 0.048292469 0.75246221 -0.65081668 0.10118455 0.74148929 -0.66489923
		 -0.090014562 0.94774455 -0.22282483 -0.22831868 0.85602289 0.49114478 0.16125004
		 0.92186826 -0.2231265 -0.31681776 0.75062972 -0.56900537 -0.33583906 0.85602289 0.49114478
		 0.16125004 0.94774455 -0.22282483 -0.22831868 0.90969926 -0.40659085 0.08444602 0.75964254
		 0.26990905 0.59168601 0.81835306 -0.54788876 -0.17353998 0.90969926 -0.40659085 0.08444602
		 0.94774455 -0.22282483 -0.22831868 0.75062972 -0.56900537 -0.33583906 0.75964254
		 0.26990905 0.59168601 0.90969926 -0.40659085 0.08444602 0.77446258 -0.58185381 0.24830194
		 0.7105841 0.072161473 0.69990212 0.70416731 -0.70908225 -0.036753111 0.77446258 -0.58185381
		 0.24830194 0.90969926 -0.40659085 0.08444602 0.81835306 -0.54788876 -0.17353998 0.70141518
		 -0.71056521 0.055802077 0.81835306 -0.54788876 -0.17353998 0.75062972 -0.56900537
		 -0.33583906 0.4146823 -0.88499218 -0.21172476 0.25069663 -0.83881289 -0.483264 0.70416731
		 -0.70908225 -0.036753111 0.81835306 -0.54788876 -0.17353998 0.38099548 -0.71458787
		 -0.58669126 0.70141518 -0.71056521 0.055802077 0.4146823 -0.88499218 -0.21172476
		 0.41411552 -0.90836352 -0.05817239 0.6634444 -0.68017644 0.3117716 0.79021442 -0.43731102
		 -0.42932528 0.81835306 -0.54788876 -0.17353998 0.70141518 -0.71056521 0.055802077
		 0.68784297 -0.70697039 -0.16451396 0.81835306 -0.54788876 -0.17353998 0.79021442
		 -0.43731102 -0.42932528 0.36130413 -0.51147872 -0.77964664 0.38099548 -0.71458787
		 -0.58669126 0.70427418 -0.69557667 0.14202456 0.68784297 -0.70697039 -0.16451396
		 0.70141518 -0.71056521 0.055802077 0.6634444 -0.68017644 0.3117716 0.41411552 -0.90836352
		 -0.05817239 0.68277025 -0.72515655 0.08929009 0.79203606 -0.51224643 0.33208802 0.6634444
		 -0.68017644 0.3117716 0.77892894 -0.56250083 0.27724087 0.68609446 -0.71630847 0.12718701
		 0.76448768 -0.61972874 0.17746788 0.79203606 -0.51224643 0.33208802 0.6634444 -0.68017644
		 0.3117716 0.79203606 -0.51224643 0.33208802 0.76448768 -0.61972874 0.17746788 0.70427418
		 -0.69557667 0.14202456 0.27665529 -0.63282382 -0.72318453 0.36130413 -0.51147872
		 -0.77964664 0.79021442 -0.43731102 -0.42932528 0.68784297 -0.70697039 -0.16451396
		 0.31006396 -0.71704268 -0.6242677 0.27665529 -0.63282382 -0.72318453 0.68784297 -0.70697039
		 -0.16451396 0.70427418 -0.69557667 0.14202456 0.49771249 -0.76275235 -0.41290569
		 0.31006396 -0.71704268 -0.6242677 0.70427418 -0.69557667 0.14202456 0.76448768 -0.61972874
		 0.17746788 0.76741129 -0.51529783 0.38150764 0.66273105 0.056259077 0.74674124 0.69708121
		 0.062035289 0.71430343 0.7713173 -0.54637015 0.32641888 0.7713173 -0.54637015 0.32641888
		 0.63477916 -0.77267861 0.0048113721 0.62147373 -0.7833336 0.012603183 0.76741129
		 -0.51529783 0.38150764 0.63477916 -0.77267861 0.0048113721 0.22877716 -0.83804077
		 -0.49532682 0.1877709 -0.85196656 -0.48876891 0.62147373 -0.7833336 0.012603183 0.66273105
		 0.056259077 0.74674124 0.76741129 -0.51529783 0.38150764 0.728567 -0.42572734 0.53660637
		 0.49480259 0.13024603 0.85918939 0.49480259 0.13024603 0.85918939 0.728567 -0.42572734
		 0.53660637 0.69014931 -0.37939239 0.61624295 0.43131766 0.17529024 0.88500756;
	setAttr ".n[2822:2987]" -type "float3"  0.48038939 0.28306112 0.83012193 0.45261461
		 0.2332669 0.86065471 0.71999359 -0.30705795 0.62235409 0.73787379 -0.24852404 0.6275174
		 0.61388928 -0.78340858 0.097010002 0.728567 -0.42572734 0.53660637 0.76741129 -0.51529783
		 0.38150764 0.62147373 -0.7833336 0.012603183 0.728567 -0.42572734 0.53660637 0.61388928
		 -0.78340858 0.097010002 0.59533852 -0.78250414 0.18237151 0.69014931 -0.37939239
		 0.61624295 0.70978773 -0.67975223 0.18476541 0.73787379 -0.24852404 0.6275174 0.71999359
		 -0.30705795 0.62235409 0.65460777 -0.7297188 0.19748199 0.1877709 -0.85196656 -0.48876891
		 0.21904075 -0.88865745 -0.40287608 0.61388928 -0.78340858 0.097010002 0.62147373
		 -0.7833336 0.012603183 0.21904075 -0.88865745 -0.40287608 0.20978805 -0.92136049
		 -0.32723671 0.59533852 -0.78250414 0.18237151 0.61388928 -0.78340858 0.097010002
		 0.4352175 -0.82418507 -0.36235994 0.70978773 -0.67975223 0.18476541 0.65460777 -0.7297188
		 0.19748199 0.29175732 -0.8989917 -0.32663679 0.43436584 -0.899441 0.048292469 0.41411552
		 -0.90836352 -0.05817239 0.15838483 -0.96803313 -0.19448929 0.20990564 -0.9592489
		 0.18915913 0.23555067 -0.97071159 0.047274053 0.12723514 -0.71536982 0.68706423 0.20990564
		 -0.9592489 0.18915913 0.15838483 -0.96803313 -0.19448929 -0.78756183 0.58347881 0.19823936
		 -0.83518124 0.14045596 -0.53173721 -0.79374272 0.15029302 -0.58939332 -0.75840324
		 0.62950879 0.16894722 -0.78958249 0.60787159 0.083974294 -0.82918751 0.22943735 -0.50971222
		 -0.83518124 0.14045596 -0.53173721 -0.78756183 0.58347881 0.19823936 -0.81917304
		 0.55109841 0.15889031 -0.75840324 0.62950879 0.16894722 -0.79374272 0.15029302 -0.58939332
		 -0.86383998 0.12430806 -0.48818842 -0.94850421 -0.17634623 -0.26313838 -0.88879085
		 0.25165701 0.38303998 -0.81917304 0.55109841 0.15889031 -0.86383998 0.12430806 -0.48818842
		 -0.83539659 0.175256 0.52095866 -0.88879085 0.25165701 0.38303998 -0.94850421 -0.17634623
		 -0.26313838 -0.9148584 -0.29848507 -0.27192059 -0.93393862 -0.23688072 -0.26766798
		 -0.88342136 0.23284322 0.40663341 -0.83134437 0.23995724 0.50128543 -0.92850822 -0.25962022
		 -0.26546165 -0.8866846 0.17999959 0.42589968 -0.88342136 0.23284322 0.40663341 -0.93393862
		 -0.23688072 -0.26766798 -0.9338088 -0.24900194 -0.25690293 -0.8990491 0.12124781
		 0.42072523 -0.8866846 0.17999959 0.42589968 -0.9338088 -0.24900194 -0.25690293 -0.93323636
		 -0.29064056 -0.21118219 -0.78756183 0.58347881 0.19823936 -0.24560122 0.64212674
		 0.72619092 -0.33398214 0.66495895 0.66804606 -0.78958249 0.60787159 0.083974294 -0.15894811
		 0.60860944 0.77738667 -0.24560122 0.64212674 0.72619092 -0.78756183 0.58347881 0.19823936
		 -0.75840324 0.62950879 0.16894722 -0.44118169 0.66373414 0.60399973 -0.15894811 0.60860944
		 0.77738667 -0.75840324 0.62950879 0.16894722 -0.81917304 0.55109841 0.15889031 -0.41235808
		 0.48768148 0.76949829 -0.44118169 0.66373414 0.60399973 -0.81917304 0.55109841 0.15889031
		 -0.88879085 0.25165701 0.38303998 -0.17113723 0.45586658 0.87344015 -0.41235808 0.48768148
		 0.76949829 -0.88879085 0.25165701 0.38303998 -0.83539659 0.175256 0.52095866 -0.83134437
		 0.23995724 0.50128543 -0.22675157 0.4732787 0.85122913 -0.17113723 0.45586658 0.87344015
		 -0.83539659 0.175256 0.52095866 -0.33092663 0.46200931 0.82282132 -0.29976067 0.51845944
		 0.80083913 -0.88342136 0.23284322 0.40663341 -0.8866846 0.17999959 0.42589968 -0.33434561
		 0.41705948 0.84514755 -0.33092663 0.46200931 0.82282132 -0.8866846 0.17999959 0.42589968
		 -0.8990491 0.12124781 0.42072523 -0.44118169 0.66373414 0.60399973 -0.41235808 0.48768148
		 0.76949829 -0.17113723 0.45586658 0.87344015 -0.15894811 0.60860944 0.77738667 -0.15894811
		 0.60860944 0.77738667 -0.17113723 0.45586658 0.87344015 0.544312 0.35025787 0.76226234
		 0.55541593 0.17883162 0.81211597 0.90565431 -0.248252 0.34374589 0.55541593 0.17883162
		 0.81211597 0.544312 0.35025787 0.76226234 0.96653748 0.057290774 0.2500461 0.84062415
		 -0.53286225 -0.096999444 0.90565431 -0.248252 0.34374589 0.96653748 0.057290774 0.2500461
		 0.91134101 -0.28657919 -0.29551643 -0.83539659 0.175256 0.52095866 -0.9148584 -0.29848507
		 -0.27192059 -0.92850822 -0.25962022 -0.26546165 -0.83134437 0.23995724 0.50128543
		 -0.17113723 0.45586658 0.87344015 -0.22675157 0.4732787 0.85122913 0.44455793 0.38272139
		 0.80987197 0.544312 0.35025787 0.76226234 0.40053314 0.46463042 0.78974158 0.4779104
		 0.45052782 0.75407314 -0.29976067 0.51845944 0.80083913 -0.33092663 0.46200931 0.82282132
		 0.38239059 0.40322077 0.83137864 0.40053314 0.46463042 0.78974158 -0.33092663 0.46200931
		 0.82282132 -0.33434561 0.41705948 0.84514755 0.544312 0.35025787 0.76226234 0.44455793
		 0.38272139 0.80987197 0.92641568 0.036055986 0.37477192 0.96653748 0.057290774 0.2500461
		 0.94453341 0.21454114 0.24865389 0.94317114 0.11497727 0.31178266 0.4779104 0.45052782
		 0.75407314 0.40053314 0.46463042 0.78974158 0.92701524 0.11090194 0.35825056 0.94453341
		 0.21454114 0.24865389 0.40053314 0.46463042 0.78974158 0.38239059 0.40322077 0.83137864
		 -0.70138168 -0.4070881 0.58510083 -0.8990491 0.12124781 0.42072523 -0.93323636 -0.29064056
		 -0.21118219 -0.64742935 -0.74629837 0.15451226 -0.8990491 0.12124781 0.42072523 -0.70138168
		 -0.4070881 0.58510083 -0.38042149 0.13187206 0.91536289 -0.33434561 0.41705948 0.84514755
		 0.12750787 -0.93792766 0.32254216 0.055222016 -0.68746769 0.72411233 -0.70138168
		 -0.4070881 0.58510083 -0.64742935 -0.74629837 0.15451226 0.64787304 -0.73548925 0.19828291
		 0.66067487 -0.48642102 0.57175457 0.055222016 -0.68746769 0.72411233 0.12750787 -0.93792766
		 0.32254216 -0.15894811 0.60860944 0.77738667 0.55541593 0.17883162 0.81211597 0.45890218
		 0.31679043 0.83009195 -0.24560122 0.64212674 0.72619092 0.8128491 -0.28493428 0.50802439
		 0.45890218 0.31679043 0.83009195;
	setAttr ".n[2988:3153]" -type "float3"  0.55541593 0.17883162 0.81211597 0.90565431
		 -0.248252 0.34374589 0.74761111 -0.64830381 -0.144152 0.8128491 -0.28493428 0.50802439
		 0.90565431 -0.248252 0.34374589 0.84062415 -0.53286225 -0.096999444 0.42284715 -0.77682143
		 0.46663558 0.8128491 -0.28493428 0.50802439 0.74761111 -0.64830381 -0.144152 0.50808501
		 -0.8341502 -0.21457654 -0.23736061 0.19751215 0.95113033 0.45890218 0.31679043 0.83009195
		 0.8128491 -0.28493428 0.50802439 0.42284715 -0.77682143 0.46663558 0.57000256 -0.81468236
		 0.10672277 0.42284715 -0.77682143 0.46663558 0.50808501 -0.8341502 -0.21457654 0.56430304
		 -0.79920834 0.2069494 0.0071081631 -0.96934664 0.24559426 0.42284715 -0.77682143
		 0.46663558 0.57000256 -0.81468236 0.10672277 0.66786075 -0.70670128 0.23352793 0.42284715
		 -0.77682143 0.46663558 0.0071081631 -0.96934664 0.24559426 -0.62685585 -0.77377427
		 -0.091242023 -0.23736061 0.19751215 0.95113033 -0.866602 0.059005883 -0.49549901
		 -0.82918751 0.22943735 -0.50971222 -0.78958249 0.60787159 0.083974294 -0.88160151
		 0.46046224 0.10369798 -0.866602 0.059005883 -0.49549901 -0.88160151 0.46046224 0.10369798
		 -0.88359571 0.46758986 0.02486591 -0.92823577 0.12440369 -0.35057387 0.96653748 0.057290774
		 0.2500461 0.92641568 0.036055986 0.37477192 0.9104479 -0.33232617 -0.24625999 0.91134101
		 -0.28657919 -0.29551643 0.93341357 -0.15884335 -0.32172644 0.93004113 -0.25470018
		 -0.2648609 0.94317114 0.11497727 0.31178266 0.94453341 0.21454114 0.24865389 -0.88342136
		 0.23284322 0.40663341 -0.29976067 0.51845944 0.80083913 -0.22675157 0.4732787 0.85122913
		 -0.83134437 0.23995724 0.50128543 -0.22675157 0.4732787 0.85122913 -0.29976067 0.51845944
		 0.80083913 0.4779104 0.45052782 0.75407314 0.44455793 0.38272139 0.80987197 0.44455793
		 0.38272139 0.80987197 0.4779104 0.45052782 0.75407314 0.94317114 0.11497727 0.31178266
		 0.92641568 0.036055986 0.37477192 0.94317114 0.11497727 0.31178266 0.93004113 -0.25470018
		 -0.2648609 0.9104479 -0.33232617 -0.24625999 0.92641568 0.036055986 0.37477192 -0.33434561
		 0.41705948 0.84514755 -0.38042149 0.13187206 0.91536289 0.44944376 0.16141045 0.87860513
		 0.38239059 0.40322077 0.83137864 -0.38042149 0.13187206 0.91536289 0.10888465 -0.27464074
		 0.95536202 0.480414 -0.19805345 0.85438704 0.44944376 0.16141045 0.87860513 0.89574224
		 -0.08269798 0.43681449 0.92701524 0.11090194 0.35825056 0.38239059 0.40322077 0.83137864
		 0.44944376 0.16141045 0.87860513 0.89574224 -0.08269798 0.43681449 0.44944376 0.16141045
		 0.87860513 0.480414 -0.19805345 0.85438704 0.66067487 -0.48642102 0.57175457 0.66067487
		 -0.48642102 0.57175457 0.64787304 -0.73548925 0.19828291 0.87849379 -0.46566549 -0.10679089
		 0.89574224 -0.08269798 0.43681449 0.94453341 0.21454114 0.24865389 0.92701524 0.11090194
		 0.35825056 0.92423904 -0.28040147 -0.25914702 0.93341357 -0.15884335 -0.32172644
		 0.92423904 -0.28040147 -0.25914702 0.92701524 0.11090194 0.35825056 0.89574224 -0.08269798
		 0.43681449 0.87849379 -0.46566549 -0.10679089 -0.78958249 0.60787159 0.083974294
		 -0.33398214 0.66495895 0.66804606 -0.97387511 0.22698069 0.0068579861 -0.88160151
		 0.46046224 0.10369798 -0.33398214 0.66495895 0.66804606 -0.24560122 0.64212674 0.72619092
		 0.45890218 0.31679043 0.83009195 -0.23736061 0.19751215 0.95113033 -0.23736061 0.19751215
		 0.95113033 -0.62685585 -0.77377427 -0.091242023 -0.97387511 0.22698069 0.0068579861
		 -0.33398214 0.66495895 0.66804606 -0.88160151 0.46046224 0.10369798 -0.97387511 0.22698069
		 0.0068579861 -0.94019783 0.31537092 0.12872137 -0.88359571 0.46758986 0.02486591
		 -0.92823577 0.12440369 -0.35057387 -0.98207545 0.1848519 -0.036845263 -0.9954682
		 0.035112102 -0.088375546 -0.866602 0.059005883 -0.49549901 -0.83518124 0.14045596
		 -0.53173721 -0.82918751 0.22943735 -0.50971222 -0.46391657 -0.31665075 -0.82735348
		 -0.37931231 -0.34991619 -0.85655171 -0.25775066 -0.42517635 -0.86763453 -0.79374272
		 0.15029302 -0.58939332 -0.83518124 0.14045596 -0.53173721 -0.37931231 -0.34991619
		 -0.85655171 -0.48036328 -0.25751922 -0.83841217 -0.86383998 0.12430806 -0.48818842
		 -0.79374272 0.15029302 -0.58939332 -0.25775066 -0.42517635 -0.86763453 -0.52885425
		 -0.46929634 -0.70715922 -0.94850421 -0.17634623 -0.26313838 -0.86383998 0.12430806
		 -0.48818842 -0.48036328 -0.25751922 -0.83841217 -0.28591582 -0.5556283 -0.78072363
		 -0.9148584 -0.29848507 -0.27192059 -0.94850421 -0.17634623 -0.26313838 -0.52885425
		 -0.46929634 -0.70715922 -0.92850822 -0.25962022 -0.26546165 -0.9148584 -0.29848507
		 -0.27192059 -0.28591582 -0.5556283 -0.78072363 -0.33644116 -0.54561114 -0.76753885
		 -0.41485813 -0.53040433 -0.73929965 -0.9338088 -0.24900194 -0.25690293 -0.93393862
		 -0.23688072 -0.26766798 -0.41655958 -0.51050889 -0.75223583 -0.41480356 -0.56755459
		 -0.71121013 -0.93323636 -0.29064056 -0.21118219 -0.9338088 -0.24900194 -0.25690293
		 -0.41485813 -0.53040433 -0.73929965 -0.48036328 -0.25751922 -0.83841217 -0.25775066
		 -0.42517635 -0.86763453 -0.28591582 -0.5556283 -0.78072363 -0.52885425 -0.46929634
		 -0.70715922 -0.25775066 -0.42517635 -0.86763453 0.37956831 -0.67763013 -0.62987721
		 0.4281989 -0.55453831 -0.71353555 -0.28591582 -0.5556283 -0.78072363 0.84062415 -0.53286225
		 -0.096999444 0.91134101 -0.28657919 -0.29551643 0.4281989 -0.55453831 -0.71353555
		 0.37956831 -0.67763013 -0.62987721 -0.28591582 -0.5556283 -0.78072363 0.4281989 -0.55453831
		 -0.71353555 0.41208437 -0.55849284 -0.71991128 -0.33644116 -0.54561114 -0.76753885
		 0.37032694 -0.5189963 -0.77039003 -0.41485813 -0.53040433 -0.73929965 -0.41655958
		 -0.51050889 -0.75223583 0.43494782 -0.50313991 -0.74677348 0.35088724 -0.59596449
		 -0.72229111 -0.41480356 -0.56755459 -0.71121013 -0.41485813 -0.53040433 -0.73929965
		 0.37032694 -0.5189963 -0.77039003 0.4281989 -0.55453831 -0.71353555 0.91134101 -0.28657919
		 -0.29551643 0.9104479 -0.33232617 -0.24625999 0.41208437 -0.55849284 -0.71991128;
	setAttr ".n[3154:3319]" -type "float3"  0.93341357 -0.15884335 -0.32172644 0.37032694
		 -0.5189963 -0.77039003 0.43494782 -0.50313991 -0.74677348 0.93004113 -0.25470018
		 -0.2648609 0.92423904 -0.28040147 -0.25914702 0.35088724 -0.59596449 -0.72229111
		 0.37032694 -0.5189963 -0.77039003 0.93341357 -0.15884335 -0.32172644 -0.47933963
		 -0.72995907 -0.48723018 -0.64742935 -0.74629837 0.15451226 -0.93323636 -0.29064056
		 -0.21118219 -0.41480356 -0.56755459 -0.71121013 -0.25775066 -0.42517635 -0.86763453
		 -0.37931231 -0.34991619 -0.85655171 0.25211972 -0.62291586 -0.74054813 0.37956831
		 -0.67763013 -0.62987721 0.74761111 -0.64830381 -0.144152 0.84062415 -0.53286225 -0.096999444
		 0.37956831 -0.67763013 -0.62987721 0.25211972 -0.62291586 -0.74054813 0.090038612
		 -0.66345346 -0.74278027 0.50808501 -0.8341502 -0.21457654 0.74761111 -0.64830381
		 -0.144152 0.25211972 -0.62291586 -0.74054813 -0.085227795 -0.97698826 -0.19552524
		 0.48527235 -0.82636034 0.28572598 0.56430304 -0.79920834 0.2069494 0.50808501 -0.8341502
		 -0.21457654 0.50808501 -0.8341502 -0.21457654 0.090038612 -0.66345346 -0.74278027
		 -0.075580709 -0.66543061 -0.74262351 -0.085227795 -0.97698826 -0.19552524 -0.93393862
		 -0.23688072 -0.26766798 -0.92850822 -0.25962022 -0.26546165 -0.33644116 -0.54561114
		 -0.76753885 -0.41655958 -0.51050889 -0.75223583 -0.33644116 -0.54561114 -0.76753885
		 0.41208437 -0.55849284 -0.71991128 0.43494782 -0.50313991 -0.74677348 -0.41655958
		 -0.51050889 -0.75223583 0.41208437 -0.55849284 -0.71991128 0.9104479 -0.33232617
		 -0.24625999 0.93004113 -0.25470018 -0.2648609 0.43494782 -0.50313991 -0.74677348
		 0.37194544 -0.77527219 -0.51049936 -0.47933963 -0.72995907 -0.48723018 -0.41480356
		 -0.56755459 -0.71121013 0.35088724 -0.59596449 -0.72229111 0.37194544 -0.77527219
		 -0.51049936 0.4326846 -0.89821947 -0.077367835 0.0032793612 -0.99085778 -0.13487087
		 -0.47933963 -0.72995907 -0.48723018 0.87849379 -0.46566549 -0.10679089 0.37194544
		 -0.77527219 -0.51049936 0.35088724 -0.59596449 -0.72229111 0.92423904 -0.28040147
		 -0.25914702 0.87849379 -0.46566549 -0.10679089 0.64787304 -0.73548925 0.19828291
		 0.4326846 -0.89821947 -0.077367835 0.37194544 -0.77527219 -0.51049936 -0.82918751
		 0.22943735 -0.50971222 -0.866602 0.059005883 -0.49549901 -0.9954682 0.035112102 -0.088375546
		 -0.46391657 -0.31665075 -0.82735348 -0.46391657 -0.31665075 -0.82735348 0.090038612
		 -0.66345346 -0.74278027 0.25211972 -0.62291586 -0.74054813 -0.37931231 -0.34991619
		 -0.85655171 -0.46391657 -0.31665075 -0.82735348 -0.9954682 0.035112102 -0.088375546
		 -0.075580709 -0.66543061 -0.74262351 0.090038612 -0.66345346 -0.74278027 0.10888465
		 -0.27464074 0.95536202 0.055222016 -0.68746769 0.72411233 0.66067487 -0.48642102
		 0.57175457 0.480414 -0.19805345 0.85438704 0.64787304 -0.73548925 0.19828291 0.12750787
		 -0.93792766 0.32254216 0.0032793612 -0.99085778 -0.13487087 0.4326846 -0.89821947
		 -0.077367835 -0.70138168 -0.4070881 0.58510083 0.055222016 -0.68746769 0.72411233
		 0.10888465 -0.27464074 0.95536202 -0.38042149 0.13187206 0.91536289 -0.64742935 -0.74629837
		 0.15451226 -0.47933963 -0.72995907 -0.48723018 0.0032793612 -0.99085778 -0.13487087
		 0.12750787 -0.93792766 0.32254216 -0.89271289 0.43219024 -0.12757459 -0.88359571
		 0.46758986 0.02486591 -0.94019783 0.31537092 0.12872137 -0.86065692 0.48524258 -0.15430267
		 -0.88359571 0.46758986 0.02486591 -0.89271289 0.43219024 -0.12757459 -0.8996985 0.31864926
		 -0.29833758 -0.92823577 0.12440369 -0.35057387 -0.92823577 0.12440369 -0.35057387
		 -0.8996985 0.31864926 -0.29833758 -0.84146577 0.27791324 -0.46335685 -0.98207545
		 0.1848519 -0.036845263 -0.84146577 0.27791324 -0.46335685 -0.8996985 0.31864926 -0.29833758
		 -0.89271289 0.43219024 -0.12757459 -0.86065692 0.48524258 -0.15430267 -0.85895276
		 0.15372297 -0.48843563 -0.84146577 0.27791324 -0.46335685 -0.86065692 0.48524258
		 -0.15430267 -0.87585407 0.47836044 -0.063646443 0.69098592 -0.65669298 0.30214688
		 0.56430304 -0.79920834 0.2069494 0.48527235 -0.82636034 0.28572598 0.77892894 -0.56250083
		 0.27724087 0.69098592 -0.65669298 0.30214688 0.80346358 -0.56529033 0.18679684 0.57000256
		 -0.81468236 0.10672277 0.56430304 -0.79920834 0.2069494 0.76448768 -0.61972874 0.17746788
		 0.68609446 -0.71630847 0.12718701 0.46011052 -0.84017962 -0.28704795 0.49771249 -0.76275235
		 -0.41290569 0.60795581 -0.77953684 0.15070534 0.68609446 -0.71630847 0.12718701 0.77892894
		 -0.56250083 0.27724087 0.48527235 -0.82636034 0.28572598 0.077942096 -0.73521638
		 0.67333639 0.60795581 -0.77953684 0.15070534 0.48527235 -0.82636034 0.28572598 -0.085227795
		 -0.97698826 -0.19552524 -0.87585407 0.47836044 -0.063646443 -0.87553054 0.47134078
		 -0.10622707 -0.78363675 0.20944592 -0.58484691 -0.85895276 0.15372297 -0.48843563
		 -0.59821445 -0.32758087 -0.73132086 -0.78363675 0.20944592 -0.58484691 -0.87553054
		 0.47134078 -0.10622707 -0.9050355 0.36953548 -0.2106045 -0.59821445 -0.32758087 -0.73132086
		 -0.9050355 0.36953548 -0.2106045 -0.8797946 0.33771536 -0.33452922 -0.54310113 -0.38542634
		 -0.74598104 -0.43290487 -0.52604932 -0.73202837 -0.5131523 -0.39719379 -0.76086253
		 -0.85932577 0.28158754 -0.42692825 -0.84990072 0.10686328 -0.51599318 -0.39880985
		 -0.59999162 -0.69351333 -0.43290487 -0.52604932 -0.73202837 -0.84990072 0.10686328
		 -0.51599318 -0.81985718 -0.0054239687 -0.57254243 -0.39880985 -0.59999162 -0.69351333
		 -0.81985718 -0.0054239687 -0.57254243 -0.75573927 -0.015311649 -0.6546936 -0.32166538
		 -0.61210638 -0.72239679 -0.91312474 0.4036544 0.057151824 -0.82588929 0.16663699
		 -0.53864557 -0.78116012 0.12353923 -0.61198604 -0.85719734 0.49695596 0.13508327
		 -0.91323876 0.39546052 0.098009787 -0.85719734 0.49695596 0.13508327 -0.78116012
		 0.12353923 -0.61198604 -0.83203799 -0.0062999628 -0.55468285 -0.85825765 -0.16612417
		 -0.48558894 -0.9610188 0.16911848 0.21872775 -0.91323876 0.39546052 0.098009787 -0.83203799
		 -0.0062999628 -0.55468285 -0.93972379 0.078848392 0.33271936 -0.9610188 0.16911848
		 0.21872775;
	setAttr ".n[3320:3485]" -type "float3"  -0.85825765 -0.16612417 -0.48558894 -0.83393121
		 -0.22491394 -0.50395674 -0.89711857 -0.11407461 -0.42680821 -0.94169867 0.24791969
		 0.22746317 -0.92338234 0.17241824 0.34298256 -0.88037217 -0.17610513 -0.44037697
		 -0.95432442 0.17496593 0.24218142 -0.94169867 0.24791969 0.22746317 -0.89711857 -0.11407461
		 -0.42680821 -0.90511209 -0.14663741 -0.39908591 -0.96740848 0.090171114 0.23662212
		 -0.95432442 0.17496593 0.24218142 -0.90511209 -0.14663741 -0.39908591 -0.91154033
		 -0.18408164 -0.36770669 -0.85719734 0.49695596 0.13508327 -0.42847162 0.44106817
		 0.78858793 -0.9954682 0.035112102 -0.088375546 -0.91312474 0.4036544 0.057151824
		 -0.58092678 0.50100845 0.64149404 -0.42847162 0.44106817 0.78858793 -0.85719734 0.49695596
		 0.13508327 -0.91323876 0.39546052 0.098009787 -0.59315073 0.3312054 0.7338087 -0.58092678
		 0.50100845 0.64149404 -0.91323876 0.39546052 0.098009787 -0.9610188 0.16911848 0.21872775
		 -0.37682152 0.34329686 0.86032134 -0.59315073 0.3312054 0.7338087 -0.9610188 0.16911848
		 0.21872775 -0.93972379 0.078848392 0.33271936 -0.92338234 0.17241824 0.34298256 -0.4740777
		 0.37390915 0.79714632 -0.37682152 0.34329686 0.86032134 -0.93972379 0.078848392 0.33271936
		 -0.51940691 0.40309229 0.75348061 -0.49584681 0.4344219 0.75193983 -0.94169867 0.24791969
		 0.22746317 -0.95432442 0.17496593 0.24218142 -0.52723199 0.3438206 0.77705455 -0.51940691
		 0.40309229 0.75348061 -0.95432442 0.17496593 0.24218142 -0.96740848 0.090171114 0.23662212
		 -0.58092678 0.50100845 0.64149404 -0.59315073 0.3312054 0.7338087 -0.37682152 0.34329686
		 0.86032134 -0.42847162 0.44106817 0.78858793 -0.42847162 0.44106817 0.78858793 -0.37682152
		 0.34329686 0.86032134 0.27718452 0.26483318 0.9235974 0.20374143 0.10836183 0.97300935
		 0.78464252 -0.33405972 0.52224541 0.20374143 0.10836183 0.97300935 0.27718452 0.26483318
		 0.9235974 0.84596741 -0.040185627 0.53171819 0.8726964 -0.47757888 -0.10158437 0.78464252
		 -0.33405972 0.52224541 0.84596741 -0.040185627 0.53171819 0.93740886 -0.32670501
		 -0.12053388 -0.93972379 0.078848392 0.33271936 -0.83393121 -0.22491394 -0.50395674
		 -0.88037217 -0.17610513 -0.44037697 -0.92338234 0.17241824 0.34298256 -0.37682152
		 0.34329686 0.86032134 -0.4740777 0.37390915 0.79714632 0.1918548 0.29755315 0.9352293
		 0.27718452 0.26483318 0.9235974 0.20669551 0.38573381 0.89915872 0.24678022 0.37077874
		 0.89533383 -0.49584681 0.4344219 0.75193983 -0.51940691 0.40309229 0.75348061 0.19560465
		 0.33532846 0.92157131 0.20669551 0.38573381 0.89915872 -0.51940691 0.40309229 0.75348061
		 -0.52723199 0.3438206 0.77705455 0.27718452 0.26483318 0.9235974 0.1918548 0.29755315
		 0.9352293 0.79016864 0.011545192 0.61278075 0.84596741 -0.040185627 0.53171819 0.85493821
		 0.14714551 0.49742225 0.81676811 0.047404837 0.57501531 0.24678022 0.37077874 0.89533383
		 0.20669551 0.38573381 0.89915872 0.83215547 0.099363185 0.54556781 0.85493821 0.14714551
		 0.49742225 0.20669551 0.38573381 0.89915872 0.19560465 0.33532846 0.92157131 -0.82178766
		 -0.44059095 0.36130971 -0.96740848 0.090171114 0.23662212 -0.91154033 -0.18408164
		 -0.36770669 -0.67137086 -0.73612124 -0.085945837 -0.96740848 0.090171114 0.23662212
		 -0.82178766 -0.44059095 0.36130971 -0.59343916 0.026415247 0.80444527 -0.52723199
		 0.3438206 0.77705455 0.095089957 -0.97831428 0.1840082 -0.11002501 -0.78681993 0.60729641
		 -0.82178766 -0.44059095 0.36130971 -0.67137086 -0.73612124 -0.085945837 0.6263535
		 -0.76157808 0.16637333 0.54102314 -0.62496167 0.56277603 -0.11002501 -0.78681993
		 0.60729641 0.095089957 -0.97831428 0.1840082 0.61688673 -0.74960631 -0.23987742 0.60795581
		 -0.77953684 0.15070534 0.78464252 -0.33405972 0.52224541 0.8726964 -0.47757888 -0.10158437
		 0.78464252 -0.33405972 0.52224541 0.60795581 -0.77953684 0.15070534 0.077942096 -0.73521638
		 0.67333639 0.20374143 0.10836183 0.97300935 -0.77747893 0.012338074 -0.62878793 -0.82588929
		 0.16663699 -0.53864557 -0.91312474 0.4036544 0.057151824 -0.94205141 0.33247936 -0.044683993
		 -0.77747893 0.012338074 -0.62878793 -0.94205141 0.33247936 -0.044683993 -0.84117389
		 0.3449657 -0.41644341 -0.67067575 0.22528206 -0.70671213 0.84596741 -0.040185627
		 0.53171819 0.79016864 0.011545192 0.61278075 0.94862813 -0.30495986 -0.084286012
		 0.93740886 -0.32670501 -0.12053388 0.97917563 -0.17569625 -0.10171492 0.96087056
		 -0.26663861 -0.075043783 0.81676811 0.047404837 0.57501531 0.85493821 0.14714551
		 0.49742225 -0.94169867 0.24791969 0.22746317 -0.49584681 0.4344219 0.75193983 -0.4740777
		 0.37390915 0.79714632 -0.92338234 0.17241824 0.34298256 -0.4740777 0.37390915 0.79714632
		 -0.49584681 0.4344219 0.75193983 0.24678022 0.37077874 0.89533383 0.1918548 0.29755315
		 0.9352293 0.1918548 0.29755315 0.9352293 0.24678022 0.37077874 0.89533383 0.81676811
		 0.047404837 0.57501531 0.79016864 0.011545192 0.61278075 0.81676811 0.047404837 0.57501531
		 0.96087056 -0.26663861 -0.075043783 0.94862813 -0.30495986 -0.084286012 0.79016864
		 0.011545192 0.61278075 -0.52723199 0.3438206 0.77705455 -0.59343916 0.026415247 0.80444527
		 0.24337335 0.071158804 0.96731889 0.19560465 0.33532846 0.92157131 -0.59343916 0.026415247
		 0.80444527 -0.11396149 -0.41273886 0.90369213 0.28975907 -0.36271578 0.88570702 0.24337335
		 0.071158804 0.96731889 0.81748956 -0.17208461 0.54963416 0.83215547 0.099363185 0.54556781
		 0.19560465 0.33532846 0.92157131 0.24337335 0.071158804 0.96731889 0.81748956 -0.17208461
		 0.54963416 0.24337335 0.071158804 0.96731889 0.28975907 -0.36271578 0.88570702 0.54102314
		 -0.62496167 0.56277603 0.54102314 -0.62496167 0.56277603 0.6263535 -0.76157808 0.16637333
		 0.86188638 -0.50643575 -0.025974594 0.81748956 -0.17208461 0.54963416 0.85493821
		 0.14714551 0.49742225 0.83215547 0.099363185 0.54556781 0.96317351 -0.26024666 -0.067590848
		 0.97917563 -0.17569625 -0.10171492;
	setAttr ".n[3486:3651]" -type "float3"  0.96317351 -0.26024666 -0.067590848 0.83215547
		 0.099363185 0.54556781 0.81748956 -0.17208461 0.54963416 0.86188638 -0.50643575 -0.025974594
		 -0.91312474 0.4036544 0.057151824 -0.9954682 0.035112102 -0.088375546 -0.98207545
		 0.1848519 -0.036845263 -0.94205141 0.33247936 -0.044683993 0.20374143 0.10836183
		 0.97300935 0.077942096 -0.73521638 0.67333639 -0.9954682 0.035112102 -0.088375546
		 -0.42847162 0.44106817 0.78858793 -0.94205141 0.33247936 -0.044683993 -0.98207545
		 0.1848519 -0.036845263 -0.84146577 0.27791324 -0.46335685 -0.84117389 0.3449657 -0.41644341
		 -0.67067575 0.22528206 -0.70671213 -0.38843215 -0.24327092 -0.88878554 -0.36192918
		 -0.35200948 -0.86318976 -0.77747893 0.012338074 -0.62878793 -0.82588929 0.16663699
		 -0.53864557 -0.31056163 -0.32932299 -0.89168257 -0.20914418 -0.31021646 -0.92737502
		 -0.78116012 0.12353923 -0.61198604 -0.47948632 -0.25390083 -0.84001625 -0.83203799
		 -0.0062999628 -0.55468285 -0.78116012 0.12353923 -0.61198604 -0.20914418 -0.31021646
		 -0.92737502 -0.53272754 -0.39209163 -0.74997705 -0.85825765 -0.16612417 -0.48558894
		 -0.83203799 -0.0062999628 -0.55468285 -0.47948632 -0.25390083 -0.84001625 -0.20164545
		 -0.44903627 -0.87046283 -0.83393121 -0.22491394 -0.50395674 -0.85825765 -0.16612417
		 -0.48558894 -0.53272754 -0.39209163 -0.74997705 -0.88037217 -0.17610513 -0.44037697
		 -0.83393121 -0.22491394 -0.50395674 -0.20164545 -0.44903627 -0.87046283 -0.30797532
		 -0.39864111 -0.86384982 -0.36189824 -0.3848038 -0.84909111 -0.90511209 -0.14663741
		 -0.39908591 -0.89711857 -0.11407461 -0.42680821 -0.33994669 -0.34861794 -0.87344247
		 -0.35248467 -0.48386335 -0.8010186 -0.91154033 -0.18408164 -0.36770669 -0.90511209
		 -0.14663741 -0.39908591 -0.36189824 -0.3848038 -0.84909111 -0.47948632 -0.25390083
		 -0.84001625 -0.20914418 -0.31021646 -0.92737502 -0.20164545 -0.44903627 -0.87046283
		 -0.53272754 -0.39209163 -0.74997705 -0.20914418 -0.31021646 -0.92737502 0.44012973
		 -0.55294275 -0.70748866 0.4898977 -0.49702224 -0.71621865 -0.20164545 -0.44903627
		 -0.87046283 0.8726964 -0.47757888 -0.10158437 0.93740886 -0.32670501 -0.12053388
		 0.4898977 -0.49702224 -0.71621865 0.44012973 -0.55294275 -0.70748866 -0.20164545
		 -0.44903627 -0.87046283 0.4898977 -0.49702224 -0.71621865 0.48168162 -0.47558564
		 -0.73607141 -0.30797532 -0.39864111 -0.86384982 0.50445652 -0.45035678 -0.73668337
		 -0.36189824 -0.3848038 -0.84909111 -0.33994669 -0.34861794 -0.87344247 0.51849073
		 -0.44144589 -0.73232025 0.49144647 -0.5492267 -0.67589229 -0.35248467 -0.48386335
		 -0.8010186 -0.36189824 -0.3848038 -0.84909111 0.50445652 -0.45035678 -0.73668337
		 0.4898977 -0.49702224 -0.71621865 0.93740886 -0.32670501 -0.12053388 0.94862813 -0.30495986
		 -0.084286012 0.48168162 -0.47558564 -0.73607141 0.97917563 -0.17569625 -0.10171492
		 0.50445652 -0.45035678 -0.73668337 0.51849073 -0.44144589 -0.73232025 0.96087056
		 -0.26663861 -0.075043783 0.96317351 -0.26024666 -0.067590848 0.49144647 -0.5492267
		 -0.67589229 0.50445652 -0.45035678 -0.73668337 0.97917563 -0.17569625 -0.10171492
		 -0.33951825 -0.67707843 -0.65291053 -0.67137086 -0.73612124 -0.085945837 -0.91154033
		 -0.18408164 -0.36770669 -0.35248467 -0.48386335 -0.8010186 0.36933547 -0.64723879
		 -0.66683829 0.61688673 -0.74960631 -0.23987742 0.8726964 -0.47757888 -0.10158437
		 0.44012973 -0.55294275 -0.70748866 0.61688673 -0.74960631 -0.23987742 0.36933547
		 -0.64723879 -0.66683829 0.089615151 -0.7037822 -0.70474094 0.46011052 -0.84017962
		 -0.28704795 -0.89711857 -0.11407461 -0.42680821 -0.88037217 -0.17610513 -0.44037697
		 -0.30797532 -0.39864111 -0.86384982 -0.33994669 -0.34861794 -0.87344247 -0.30797532
		 -0.39864111 -0.86384982 0.48168162 -0.47558564 -0.73607141 0.51849073 -0.44144589
		 -0.73232025 -0.33994669 -0.34861794 -0.87344247 0.48168162 -0.47558564 -0.73607141
		 0.94862813 -0.30495986 -0.084286012 0.96087056 -0.26663861 -0.075043783 0.51849073
		 -0.44144589 -0.73232025 0.46731102 -0.73489898 -0.49147117 -0.33951825 -0.67707843
		 -0.65291053 -0.35248467 -0.48386335 -0.8010186 0.49144647 -0.5492267 -0.67589229
		 0.46731102 -0.73489898 -0.49147117 0.47219634 -0.8737964 -0.11623424 0.079727091
		 -0.95012003 -0.30152208 -0.33951825 -0.67707843 -0.65291053 0.86188638 -0.50643575
		 -0.025974594 0.46731102 -0.73489898 -0.49147117 0.49144647 -0.5492267 -0.67589229
		 0.96317351 -0.26024666 -0.067590848 0.86188638 -0.50643575 -0.025974594 0.6263535
		 -0.76157808 0.16637333 0.47219634 -0.8737964 -0.11623424 0.46731102 -0.73489898 -0.49147117
		 -0.82588929 0.16663699 -0.53864557 -0.77747893 0.012338074 -0.62878793 -0.36192918
		 -0.35200948 -0.86318976 -0.31056163 -0.32932299 -0.89168257 -0.20914418 -0.31021646
		 -0.92737502 -0.31056163 -0.32932299 -0.89168257 0.36933547 -0.64723879 -0.66683829
		 0.44012973 -0.55294275 -0.70748866 -0.31056163 -0.32932299 -0.89168257 -0.36192918
		 -0.35200948 -0.86318976 0.089615151 -0.7037822 -0.70474094 0.36933547 -0.64723879
		 -0.66683829 -0.11396149 -0.41273886 0.90369213 -0.11002501 -0.78681993 0.60729641
		 0.54102314 -0.62496167 0.56277603 0.28975907 -0.36271578 0.88570702 0.6263535 -0.76157808
		 0.16637333 0.095089957 -0.97831428 0.1840082 0.079727091 -0.95012003 -0.30152208
		 0.47219634 -0.8737964 -0.11623424 -0.82178766 -0.44059095 0.36130971 -0.11002501
		 -0.78681993 0.60729641 -0.11396149 -0.41273886 0.90369213 -0.59343916 0.026415247
		 0.80444527 -0.67137086 -0.73612124 -0.085945837 -0.33951825 -0.67707843 -0.65291053
		 0.079727091 -0.95012003 -0.30152208 0.095089957 -0.97831428 0.1840082 -0.085227795
		 -0.97698826 -0.19552524 -0.075580709 -0.66543061 -0.74262351 -0.9954682 0.035112102
		 -0.088375546 0.077942096 -0.73521638 0.67333639 0.46011052 -0.84017962 -0.28704795
		 0.68609446 -0.71630847 0.12718701 0.60795581 -0.77953684 0.15070534 0.61688673 -0.74960631
		 -0.23987742 0.22415878 -0.51006478 -0.83041358 0.49771249 -0.76275235 -0.41290569
		 0.46011052 -0.84017962 -0.28704795 0.089615151 -0.7037822 -0.70474094 -0.38843215
		 -0.24327092 -0.88878554 0.22415878 -0.51006478 -0.83041358;
	setAttr ".n[3652:3817]" -type "float3"  0.089615151 -0.7037822 -0.70474094 -0.36192918
		 -0.35200948 -0.86318976 -0.38843215 -0.24327092 -0.88878554 0.31006396 -0.71704268
		 -0.6242677 0.49771249 -0.76275235 -0.41290569 0.22415878 -0.51006478 -0.83041358
		 -0.41398811 -0.24658813 -0.87624663 0.27665529 -0.63282382 -0.72318453 0.31006396
		 -0.71704268 -0.6242677 -0.38843215 -0.24327092 -0.88878554 0.27665529 -0.63282382
		 -0.72318453 -0.41398811 -0.24658813 -0.87624663 -0.28243515 -0.22850995 -0.93167245
		 0.36130413 -0.51147872 -0.77964664 0.36130413 -0.51147872 -0.77964664 -0.28243515
		 -0.22850995 -0.93167245 -0.083243512 -0.37956405 -0.92141289 0.38099548 -0.71458787
		 -0.58669126 0.38099548 -0.71458787 -0.58669126 -0.083243512 -0.37956405 -0.92141289
		 -0.59821445 -0.32758087 -0.73132086 0.25069663 -0.83881289 -0.483264 -0.5131523 -0.39719379
		 -0.76086253 0.1877709 -0.85196656 -0.48876891 0.22877716 -0.83804077 -0.49532682
		 -0.54310113 -0.38542634 -0.74598104 -0.84117389 0.3449657 -0.41644341 -0.84146577
		 0.27791324 -0.46335685 -0.38843215 -0.24327092 -0.88878554 -0.67067575 0.22528206
		 -0.70671213 -0.84146577 0.27791324 -0.46335685 -0.85895276 0.15372297 -0.48843563
		 -0.41398811 -0.24658813 -0.87624663 -0.38843215 -0.24327092 -0.88878554 -0.28243515
		 -0.22850995 -0.93167245 -0.41398811 -0.24658813 -0.87624663 -0.85895276 0.15372297
		 -0.48843563 -0.78363675 0.20944592 -0.58484691 -0.78363675 0.20944592 -0.58484691
		 -0.59821445 -0.32758087 -0.73132086 -0.083243512 -0.37956405 -0.92141289 -0.28243515
		 -0.22850995 -0.93167245 -0.43290487 -0.52604932 -0.73202837 0.21904075 -0.88865745
		 -0.40287608 0.1877709 -0.85196656 -0.48876891 -0.5131523 -0.39719379 -0.76086253
		 -0.39880985 -0.59999162 -0.69351333 0.20978805 -0.92136049 -0.32723671 0.21904075
		 -0.88865745 -0.40287608 -0.43290487 -0.52604932 -0.73202837 -0.32166538 -0.61210638
		 -0.72239679 0.29175732 -0.8989917 -0.32663679 0.20978805 -0.92136049 -0.32723671
		 -0.39880985 -0.59999162 -0.69351333 0.60839796 -0.78750253 -0.098446622 0.65395361
		 -0.75649816 0.0074283471 0.81070411 -0.57722789 0.097810082 0.74148929 -0.66489923
		 -0.090014562 0.81070411 -0.57722789 0.097810082 0.68277025 -0.72515655 0.08929009
		 0.62861419 -0.76641792 -0.13209009 0.74148929 -0.66489923 -0.090014562 0.62861419
		 -0.76641792 -0.13209009 0.68277025 -0.72515655 0.08929009 0.41411552 -0.90836352
		 -0.05817239 0.43436584 -0.899441 0.048292469 0.80346358 -0.56529033 0.18679684 0.69098592
		 -0.65669298 0.30214688 0.77892894 -0.56250083 0.27724087 0.81070411 -0.57722789 0.097810082
		 0.79203606 -0.51224643 0.33208802 0.68277025 -0.72515655 0.08929009 0.81070411 -0.57722789
		 0.097810082 0.77892894 -0.56250083 0.27724087 3.1003468e-31 -0.33369347 -0.94268161
		 2.1078109e-31 -0.074899331 -0.99719107 0.0022999856 -0.094799407 -0.99549371 0.086300254
		 -0.34910104 -0.93310273 2.1078109e-31 -0.074899331 -0.99719107 7.6483322e-32 0.2070083
		 -0.9783392 -0.007000078 0.23400259 -0.97221076 0.0022999856 -0.094799407 -0.99549371
		 0.0052988166 -0.99995059 -0.0084103188 0.0061595845 -0.99994361 -0.0086532738 0.0051631127
		 -0.99995279 -0.0082326122 0.0051256358 -0.99995458 -0.0080361627 0.0052800784 -0.99995154
		 -0.008312094 0.0052988166 -0.99995059 -0.0084103188 0.0051256358 -0.99995458 -0.0080361627
		 0.0027312837 -0.99994189 -0.010427157 0.0024541453 -0.99997711 -0.0063062571 0.0020709061
		 -0.99996972 -0.0074991784 0.0028948013 -0.99994892 -0.009683379 0.0051631127 -0.99995279
		 -0.0082326122 0.0047236541 -0.99994713 -0.009130857 0.005102362 -0.9999513 -0.0084478026
		 0.0051256358 -0.99995458 -0.0080361627 0.0047236541 -0.99994713 -0.009130857 0.0035875172
		 -0.99993104 -0.011179975 0.0040315222 -0.99994415 -0.009771904 0.005102362 -0.9999513
		 -0.0084478026 0.97641623 0.1761304 0.12485767 0.95080382 0.25175917 0.18052544 0.88526213
		 0.34527177 0.31160611 0.92489171 0.14120457 0.35303903 0.0024541453 -0.99997711 -0.0063062571
		 0.0030933148 -0.99999505 -0.00058530428 0.0019481897 -0.99999142 -0.0036541685 0.0020709061
		 -0.99996972 -0.0074991784 0.95080382 0.25175917 0.18052544 0.97641623 0.1761304 0.12485767
		 0.9936769 0.01911396 0.11063869 0.97751892 0.13079089 0.16538006 0.0035875172 -0.99993104
		 -0.011179975 0.0027312837 -0.99994189 -0.010427157 0.0028948013 -0.99994892 -0.009683379
		 0.0040315222 -0.99994415 -0.009771904 0.95080382 0.25175917 0.18052544 0.53236699
		 0.78217679 0.32370484 0.434387 0.83855706 0.32883126 0.88526213 0.34527177 0.31160611
		 -0.89867032 0.40616813 0.16558705 -0.55417442 0.49530336 0.66900325 -0.3094188 0.92032397
		 0.23929863 0.57398272 0.39125851 0.71934736 -0.66766101 0.53948265 0.51301777 -0.58543015
		 0.77636701 0.23350756 0.57644552 0.70451689 0.41396433 -0.48753822 0.86710811 0.10212727
		 0.53236699 0.78217679 0.32370484 0.57644552 0.70451689 0.41396433 -0.58543015 0.77636701
		 0.23350756 0.53236699 0.78217679 0.32370484 -0.48753822 0.86710811 0.10212727 -0.3094188
		 0.92032397 0.23929863 0.434387 0.83855706 0.32883126 0.36480856 0.51017195 0.77887052
		 0.88526213 0.34527177 0.31160611 0.434387 0.83855706 0.32883126 -0.58543015 0.77636701
		 0.23350756 -0.66766101 0.53948265 0.51301777 -0.94254464 0.13443002 -0.30584019 0.57398272
		 0.39125851 0.71934736 0.57644552 0.70451689 0.41396433 0.97751892 0.13079089 0.16538006
		 0.5981366 -0.80050784 0.037681013 0.60353267 -0.79567349 0.051497828 0.55821168 -0.60529476
		 0.56746632 0.55178046 -0.60593754 0.57304281 0.31398255 -0.86529255 -0.39074773 0.48064852
		 -0.87167841 0.095675252 0.60353267 -0.79567349 0.051497828 0.45080885 -0.7853595
		 -0.42424262 0.45080885 -0.7853595 -0.42424262 0.60353267 -0.79567349 0.051497828
		 0.5981366 -0.80050784 0.037681013 0.43968263 -0.78845447 -0.43013805 0.43968263 -0.78845447
		 -0.43013805 0.5981366 -0.80050784 0.037681013 0.62402529 -0.78083962 0.029697869
		 0.47810301 -0.75249583 -0.45295426 0.55178046 -0.60593754 0.57304281 0.49585685 -0.62284672
		 0.60513461 0.62402529 -0.78083962 0.029697869 0.5981366 -0.80050784 0.037681013 0.60353267
		 -0.79567349 0.051497828;
	setAttr ".n[3818:3983]" -type "float3"  0.48064852 -0.87167841 0.095675252 0.26110694
		 -0.78453553 0.56242973 0.55821168 -0.60529476 0.56746632 0.55821168 -0.60529476 0.56746632
		 0.26110694 -0.78453553 0.56242973 -0.11591226 -0.13383104 0.98420203 0.13816568 -0.034166675
		 0.98981965 -0.40294564 0.39638895 0.82493067 -0.4167873 0.2968958 0.85915148 -0.47456229
		 0.57693011 0.66478741 0.49585685 -0.62284672 0.60513461 0.39747962 -0.60546583 0.68950784
		 0.62537003 -0.76984924 0.12745389 0.62402529 -0.78083962 0.029697869 0.56872541 -0.39922762
		 0.71914446 0.71424484 -0.25048891 0.65353626 0.71363068 -0.67302579 0.19433884 0.68904471
		 -0.69202161 0.2152289 -0.13460508 0.47001773 -0.87233299 -0.30651689 0.6277346 -0.71553946
		 2.8303257e-31 0.51368672 -0.85797781 3.9086739e-31 0.44060141 -0.89770287 4.51134e-31
		 -0.10189946 -0.99479473 0.034598812 -0.06529776 -0.99726582 -0.05720222 0.15190589
		 -0.98673832 4.4089596e-31 0.15219244 -0.98835087 4.2607274e-31 -0.17910545 -0.98382986
		 0.13899764 -0.16889714 -0.97578347 0.034598812 -0.06529776 -0.99726582 4.51134e-31
		 -0.10189946 -0.99479473 3.6981976e-31 -0.32129315 -0.94697976 0.11929494 -0.31798652
		 -0.9405601 0.13899764 -0.16889714 -0.97578347 4.2607274e-31 -0.17910545 -0.98382986
		 0.90162665 -0.41451889 -0.12346425 0.48608923 -0.5257569 -0.69806659 0.023221843
		 -0.8373394 -0.5461899 0.065855324 -0.99235016 -0.10442319 0.48608923 -0.5257569 -0.69806659
		 0.25826362 -0.11724153 -0.95893395 0 -0.21109267 -0.97746605 0.023221843 -0.8373394
		 -0.5461899 0.064407177 -0.9828552 0.17276396 0.022717681 -0.99738091 0.068667106
		 -0.28146896 -0.95564556 0.086699732 0.66030598 -0.74056137 0.12475899 1.7142713e-31
		 -0.14240129 0.98980904 -0.61050266 -0.077600345 0.78820348 -0.37801212 0.2367076
		 0.89502871 -3.7396443e-32 0.18259773 0.98318774 -1.5874734e-32 -0.83002937 0.55771971
		 -0.69428146 -0.63168311 0.3448908 -0.61050266 -0.077600345 0.78820348 1.7142713e-31
		 -0.14240129 0.98980904 -0.50511533 -0.692321 0.51531559 -0.69428146 -0.63168311 0.3448908
		 -1.5874734e-32 -0.83002937 0.55771971 -2.9111362e-31 -0.71802157 0.6960209 -0.52379495
		 -0.16909836 0.83489197 -0.50511533 -0.692321 0.51531559 -2.9111362e-31 -0.71802157
		 0.6960209 -4.355215e-31 -0.1999992 0.97979605 -0.41950935 -0.086501926 0.90362012
		 -0.52379495 -0.16909836 0.83489197 -4.355215e-31 -0.1999992 0.97979605 -4.46161e-31
		 -0.091797933 0.99577767 -3.6160665e-31 -0.54259598 0.83999377 -0.62519383 -0.095599063
		 0.77459246 -0.41950935 -0.086501926 0.90362012 -4.46161e-31 -0.091797933 0.99577767
		 -0.63370931 -0.43080634 0.64250946 -0.62519383 -0.095599063 0.77459246 -3.6160665e-31
		 -0.54259598 0.83999377 -3.8230687e-31 -0.47310364 0.88100678 -4.4127292e-31 0.28540233
		 0.95840782 -0.70289284 0.16749831 0.69129294 -0.63370931 -0.43080634 0.64250946 -3.8230687e-31
		 -0.47310364 0.88100678 -0.59520602 0.33370337 -0.7310074 -0.69828618 0.11459773 -0.706586
		 3.3873972e-31 0.17029871 -0.98539251 7.7856201e-33 0.28270227 -0.95920771 -0.69828618
		 0.11459773 -0.706586 -0.6630832 -0.24739374 -0.70648211 4.4423093e-31 -0.18980424
		 -0.98182195 3.3873972e-31 0.17029871 -0.98539251 -0.59520602 0.33370337 -0.7310074
		 7.7856201e-33 0.28270227 -0.95920771 2.8303257e-31 0.51368672 -0.85797781 -0.30651689
		 0.6277346 -0.71553946 4.4423093e-31 -0.18980424 -0.98182195 -0.6630832 -0.24739374
		 -0.70648211 -0.51749533 -0.47069579 -0.71459365 4.2811363e-31 -0.38699275 -0.92208278
		 -0.58272141 0.71192616 -0.3919144 -0.54620945 0.83091444 0.10600184 -7.1239472e-32
		 0.9961291 0.087902561 2.060553e-31 0.85591829 -0.51711106 -0.26310477 -0.017000308
		 0.96461749 -0.59488416 0.070898108 0.80067867 -4.4662282e-31 0.22399764 0.97458971
		 -4.5206198e-31 0.081497833 0.99667352 -7.1239472e-32 0.9961291 0.087902561 -0.54620945
		 0.83091444 0.10600184 -0.44392321 0.65653431 0.60983187 -3.282355e-31 0.73690087
		 0.67600083 -4.2874097e-31 0.38298172 0.92375594 -0.29870921 0.36101115 0.88342726
		 -0.29161295 0.078103475 0.95334238 -4.4647043e-31 0.22610091 0.97410387 -0.5255959
		 0.78660709 0.32403439 -0.69540644 0.62270492 -0.35867605 -0.66800362 0.65865916 -0.34632254
		 -0.45320502 0.85075408 0.26612535 -0.12621643 0.56168783 0.8176651 -0.5255959 0.78660709
		 0.32403439 -0.45320502 0.85075408 0.26612535 0.026274331 0.70194322 0.71174806 -0.69540644
		 0.62270492 -0.35867605 -0.49771592 0.12467155 -0.85833317 -0.58364099 0.097870916
		 -0.80609208 -0.66800362 0.65865916 -0.34632254 -0.49771592 0.12467155 -0.85833317
		 0.073915131 -0.47653967 -0.87604022 -0.059926622 -0.53692955 -0.84149593 -0.58364099
		 0.097870916 -0.80609208 0.073915131 -0.47653967 -0.87604022 0.5268997 -0.74955654
		 -0.40067652 0.52104437 -0.76307279 -0.38240382 -0.059926622 -0.53692955 -0.84149593
		 0.5268997 -0.74955654 -0.40067652 0.68904471 -0.69202161 0.2152289 0.71363068 -0.67302579
		 0.19433884 0.52104437 -0.76307279 -0.38240382 0.71424484 -0.25048891 0.65353626 0.56872541
		 -0.39922762 0.71914446 0.2847977 0.079814009 0.95525914 0.49249578 0.25000304 0.83363444
		 0.49249578 0.25000304 0.83363444 0.2847977 0.079814009 0.95525914 -0.12621643 0.56168783
		 0.8176651 0.026274331 0.70194322 0.71174806 0.73787379 -0.24852404 0.6275174 0.70978773
		 -0.67975223 0.18476541 0.71363068 -0.67302579 0.19433884 0.71424484 -0.25048891 0.65353626
		 -0.59532833 0.71663904 0.36333546 -0.59925628 0.71727109 0.35554758 -0.72677469 0.58908564
		 -0.35323739 -0.72136879 0.59324557 -0.35733292 -0.31309777 0.41739789 0.85308194
		 -0.32738921 0.4427706 0.83472776 -0.59925628 0.71727109 0.35554758 -0.59532833 0.71663904
		 0.36333546 -0.31309777 0.41739789 0.85308194 -0.12621643 0.56168783 0.8176651 0.2847977
		 0.079814009 0.95525914 0.029958107 -0.10209316 0.99432361 0.39747962 -0.60546583
		 0.68950784 0.49585685 -0.62284672 0.60513461 0.060939182 -0.08874689 0.99418831 0.029958107
		 -0.10209316 0.99432361 -0.36406884 0.18191236 -0.91343409 -0.49771592 0.12467155
		 -0.85833317 -0.69540644 0.62270492 -0.35867605 -0.72136879 0.59324557 -0.35733292;
	setAttr ".n[3984:4149]" -type "float3"  0.073915131 -0.47653967 -0.87604022 -0.49771592
		 0.12467155 -0.85833317 -0.36406884 0.18191236 -0.91343409 0.22080809 -0.39123678
		 -0.89340782 0.5268997 -0.74955654 -0.40067652 0.073915131 -0.47653967 -0.87604022
		 0.22080809 -0.39123678 -0.89340782 0.51863486 -0.72983956 -0.44536743 0.47810301
		 -0.75249583 -0.45295426 0.62402529 -0.78083962 0.029697869 0.62537003 -0.76984924
		 0.12745389 0.51863486 -0.72983956 -0.44536743 0.56872541 -0.39922762 0.71914446 0.68904471
		 -0.69202161 0.2152289 0.62537003 -0.76984924 0.12745389 0.39747962 -0.60546583 0.68950784
		 -0.25458962 0.73050922 0.63367218 0.12577114 0.62559909 0.76993984 0.13947964 0.59253263
		 0.79337919 -0.26933798 0.73662877 0.62035084 -0.6442076 0.68827224 0.33358341 -0.25458962
		 0.73050922 0.63367218 -0.26933798 0.73662877 0.62035084 -0.67227614 0.70000482 0.24091083
		 -0.9050355 0.36953548 -0.2106045 -0.6442076 0.68827224 0.33358341 -0.67227614 0.70000482
		 0.24091083 -0.8797946 0.33771536 -0.33452922 0.13947964 0.59253263 0.79337919 0.12577114
		 0.62559909 0.76993984 0.7105841 0.072161473 0.69990212 0.69708121 0.062035289 0.71430343
		 0.7105841 0.072161473 0.69990212 0.77446258 -0.58185381 0.24830194 0.7713173 -0.54637015
		 0.32641888 0.69708121 0.062035289 0.71430343 0.77446258 -0.58185381 0.24830194 0.70416731
		 -0.70908225 -0.036753111 0.63477916 -0.77267861 0.0048113721 0.7713173 -0.54637015
		 0.32641888 0.63477916 -0.77267861 0.0048113721 0.70416731 -0.70908225 -0.036753111
		 0.25069663 -0.83881289 -0.483264 0.22877716 -0.83804077 -0.49532682 -0.85932577 0.28158754
		 -0.42692825 -0.5131523 -0.39719379 -0.76086253 -0.54310113 -0.38542634 -0.74598104
		 -0.8797946 0.33771536 -0.33452922 0.25069663 -0.83881289 -0.483264 -0.59821445 -0.32758087
		 -0.73132086 -0.54310113 -0.38542634 -0.74598104 0.22877716 -0.83804077 -0.49532682
		 0.18571277 -0.29102764 0.93851674 -0.5527041 -0.026965298 0.83294117 -0.5709337 -0.029624287
		 0.82046151 0.29982322 -0.32588488 0.89660752 0.3462781 -0.37178048 0.86131918 -0.56431538
		 -0.085835226 0.82108492 -0.5949167 -0.19772345 0.77908891 0.32633033 -0.48081717
		 0.81383252 -0.5527041 -0.026965298 0.83294117 -0.95392299 0.070522994 0.291646 -0.96498388
		 0.10283791 0.24130988 -0.5709337 -0.029624287 0.82046151 -0.96498388 0.10283791 0.24130988
		 -0.95392299 0.070522994 0.291646 -0.9205389 0.060591687 -0.38592324 -0.90644121 0.078830749
		 -0.41490969 0.29982322 -0.32588488 0.89660752 0.3462781 -0.37178048 0.86131918 0.76565176
		 -0.45055738 0.45910287 0.69681114 -0.53718913 0.47527054 0.32633033 -0.48081717 0.81383252
		 0.31540078 -0.48824739 0.8137179 0.78834164 -0.38052818 0.48344153 0.78724629 -0.42164713
		 0.44995216 0.69681114 -0.53718913 0.47527054 0.76565176 -0.45055738 0.45910287 0.93260807
		 -0.34399024 0.1091463 0.90686637 -0.41576007 0.068825223 0.78834164 -0.38052818 0.48344153
		 0.97008216 -0.20757896 0.1259032 0.94759876 -0.30575076 0.092590973 0.78724629 -0.42164713
		 0.44995216 -0.5949167 -0.19772345 0.77908891 -0.56431538 -0.085835226 0.82108492
		 -0.96412778 0.1487034 0.21987478 -0.97405678 0.13348249 0.18274507 -0.97405678 0.13348249
		 0.18274507 -0.96412778 0.1487034 0.21987478 -0.87435818 0.25727826 -0.41146776 -0.84468126
		 0.351475 -0.40370649 0.93260807 -0.34399024 0.1091463 0.84792596 -0.17223759 -0.50135398
		 0.82299757 -0.30218834 -0.48099601 0.90686637 -0.41576007 0.068825223 0.97008216
		 -0.20757896 0.1259032 0.89358443 0.096398942 -0.43842226 0.8608461 -0.07246317 -0.50367951
		 0.94759876 -0.30575076 0.092590973 0.84792596 -0.17223759 -0.50135398 0.3932611 0.061313409
		 -0.91738015 0.36481735 -0.16695185 -0.91598874 0.82299757 -0.30218834 -0.48099601
		 0.89358443 0.096398942 -0.43842226 0.43209514 0.3750689 -0.82013237 0.4227908 0.22028978
		 -0.87904513 0.8608461 -0.07246317 -0.50367951 0.3932611 0.061313409 -0.91738015 -0.3280381
		 0.22554117 -0.91734517 -0.3578946 -0.032407094 -0.93319947 0.36481735 -0.16695185
		 -0.91598874 -0.3280381 0.22554117 -0.91734517 -0.87435818 0.25727826 -0.41146776
		 -0.90644121 0.078830749 -0.41490969 -0.3578946 -0.032407094 -0.93319947 0.43209514
		 0.3750689 -0.82013237 -0.28668019 0.50036585 -0.81697518 -0.29653949 0.384956 -0.8739984
		 0.4227908 0.22028978 -0.87904513 -0.29653949 0.384956 -0.8739984 -0.28668019 0.50036585
		 -0.81697518 -0.83358616 0.41434222 -0.36531448 -0.84468126 0.351475 -0.40370649 0.31540078
		 -0.48824739 0.8137179 -0.60047066 -0.23568346 0.76412582 -0.57493573 -0.22132933
		 0.78769422 0.3396621 -0.41684508 0.84313101 -0.57493573 -0.22132933 0.78769422 -0.60047066
		 -0.23568346 0.76412582 -0.96734607 0.15644096 0.19941875 -0.95159292 0.19342515 0.23886736
		 -0.95159292 0.19342515 0.23886736 -0.96734607 0.15644096 0.19941875 -0.83358616 0.41434222
		 -0.36531448 -0.81177026 0.45544517 -0.36551166 -0.81177026 0.45544517 -0.36551166
		 -0.83358616 0.41434222 -0.36531448 -0.28668019 0.50036585 -0.81697518 -0.27292261
		 0.55083627 -0.78872848 -0.27292261 0.55083627 -0.78872848 -0.28668019 0.50036585
		 -0.81697518 0.43209514 0.3750689 -0.82013237 0.39817408 0.45184442 -0.79830694 0.30845577
		 -0.36788291 0.87722129 0.75445467 -0.27875489 0.59421706 0.77491081 -0.28009462 0.56662178
		 0.3396621 -0.41684508 0.84313101 0.97008216 -0.20757896 0.1259032 0.78834164 -0.38052818
		 0.48344153 0.77491081 -0.28009462 0.56662178 0.97734499 -0.082926005 0.19473059 0.89358443
		 0.096398942 -0.43842226 0.97008216 -0.20757896 0.1259032 0.97734499 -0.082926005
		 0.19473059 0.89671952 0.21814051 -0.38510877 0.8979286 0.12159485 -0.42301181 0.36541149
		 0.36447895 -0.85652179 0.39817408 0.45184442 -0.79830694 0.89671952 0.21814051 -0.38510877
		 -0.52749586 0.73531413 0.42551297 -0.07912939 0.59405613 0.80052227 -0.06295345 0.6573838
		 0.75092173 -0.5321874 0.77698201 0.33626699 -0.49260965 0.83014095 0.26115462 -0.73114026
		 0.61045218 -0.30460152;
	setAttr ".n[4150:4315]" -type "float3"  -0.81502652 0.5479936 -0.18824147 -0.5321874
		 0.77698201 0.33626699 -0.73114026 0.61045218 -0.30460152 -0.66314608 0.042993903
		 -0.74725419 -0.75573927 -0.015311649 -0.6546936 -0.81502652 0.5479936 -0.18824147
		 0.48038939 0.28306112 0.83012193 -0.029495526 0.70927632 0.70431322 -0.06295345 0.6573838
		 0.75092173 0.45261461 0.2332669 0.86065471 0.45261461 0.2332669 0.86065471 0.43131766
		 0.17529024 0.88500756 0.69014931 -0.37939239 0.61624295 0.71999359 -0.30705795 0.62235409
		 0.69014931 -0.37939239 0.61624295 0.59533852 -0.78250414 0.18237151 0.65460777 -0.7297188
		 0.19748199 0.71999359 -0.30705795 0.62235409 0.59533852 -0.78250414 0.18237151 0.20978805
		 -0.92136049 -0.32723671 0.29175732 -0.8989917 -0.32663679 0.65460777 -0.7297188 0.19748199
		 -0.66314608 0.042993903 -0.74725419 -0.19366869 -0.5775705 -0.79303515 -0.32166538
		 -0.61210638 -0.72239679 -0.75573927 -0.015311649 -0.6546936 -0.19366869 -0.5775705
		 -0.79303515 0.4352175 -0.82418507 -0.36235994 0.29175732 -0.8989917 -0.32663679 -0.32166538
		 -0.61210638 -0.72239679 0.031700462 0.46940681 0.88241279 -0.010100369 0.31561154
		 0.94883472 -4.3854088e-31 0.30859762 0.95119268 -4.2446758e-31 0.4092167 0.9124372
		 -0.36296853 0.26184171 0.8942554 -0.010100369 0.31561154 0.94883472 0.031700462 0.46940681
		 0.88241279 -0.24486378 0.47585368 0.84475148 -0.54566103 0.26344305 0.79551983 -0.36296853
		 0.26184171 0.8942554 -0.24486378 0.47585368 0.84475148 -0.4082489 0.50404078 0.76110166
		 -0.53543878 0.25534123 0.80505043 -0.54566103 0.26344305 0.79551983 -0.4082489 0.50404078
		 0.76110166 -0.38610753 0.52093506 0.7612803 -0.11776043 0.91123992 0.39468253 -0.19056705
		 0.9807846 -0.04178191 -0.36629164 0.93015426 -0.025365956 -0.26085058 0.85234368
		 0.45328495 -0.55832207 0.62422949 -0.54645586 -0.55471742 0.83013701 0.056224085
		 -0.36629164 0.93015426 -0.025365956 -0.32872993 0.72517133 -0.60503155 -0.13145663
		 0.7881192 -0.60132134 -0.11089709 0.35474825 -0.92836171 -0.20667364 0.23739164 -0.94917399
		 -0.32872993 0.72517133 -0.60503155 -0.70191431 0.64479095 0.3025904 -0.40294564 0.39638895
		 0.82493067 -0.47456229 0.57693011 0.66478741 -0.69459206 0.69980007 0.16679855 -0.72877419
		 0.54872632 -0.40961882 -0.70191431 0.64479095 0.3025904 -0.69459206 0.69980007 0.16679855
		 -0.70439792 0.53678125 -0.46442381 -0.7273342 -0.61298949 0.30859163 -0.69513375
		 -0.21996875 0.6843996 -0.48408279 -0.24684057 0.8394841 -0.44095433 -0.79927808 0.40830609
		 -0.55832207 0.62422949 -0.54645586 -0.31047499 0.1207783 -0.94287747 -0.37075049
		 0.068899617 -0.92617327 -0.70439792 0.53678125 -0.46442381 -0.37075049 0.068899617
		 -0.92617327 -0.31047499 0.1207783 -0.94287747 -0.26613355 -0.33161101 -0.90510058
		 -0.1638279 -0.44406921 -0.88088757 -0.1638279 -0.44406921 -0.88088757 -0.26613355
		 -0.33161101 -0.90510058 -0.68455672 -0.65727168 -0.3152397 -0.25372469 -0.92386836
		 -0.2865153 0.26110694 -0.78453553 0.56242973 0.48064852 -0.87167841 0.095675252 -0.28696766
		 -0.95348018 0.092331544 -0.44095433 -0.79927808 0.40830609 0.48064852 -0.87167841
		 0.095675252 0.31398255 -0.86529255 -0.39074773 -0.25372469 -0.92386836 -0.2865153
		 -0.28696766 -0.95348018 0.092331544 -0.9109897 0.13055919 -0.39121875 -0.96278977
		 0.19492759 -0.18718728 -0.96275431 0.21120836 -0.16880499 -0.86692625 0.26612204
		 -0.42144737 -0.86692625 0.26612204 -0.42144737 -0.96275431 0.21120836 -0.16880499
		 -0.87893564 0.16410667 -0.44781819 -0.76117927 0.3259843 -0.56066066 -0.54597092
		 0.24928674 -0.79985738 -0.14249533 0.26389137 -0.95396876 -0.13149731 0.39509192
		 -0.90918142 -0.56944501 0.3883467 -0.72451311 -0.14249533 0.26389137 -0.95396876
		 -0.007000078 0.23400259 -0.97221076 0.071498141 0.35879064 -0.93067575 -0.13149731
		 0.39509192 -0.90918142 -0.007000078 0.23400259 -0.97221076 7.6483322e-32 0.2070083
		 -0.9783392 0 0.31718758 -0.94836283 0.071498141 0.35879064 -0.93067575 -0.54597092
		 0.24928674 -0.79985738 -0.56944501 0.3883467 -0.72451311 -0.76117927 0.3259843 -0.56066066
		 -0.87893564 0.16410667 -0.44781819 -0.11776043 0.91123992 0.39468253 -0.26085058
		 0.85234368 0.45328495 -0.22050552 0.67848957 0.70073479 -0.12180056 0.79396039 0.59564382
		 -0.48408279 -0.24684057 0.8394841 -0.69513375 -0.21996875 0.6843996 -0.53543878 0.25534123
		 0.80505043 -0.4167873 0.2968958 0.85915148 -0.4167873 0.2968958 0.85915148 -0.53543878
		 0.25534123 0.80505043 -0.38610753 0.52093506 0.7612803 -0.34430754 0.53299296 0.77289766
		 -0.34430754 0.53299296 0.77289766 -0.38610753 0.52093506 0.7612803 -0.28220338 0.66368747
		 0.69273382 -0.22050552 0.67848957 0.70073479 -0.28220338 0.66368747 0.69273382 -0.21355014
		 0.77590001 0.59361231 -0.12180056 0.79396039 0.59564382 -0.22050552 0.67848957 0.70073479
		 -0.11591226 -0.13383104 0.98420203 -0.48408279 -0.24684057 0.8394841 -0.4167873 0.2968958
		 0.85915148 -0.40294564 0.39638895 0.82493067 -0.11089709 0.35474825 -0.92836171 -0.16306761
		 0.014305179 -0.98651117 -0.27767256 -0.032995611 -0.960109 -0.20667364 0.23739164
		 -0.94917399 -0.11089709 0.35474825 -0.92836171 -0.26088765 0.40396416 -0.87678421
		 -0.29632211 0.1196974 -0.94755775 -0.16306761 0.014305179 -0.98651117 -0.26088765
		 0.40396416 -0.87678421 -0.26921371 0.44061965 -0.8563751 -0.2198386 0.14594504 -0.96455741
		 -0.29632211 0.1196974 -0.94755775 -0.26921371 0.44061965 -0.8563751 -0.13460508 0.47001773
		 -0.87233299 -0.05720222 0.15190589 -0.98673832 -0.2198386 0.14594504 -0.96455741
		 -0.05720222 0.15190589 -0.98673832 -0.13460508 0.47001773 -0.87233299 3.9086739e-31
		 0.44060141 -0.89770287 4.4089596e-31 0.15219244 -0.98835087 -0.26613355 -0.33161101
		 -0.90510058 -0.31047499 0.1207783 -0.94287747 -0.20667364 0.23739164 -0.94917399
		 -0.27767256 -0.032995611 -0.960109 -0.99689865 0.026499964 -0.074099906 -0.95218527
		 0.048199255 0.30169532 -0.95580167 -0.1089002 0.27310047 -0.98137528 -0.17519557
		 -0.078798011;
	setAttr ".n[4316:4481]" -type "float3"  -0.98816454 0.14649475 -0.045498367 -0.90818101
		 0.1475969 0.39169177 -0.95218527 0.048199255 0.30169532 -0.99689865 0.026499964 -0.074099906
		 -0.98137528 -0.17519557 -0.078798011 -0.95580167 -0.1089002 0.27310047 -0.93040913
		 -0.25791103 0.26042417 -0.95668036 -0.28245223 -0.070593253 0.22291064 -0.37908113
		 0.89811379 -0.59477949 -0.26175749 0.76007915 -0.61165935 -0.12066827 0.7818644 0.27832159
		 -0.27618712 0.91992271 0.37027872 -0.088158868 0.92472792 0.93804783 -0.11968083
		 0.32518116 0.88252479 -0.26240259 0.3902497 0.27832159 -0.27618712 0.91992271 0.9614231
		 -0.26209345 -0.083502583 0.83915627 -0.3324627 0.43044782 0.88252479 -0.26240259
		 0.3902497 0.97424936 -0.195852 -0.1117147 -0.59477949 -0.26175749 0.76007915 -0.97001088
		 -0.10392281 0.21972461 -0.9801873 -0.0048305467 0.1980139 -0.61165935 -0.12066827
		 0.7818644 -0.97001088 -0.10392281 0.21972461 -0.9166345 0.046878412 -0.39696798 -0.93209487
		 0.0625448 -0.35677347 -0.9801873 -0.0048305467 0.1980139 -0.9166345 0.046878412 -0.39696798
		 -0.40923053 0.12206911 -0.90422869 -0.43226913 0.13908102 -0.89095449 -0.93209487
		 0.0625448 -0.35677347 -0.43226913 0.13908102 -0.89095449 -0.40923053 0.12206911 -0.90422869
		 0.29243246 0.035169277 -0.95563924 0.35465392 0.079758182 -0.9315896 0.35465392 0.079758182
		 -0.9315896 0.29243246 0.035169277 -0.95563924 0.80026996 -0.13889292 -0.58333242
		 0.85189235 -0.083785012 -0.51697147 0.85189235 -0.083785012 -0.51697147 0.80026996
		 -0.13889292 -0.58333242 0.9614231 -0.26209345 -0.083502583 0.97424936 -0.195852 -0.1117147
		 -0.53147876 -0.28083152 0.79916453 -0.55936986 -0.31215551 0.76789606 0.24026057
		 -0.41030449 0.87973011 0.26720563 -0.38109946 0.88507873 -0.97378248 -0.020841137
		 0.22652458 -0.97057813 -0.10185367 0.21818312 -0.55936986 -0.31215551 0.76789606
		 -0.53147876 -0.28083152 0.79916453 -0.88381851 0.20229083 -0.42183325 -0.91017115
		 0.098829456 -0.40227008 -0.97057813 -0.10185367 0.21818312 -0.97378248 -0.020841137
		 0.22652458 -0.35712254 0.31620738 -0.87890637 -0.39791468 0.19357759 -0.89676732
		 -0.91017115 0.098829456 -0.40227008 -0.88381851 0.20229083 -0.42183325 0.32415485
		 0.23983458 -0.9150973 0.29669958 0.095955841 -0.95013779 -0.39791468 0.19357759 -0.89676732
		 -0.35712254 0.31620738 -0.87890637 0.26720563 -0.38109946 0.88507873 0.24026057 -0.41030449
		 0.87973011 0.79120588 -0.36170584 0.49311477 0.77106577 -0.32045752 0.5502404 0.77106577
		 -0.32045752 0.5502404 0.79120588 -0.36170584 0.49311477 0.95128441 -0.30771556 0.019212808
		 0.96109098 -0.25010389 0.11726962 0.96109098 -0.25010389 0.11726962 0.95128441 -0.30771556
		 0.019212808 0.81992054 -0.1302529 -0.55746257 0.85796392 0.00081280567 -0.51370925
		 0.85796392 0.00081280567 -0.51370925 0.81992054 -0.1302529 -0.55746257 0.29669958
		 0.095955841 -0.95013779 0.32415485 0.23983458 -0.9150973 -0.92984575 0.207353 0.30395985
		 -0.90818101 0.1475969 0.39169177 -0.98816454 0.14649475 -0.045498367 -0.96275431
		 0.21120836 -0.16880499 0.54789126 -0.089996673 0.83169454 0.36296853 0.26184171 0.8942554
		 0.010100369 0.31561154 0.94883472 0.091497585 0.058698453 0.99407381 -4.4619527e-31
		 0.11100225 0.99382013 0.091497585 0.058698453 0.99407381 0.010100369 0.31561154 0.94883472
		 -4.3854088e-31 0.30859762 0.95119268 0.54789126 -0.089996673 0.83169454 0.091497585
		 0.058698453 0.99407381 0.21690875 -0.2158087 0.95203847 0.71347123 -0.26368937 0.64917386
		 0.091497585 0.058698453 0.99407381 -4.4619527e-31 0.11100225 0.99382013 -3.8378113e-31
		 -0.087803334 0.99613786 0.21690875 -0.2158087 0.95203847 -4.0121183e-31 0.52202022
		 0.85293311 -4.2446758e-31 0.4092167 0.9124372 -0.031700462 0.46940681 0.88241279
		 -0.029601593 0.56473041 0.8247444 -0.006399591 0.66975719 0.74255258 -3.7424599e-31
		 0.61770672 0.78640854 -4.0121183e-31 0.52202022 0.85293311 -0.029601593 0.56473041
		 0.8247444 0.12950642 0.57932872 0.80473989 -3.5486369e-31 0.54550493 0.83810759 -3.7424599e-31
		 0.61770672 0.78640854 -0.006399591 0.66975719 0.74255258 0.24486378 0.47585368 0.84475148
		 0.17674902 0.61569524 0.76790571 -0.029601593 0.56473041 0.8247444 -0.031700462 0.46940681
		 0.88241279 0.16969468 0.74207669 0.64847964 -0.006399591 0.66975719 0.74255258 -0.029601593
		 0.56473041 0.8247444 0.17674902 0.61569524 0.76790571 0.4082489 0.50404078 0.76110166
		 0.32978642 0.65678638 0.67813903 0.17674902 0.61569524 0.76790571 0.24486378 0.47585368
		 0.84475148 0.28220338 0.66368747 0.69273382 0.32978642 0.65678638 0.67813903 0.4082489
		 0.50404078 0.76110166 0.38610753 0.52093506 0.7612803 0.28478661 0.69626731 0.65886903
		 0.12950642 0.57932872 0.80473989 -0.006399591 0.66975719 0.74255258 0.16969468 0.74207669
		 0.64847964 0.32978642 0.65678638 0.67813903 0.28038368 0.75962842 0.58681315 0.16969468
		 0.74207669 0.64847964 0.17674902 0.61569524 0.76790571 0.28478661 0.69626731 0.65886903
		 0.16969468 0.74207669 0.64847964 0.28038368 0.75962842 0.58681315 0.32280096 0.78950232
		 0.52200156 0.36296853 0.26184171 0.8942554 0.54789126 -0.089996673 0.83169454 0.71194339
		 -0.206595 0.67115951 0.54566103 0.26344305 0.79551983 0.69513375 -0.21996875 0.6843996
		 0.53543878 0.25534123 0.80505043 0.54566103 0.26344305 0.79551983 0.71194339 -0.206595
		 0.67115951 0.39409468 0.72328317 0.56705451 0.34430754 0.53299296 0.77289766 0.4167873
		 0.2968958 0.85915148 0.47456229 0.57693011 0.66478741 0.34430754 0.53299296 0.77289766
		 0.39409468 0.72328317 0.56705451 0.26085058 0.85234368 0.45328495 0.22050552 0.67848957
		 0.70073479 0.32978642 0.65678638 0.67813903 0.28220338 0.66368747 0.69273382 0.21355014
		 0.77590001 0.59361231 0.28038368 0.75962842 0.58681315 0.17457585 0.88122833 0.43927205
		 0.21355014 0.77590001 0.59361231 0.12180056 0.79396039 0.59564382 0.11776043 0.91123992
		 0.39468253 0.17457585 0.88122833 0.43927205 0.32280096 0.78950232 0.52200156;
	setAttr ".n[4482:4647]" -type "float3"  0.28038368 0.75962842 0.58681315 0.21355014
		 0.77590001 0.59361231 0.69459206 0.69980007 0.16679855 0.55471742 0.83013701 0.056224085
		 0.39409468 0.72328317 0.56705451 0.47456229 0.57693011 0.66478741 0.70439792 0.53678125
		 -0.46442381 0.55832207 0.62422949 -0.54645586 0.55471742 0.83013701 0.056224085 0.69459206
		 0.69980007 0.16679855 0.55471742 0.83013701 0.056224085 0.36629164 0.93015426 -0.025365956
		 0.26085058 0.85234368 0.45328495 0.39409468 0.72328317 0.56705451 0.32872993 0.72517133
		 -0.60503155 0.13145663 0.7881192 -0.60132134 0.19056705 0.9807846 -0.04178191 0.36629164
		 0.93015426 -0.025365956 0.3025074 -0.14840363 0.94152302 0.21690875 -0.2158087 0.95203847
		 -3.8378113e-31 -0.087803334 0.99613786 -3.3142459e-31 -0.037100427 0.99931157 -2.4193656e-31
		 -0.008299714 0.99996555 0.35619193 -0.056898709 0.93267888 0.3025074 -0.14840363
		 0.94152302 -3.3142459e-31 -0.037100427 0.99931157 -7.8165002e-32 0.093700044 0.99560046
		 0.36890846 0.09280213 0.9248212 0.37628907 0.024699282 0.92617303 -1.804795e-31 0.064401552
		 0.99792409 -2.7233609e-32 0.0275006 0.99962181 0.31370062 0.01510003 0.94940186 0.36890846
		 0.09280213 0.9248212 -7.8165002e-32 0.093700044 0.99560046 -2.7233609e-32 0.0275006
		 0.99962181 0 -0.13109599 0.99136966 0.23294565 -0.13512047 0.96305698 0.31370062
		 0.01510003 0.94940186 0.38111696 -0.32429761 0.86578339 0.23294565 -0.13512047 0.96305698
		 0 -0.13109599 0.99136966 -0.007349073 -0.36785305 0.92985493 0.75682348 -0.18490574
		 0.62691951 0.71347123 -0.26368937 0.64917386 0.21690875 -0.2158087 0.95203847 0.3025074
		 -0.14840363 0.94152302 0.54789126 -0.089996673 0.83169454 0.71347123 -0.26368937
		 0.64917386 0.86092305 -0.39040622 0.32618162 0.71194339 -0.206595 0.67115951 0.7273342
		 -0.61298949 0.30859163 0.69513375 -0.21996875 0.6843996 0.71194339 -0.206595 0.67115951
		 0.86092305 -0.39040622 0.32618162 0.68457127 0.62621522 -0.3731176 0.72877419 0.54872632
		 -0.40961882 0.70191431 0.64479095 0.3025904 0.61746722 0.70977229 0.33905387 0.59925628
		 0.71727109 0.35554758 0.72677469 0.58908564 -0.35323739 0.69951397 0.63328815 -0.33109871
		 0.60166913 0.72329247 0.33888379 0.5255959 0.78660709 0.32403439 0.69540644 0.62270492
		 -0.35867605 0.72136879 0.59324557 -0.35733292 0.59532833 0.71663904 0.36333546 0.49260965
		 0.83014095 0.26115462 0.73114026 0.61045218 -0.30460152 0.66800362 0.65865916 -0.34632254
		 0.45320502 0.85075408 0.26612535 0.029495526 0.70927632 0.70431322 0.49260965 0.83014095
		 0.26115462 0.45320502 0.85075408 0.26612535 -0.026274331 0.70194322 0.71174806 0.77101958
		 -0.064701639 0.63351601 0.75682348 -0.18490574 0.62691951 0.3025074 -0.14840363 0.94152302
		 0.35619193 -0.056898709 0.93267888 0.69817793 0.096596956 0.70937759 0.74410433 0.014600085
		 0.6679039 0.37628907 0.024699282 0.92617303 0.36890846 0.09280213 0.9248212 0.36890846
		 0.09280213 0.9248212 0.31370062 0.01510003 0.94940186 0.58782315 0.13815756 0.79710501
		 0.69817793 0.096596956 0.70937759 0.92984575 0.207353 0.30395985 0.90818101 0.1475969
		 0.39169177 0.69817793 0.096596956 0.70937759 0.58782315 0.13815756 0.79710501 0.87893564
		 0.16410667 -0.44781819 0.98816454 0.14649475 -0.045498367 0.96275431 0.21120836 -0.16880499
		 0.90818101 0.1475969 0.39169177 0.95218527 0.048199255 0.30169532 0.74410433 0.014600085
		 0.6679039 0.69817793 0.096596956 0.70937759 0.86189228 -0.040199641 -0.50549549 0.84677213
		 -0.28339067 -0.45018515 0.98137528 -0.17519557 -0.078798011 0.99689865 0.026499964
		 -0.074099906 -1.804795e-31 0.064401552 0.99792409 0.37628907 0.024699282 0.92617303
		 0.35619193 -0.056898709 0.93267888 -2.4193656e-31 -0.008299714 0.99996555 0.35619193
		 -0.056898709 0.93267888 0.37628907 0.024699282 0.92617303 0.74410433 0.014600085
		 0.6679039 0.77101958 -0.064701639 0.63351601 0.77101958 -0.064701639 0.63351601 0.74410433
		 0.014600085 0.6679039 0.95218527 0.048199255 0.30169532 0.95580167 -0.1089002 0.27310047
		 0.87893564 0.16410667 -0.44781819 0.86189228 -0.040199641 -0.50549549 0.99689865
		 0.026499964 -0.074099906 0.98816454 0.14649475 -0.045498367 0.93040913 -0.25791103
		 0.26042417 0.86092305 -0.39040622 0.32618162 0.71347123 -0.26368937 0.64917386 0.75682348
		 -0.18490574 0.62691951 0.95580167 -0.1089002 0.27310047 0.93040913 -0.25791103 0.26042417
		 0.75682348 -0.18490574 0.62691951 0.77101958 -0.064701639 0.63351601 0.84677213 -0.28339067
		 -0.45018515 0.82483321 -0.37591037 -0.42230511 0.95668036 -0.28245223 -0.070593253
		 0.98137528 -0.17519557 -0.078798011 0.11776043 0.91123992 0.39468253 0.19056705 0.9807846
		 -0.04178191 0.25900957 0.96559215 0.02336365 0.17457585 0.88122833 0.43927205 0.25892162
		 0.7735014 -0.57849383 0.25900957 0.96559215 0.02336365 0.19056705 0.9807846 -0.04178191
		 0.13145663 0.7881192 -0.60132134 0.34155121 0.49669692 0.79789406 0.61746722 0.70977229
		 0.33905387 0.70191431 0.64479095 0.3025904 0.40294564 0.39638895 0.82493067 0.61746722
		 0.70977229 0.33905387 0.34155121 0.49669692 0.79789406 0.32929656 0.49771014 0.80240166
		 0.60166913 0.72329247 0.33888379 0.12621643 0.56168783 0.8176651 0.5255959 0.78660709
		 0.32403439 0.59532833 0.71663904 0.36333546 0.31309777 0.41739789 0.85308194 0.61367744
		 0.56317931 0.55337965 0.92680442 0.09160044 0.36420172 0.61050266 -0.077600345 0.78820348
		 0.37801212 0.2367076 0.89502871 0.92372084 -0.33210748 0.1909043 0.69428146 -0.63168311
		 0.3448908 0.61050266 -0.077600345 0.78820348 0.92680442 0.09160044 0.36420172 0.79661107
		 -0.48230672 0.36440507 0.50511533 -0.692321 0.51531559 0.69428146 -0.63168311 0.3448908
		 0.82699931 -0.56079954 0.039699964 0.69428146 -0.63168311 0.3448908 0.92372084 -0.33210748
		 0.1909043 0.94029236 -0.33979726 -0.01969984 0.82699931 -0.56079954 0.039699964 0.50511533
		 -0.692321 0.51531559;
	setAttr ".n[4648:4813]" -type "float3"  0.79661107 -0.48230672 0.36440507 0.69480711
		 -0.19050196 0.69350708 0.52379495 -0.16909836 0.83489197 0.63370931 -0.43080634 0.64250946
		 0.62519383 -0.095599063 0.77459246 0.81897289 0.14999504 0.55388165 0.70289284 0.16749831
		 0.69129294 0.69480711 -0.19050196 0.69350708 0.68041742 -0.16710427 0.71351826 0.41950935
		 -0.086501926 0.90362012 0.52379495 -0.16909836 0.83489197 0.68041742 -0.16710427
		 0.71351826 0.69480711 -0.19050196 0.69350708 0.79661107 -0.48230672 0.36440507 0.86969584
		 -0.23839886 0.43219796 0.79661107 -0.48230672 0.36440507 0.82699931 -0.56079954 0.039699964
		 0.95567787 -0.22649476 0.18809564 0.86969584 -0.23839886 0.43219796 0.95567787 -0.22649476
		 0.18809564 0.82699931 -0.56079954 0.039699964 0.94029236 -0.33979726 -0.01969984
		 0.9706189 -0.22480439 0.085801668 0.96160334 -0.073200256 -0.26450092 0.88693815
		 -0.28861243 -0.36061552 0.94029236 -0.33979726 -0.01969984 0.92372084 -0.33210748
		 0.1909043 0.81372577 -0.45641446 -0.35991138 0.9706189 -0.22480439 0.085801668 0.94029236
		 -0.33979726 -0.01969984 0.88693815 -0.28861243 -0.36061552 0.92372084 -0.33210748
		 0.1909043 0.92680442 0.09160044 0.36420172 0.94858944 0.2599971 -0.180498 0.96160334
		 -0.073200256 -0.26450092 0.12950642 0.57932872 0.80473989 0.37801212 0.2367076 0.89502871
		 -3.7396443e-32 0.18259773 0.98318774 -3.5486369e-31 0.54550493 0.83810759 0.28478661
		 0.69626731 0.65886903 0.61367744 0.56317931 0.55337965 0.37801212 0.2367076 0.89502871
		 0.12950642 0.57932872 0.80473989 0.63388038 0.76387638 -0.12119626 0.94858944 0.2599971
		 -0.180498 0.92680442 0.09160044 0.36420172 0.61367744 0.56317931 0.55337965 0.39069459
		 0.91948724 0.043599397 0.63388038 0.76387638 -0.12119626 0.61367744 0.56317931 0.55337965
		 0.32280096 0.78950232 0.52200156 0.32280096 0.78950232 0.52200156 0.17457585 0.88122833
		 0.43927205 0.25900957 0.96559215 0.02336365 0.39069459 0.91948724 0.043599397 0.25900957
		 0.96559215 0.02336365 0.25892162 0.7735014 -0.57849383 0.31968322 0.75878137 -0.56749755
		 0.39069459 0.91948724 0.043599397 0.30651689 0.6277346 -0.71553946 0.63388038 0.76387638
		 -0.12119626 0.39069459 0.91948724 0.043599397 0.31968322 0.75878137 -0.56749755 0.59520602
		 0.33370337 -0.7310074 0.94858944 0.2599971 -0.180498 0.63388038 0.76387638 -0.12119626
		 0.30651689 0.6277346 -0.71553946 0.69828618 0.11459773 -0.706586 0.96160334 -0.073200256
		 -0.26450092 0.94858944 0.2599971 -0.180498 0.59520602 0.33370337 -0.7310074 0.6630832
		 -0.24739374 -0.70648211 0.88693815 -0.28861243 -0.36061552 0.96160334 -0.073200256
		 -0.26450092 0.69828618 0.11459773 -0.706586 0.30651689 0.6277346 -0.71553946 0.31968322
		 0.75878137 -0.56749755 0.26921371 0.44061965 -0.8563751 0.13460508 0.47001773 -0.87233299
		 0.31370062 0.01510003 0.94940186 0.23294565 -0.13512047 0.96305698 0.14218645 -0.047287975
		 0.98870969 0.58782315 0.13815756 0.79710501 0.14218645 -0.047287975 0.98870969 -0.085171774
		 -0.40457296 0.91053087 -0.60496116 -0.14737955 0.78249681 -0.0407135 0.074792832
		 0.99636763 0.55449206 0.24551553 0.79514819 0.58782315 0.13815756 0.79710501 0.14218645
		 -0.047287975 0.98870969 -0.0407135 0.074792832 0.99636763 0.92968494 0.26920214 0.25142828
		 0.92984575 0.207353 0.30395985 0.58782315 0.13815756 0.79710501 0.55449206 0.24551553
		 0.79514819 -0.69446731 -0.53052151 0.48606795 -0.085171774 -0.40457296 0.91053087
		 0.007798987 -0.69768286 0.71636432 0.019237887 -0.86680061 0.49828371 -0.95245165
		 -0.14349315 0.26878542 -0.60496116 -0.14737955 0.78249681 -0.085171774 -0.40457296
		 0.91053087 -0.69446731 -0.53052151 0.48606795 0.96278977 0.19492759 -0.18718728 0.96275431
		 0.21120836 -0.16880499 0.92984575 0.207353 0.30395985 0.92968494 0.26920214 0.25142828
		 0.60454983 0.053098053 -0.79479563 0.57510769 0.27306306 -0.77115995 0.86692625 0.26612204
		 -0.42144737 0.9109897 0.13055919 -0.39121875 0.12329188 0.25001767 -0.96035945 0.57510769
		 0.27306306 -0.77115995 0.60454983 0.053098053 -0.79479563 0.10499063 -0.03599219
		 -0.99382168 0.57510769 0.27306306 -0.77115995 0.56944501 0.3883467 -0.72451311 0.76117927
		 0.3259843 -0.56066066 0.86692625 0.26612204 -0.42144737 0.12329188 0.25001767 -0.96035945
		 0.13149731 0.39509192 -0.90918142 0.56944501 0.3883467 -0.72451311 0.57510769 0.27306306
		 -0.77115995 0.34155121 0.49669692 0.79789406 0.40294564 0.39638895 0.82493067 0.11591226
		 -0.13383104 0.98420203 -0.13816568 -0.034166675 0.98981965 0.44095433 -0.79927808
		 0.40830609 -0.26110694 -0.78453553 0.56242973 0.11591226 -0.13383104 0.98420203 0.48408279
		 -0.24684057 0.8394841 -0.12753503 -0.041951705 0.99094647 -0.13816568 -0.034166675
		 0.98981965 -0.55821168 -0.60529476 0.56746632 -0.55178046 -0.60593754 0.57304281
		 0.28478661 0.69626731 0.65886903 0.32280096 0.78950232 0.52200156 0.61367744 0.56317931
		 0.55337965 0.83213192 -0.53922075 -0.12960498 0.88447392 -0.20429397 0.41948763 0.9706189
		 -0.22480439 0.085801668 0.81372577 -0.45641446 -0.35991138 0.85721189 -0.042500589
		 0.51320708 0.88447392 -0.20429397 0.41948763 0.83213192 -0.53922075 -0.12960498 0.87471819
		 -0.0046000956 -0.48461008 0.82705599 0.55367053 -0.097094826 0.83080506 0.32250196
		 0.45360276 0.85721189 -0.042500589 0.51320708 0.87471819 -0.0046000956 -0.48461008
		 0.9706189 -0.22480439 0.085801668 0.88447392 -0.20429397 0.41948763 0.85721189 -0.042500589
		 0.51320708 0.93969619 -0.014599941 0.34169859 0.85721189 -0.042500589 0.51320708
		 0.83080506 0.32250196 0.45360276 0.93996543 0.10289621 0.32538801 0.93969619 -0.014599941
		 0.34169859 0.83080506 0.32250196 0.45360276 0.82705599 0.55367053 -0.097094826 0.94739574
		 0.28849873 -0.13859938 0.93996543 0.10289621 0.32538801 0.82705599 0.55367053 -0.097094826
		 0.87471819 -0.0046000956 -0.48461008 0.81915694 -0.060496822 -0.57037008 0.94739574
		 0.28849873 -0.13859938;
	setAttr ".n[4814:4979]" -type "float3"  0.87471819 -0.0046000956 -0.48461008
		 0.83213192 -0.53922075 -0.12960498 0.81372577 -0.45641446 -0.35991138 0.81915694
		 -0.060496822 -0.57037008 0.51749533 -0.47069579 -0.71459365 0.78521705 -0.42860931
		 -0.4469097 0.88693815 -0.28861243 -0.36061552 0.6630832 -0.24739374 -0.70648211 0.53450382
		 -0.13750099 -0.83390594 0.51749533 -0.47069579 -0.71459365 4.2811363e-31 -0.38699275
		 -0.92208278 4.5202201e-31 -0.052700549 -0.99861038 0.54071325 0.37070909 -0.75511849
		 0.53450382 -0.13750099 -0.83390594 4.5202201e-31 -0.052700549 -0.99861038 3.9927904e-31
		 0.4059065 -0.91391462 2.060553e-31 0.85591829 -0.51711106 0.58272141 0.71192616 -0.3919144
		 0.54071325 0.37070909 -0.75511849 3.9927904e-31 0.4059065 -0.91391462 0.88693815
		 -0.28861243 -0.36061552 0.78521705 -0.42860931 -0.4469097 0.81372577 -0.45641446
		 -0.35991138 0.51749533 -0.47069579 -0.71459365 0.53450382 -0.13750099 -0.83390594
		 0.89757615 -0.18559507 -0.39988938 0.78521705 -0.42860931 -0.4469097 0.53450382 -0.13750099
		 -0.83390594 0.54071325 0.37070909 -0.75511849 0.92855394 0.14219294 -0.34288299 0.89757615
		 -0.18559507 -0.39988938 0.78521705 -0.42860931 -0.4469097 0.89757615 -0.18559507
		 -0.39988938 0.81915694 -0.060496822 -0.57037008 0.81372577 -0.45641446 -0.35991138
		 0.89757615 -0.18559507 -0.39988938 0.92855394 0.14219294 -0.34288299 0.94739574 0.28849873
		 -0.13859938 0.81915694 -0.060496822 -0.57037008 0.54071325 0.37070909 -0.75511849
		 0.58272141 0.71192616 -0.3919144 0.92937762 0.33719185 -0.15019637 0.92855394 0.14219294
		 -0.34288299 0.99335951 0.099595949 0.057597652 0.94739574 0.28849873 -0.13859938
		 0.92855394 0.14219294 -0.34288299 0.92937762 0.33719185 -0.15019637 0.98377258 0.091397449
		 0.1543957 0.93996543 0.10289621 0.32538801 0.94739574 0.28849873 -0.13859938 0.99335951
		 0.099595949 0.057597652 0.99335951 0.099595949 0.057597652 0.92937762 0.33719185
		 -0.15019637 0.91011935 0.3942084 0.12760271 0.98377258 0.091397449 0.1543957 0.92937762
		 0.33719185 -0.15019637 0.58272141 0.71192616 -0.3919144 0.54620945 0.83091444 0.10600184
		 0.91011935 0.3942084 0.12760271 0.64210814 0.017700225 0.7664097 0.62519383 -0.095599063
		 0.77459246 0.41950935 -0.086501926 0.90362012 0.68041742 -0.16710427 0.71351826 0.62519383
		 -0.095599063 0.77459246 0.64210814 0.017700225 0.7664097 0.56071371 0.14270349 0.81561995
		 0.81897289 0.14999504 0.55388165 0.36920992 0.14010376 0.91872466 0.64570791 0.058900721
		 0.76130939 0.81897289 0.14999504 0.55388165 0.56071371 0.14270349 0.81561995 0.81897289
		 0.14999504 0.55388165 0.64570791 0.058900721 0.76130939 0.59488416 0.070898108 0.80067867
		 0.70289284 0.16749831 0.69129294 0.70289284 0.16749831 0.69129294 0.59488416 0.070898108
		 0.80067867 -4.4662282e-31 0.22399764 0.97458971 -4.4127292e-31 0.28540233 0.95840782
		 0.5739851 0.030999195 0.81827879 0.44701099 0.01380034 0.89442199 0.36920992 0.14010376
		 0.91872466 0.56071371 0.14270349 0.81561995 0.81577802 -0.10039729 0.56958461 0.86969584
		 -0.23839886 0.43219796 0.95567787 -0.22649476 0.18809564 0.98034352 -0.085503802
		 0.1778079 0.86969584 -0.23839886 0.43219796 0.81577802 -0.10039729 0.56958461 0.64210814
		 0.017700225 0.7664097 0.68041742 -0.16710427 0.71351826 0.81577802 -0.10039729 0.56958461
		 0.5739851 0.030999195 0.81827879 0.56071371 0.14270349 0.81561995 0.64210814 0.017700225
		 0.7664097 0.81577802 -0.10039729 0.56958461 0.98034352 -0.085503802 0.1778079 0.88389426
		 -0.021399861 0.46719697 0.5739851 0.030999195 0.81827879 0.88389426 -0.021399861
		 0.46719697 0.55501884 -0.17450592 0.81332761 0.44701099 0.01380034 0.89442199 0.5739851
		 0.030999195 0.81827879 0.63867712 -0.10789613 0.76187271 0.55501884 -0.17450592 0.81332761
		 0.88389426 -0.021399861 0.46719697 0.89223206 0.071902588 0.44581604 0.98034352 -0.085503802
		 0.1778079 0.95567787 -0.22649476 0.18809564 0.9706189 -0.22480439 0.085801668 0.93969619
		 -0.014599941 0.34169859 0.97966188 0.081196845 0.18349287 0.96529531 0.096699528
		 0.2425988 0.98034352 -0.085503802 0.1778079 0.93969619 -0.014599941 0.34169859 0.96529531
		 0.096699528 0.2425988 0.89223206 0.071902588 0.44581604 0.88389426 -0.021399861 0.46719697
		 0.98034352 -0.085503802 0.1778079 0.97966188 0.081196845 0.18349287 0.93969619 -0.014599941
		 0.34169859 0.93996543 0.10289621 0.32538801 0.98377258 0.091397449 0.1543957 0.44091353
		 -0.25880796 0.85942638 0.63867712 -0.10789613 0.76187271 0.89223206 0.071902588 0.44581604
		 0.54671121 0.0828017 0.83321708 0.39069873 -0.30449903 0.86869723 0.44091353 -0.25880796
		 0.85942638 0.54671121 0.0828017 0.83321708 0.29161295 0.078103475 0.95334238 0.39069873
		 -0.30449903 0.86869723 0.29161295 0.078103475 0.95334238 0.26310477 -0.017000308
		 0.96461749 0.59488416 0.070898108 0.80067867 0.387209 -0.28780672 0.87592036 0.34040177
		 -0.32370168 0.88280451 0.44091353 -0.25880796 0.85942638 0.39069873 -0.30449903 0.86869723
		 0.39069873 -0.30449903 0.86869723 0.59488416 0.070898108 0.80067867 0.64570791 0.058900721
		 0.76130939 0.387209 -0.28780672 0.87592036 0.34040177 -0.32370168 0.88280451 0.55501884
		 -0.17450592 0.81332761 0.63867712 -0.10789613 0.76187271 0.44091353 -0.25880796 0.85942638
		 0.36920992 0.14010376 0.91872466 0.44701099 0.01380034 0.89442199 0.34040177 -0.32370168
		 0.88280451 0.387209 -0.28780672 0.87592036 0.98377258 0.091397449 0.1543957 0.91011935
		 0.3942084 0.12760271 0.84928823 0.37089485 0.37569478 0.97966188 0.081196845 0.18349287
		 0.91011935 0.3942084 0.12760271 0.54620945 0.83091444 0.10600184 0.44392321 0.65653431
		 0.60983187 0.84928823 0.37089485 0.37569478 0.89223206 0.071902588 0.44581604 0.96529531
		 0.096699528 0.2425988 0.71442598 0.24010874 0.65722394 0.54671121 0.0828017 0.83321708
		 0.84928823 0.37089485 0.37569478 0.71442598 0.24010874 0.65722394 0.96529531 0.096699528
		 0.2425988;
	setAttr ".n[4980:5145]" -type "float3"  0.97966188 0.081196845 0.18349287 0.29870921
		 0.36101115 0.88342726 0.29161295 0.078103475 0.95334238 0.54671121 0.0828017 0.83321708
		 0.71442598 0.24010874 0.65722394 0.71442598 0.24010874 0.65722394 0.84928823 0.37089485
		 0.37569478 0.44392321 0.65653431 0.60983187 0.29870921 0.36101115 0.88342726 0.26310477
		 -0.017000308 0.96461749 0.29161295 0.078103475 0.95334238 -4.4647043e-31 0.22610091
		 0.97410387 -4.5206198e-31 0.081497833 0.99667352 0.29870921 0.36101115 0.88342726
		 0.44392321 0.65653431 0.60983187 -3.282355e-31 0.73690087 0.67600083 -4.2874097e-31
		 0.38298172 0.92375594 0.64570791 0.058900721 0.76130939 0.36920992 0.14010376 0.91872466
		 0.387209 -0.28780672 0.87592036 0.44701099 0.01380034 0.89442199 0.55501884 -0.17450592
		 0.81332761 0.34040177 -0.32370168 0.88280451 0.61746722 0.70977229 0.33905387 0.60166913
		 0.72329247 0.33888379 0.69951397 0.63328815 -0.33109871 0.68457127 0.62621522 -0.3731176
		 0.59925628 0.71727109 0.35554758 0.60166913 0.72329247 0.33888379 0.32929656 0.49771014
		 0.80240166 0.32738921 0.4427706 0.83472776 -0.12753503 -0.041951705 0.99094647 0.32929656
		 0.49771014 0.80240166 0.34155121 0.49669692 0.79789406 -0.13816568 -0.034166675 0.98981965
		 -0.060939182 -0.08874689 0.99418831 0.32738921 0.4427706 0.83472776 0.32929656 0.49771014
		 0.80240166 -0.12753503 -0.041951705 0.99094647 -0.12753503 -0.041951705 0.99094647
		 -0.55178046 -0.60593754 0.57304281 -0.49585685 -0.62284672 0.60513461 -0.060939182
		 -0.08874689 0.99418831 0.32738921 0.4427706 0.83472776 -0.060939182 -0.08874689 0.99418831
		 -0.029958107 -0.10209316 0.99432361 0.31309777 0.41739789 0.85308194 -0.56872541
		 -0.39922762 0.71914446 -0.2847977 0.079814009 0.95525914 -0.029958107 -0.10209316
		 0.99432361 -0.39747962 -0.60546583 0.68950784 0.3994036 0.059373926 -0.91485053 0.72677469
		 0.58908564 -0.35323739 0.72136879 0.59324557 -0.35733292 0.36406884 0.18191236 -0.91343409
		 -0.22080809 -0.39123678 -0.89340782 -0.12638034 -0.48133311 -0.86737907 0.3994036
		 0.059373926 -0.91485053 0.36406884 0.18191236 -0.91343409 -0.51863486 -0.72983956
		 -0.44536743 -0.47810301 -0.75249583 -0.45295426 -0.12638034 -0.48133311 -0.86737907
		 -0.22080809 -0.39123678 -0.89340782 -0.51863486 -0.72983956 -0.44536743 -0.5268997
		 -0.74955654 -0.40067652 -0.68904471 -0.69202161 0.2152289 -0.62537003 -0.76984924
		 0.12745389 0.66314608 0.042993903 -0.74725419 0.58364099 0.097870916 -0.80609208
		 0.66800362 0.65865916 -0.34632254 0.73114026 0.61045218 -0.30460152 0.58364099 0.097870916
		 -0.80609208 0.66314608 0.042993903 -0.74725419 0.19366869 -0.5775705 -0.79303515
		 0.059926622 -0.53692955 -0.84149593 0.059926622 -0.53692955 -0.84149593 0.19366869
		 -0.5775705 -0.79303515 -0.4352175 -0.82418507 -0.36235994 -0.52104437 -0.76307279
		 -0.38240382 -0.52104437 -0.76307279 -0.38240382 -0.4352175 -0.82418507 -0.36235994
		 -0.70978773 -0.67975223 0.18476541 -0.71363068 -0.67302579 0.19433884 -0.73787379
		 -0.24852404 0.6275174 -0.48038939 0.28306112 0.83012193 -0.49249578 0.25000304 0.83363444
		 -0.71424484 -0.25048891 0.65353626 -0.48038939 0.28306112 0.83012193 0.029495526
		 0.70927632 0.70431322 -0.026274331 0.70194322 0.71174806 -0.49249578 0.25000304 0.83363444
		 0.44260645 0.071223065 -0.89388299 0.69951397 0.63328815 -0.33109871 0.72677469 0.58908564
		 -0.35323739 0.3994036 0.059373926 -0.91485053 0.40494138 0.11143681 -0.90752649 0.68457127
		 0.62621522 -0.3731176 0.69951397 0.63328815 -0.33109871 0.44260645 0.071223065 -0.89388299
		 0.39523652 0.061476149 -0.91651994 0.72877419 0.54872632 -0.40961882 0.68457127 0.62621522
		 -0.3731176 0.40494138 0.11143681 -0.90752649 0.39523652 0.061476149 -0.91651994 0.37075049
		 0.068899617 -0.92617327 0.70439792 0.53678125 -0.46442381 0.72877419 0.54872632 -0.40961882
		 0.31047499 0.1207783 -0.94287747 0.20667364 0.23739164 -0.94917399 0.32872993 0.72517133
		 -0.60503155 0.55832207 0.62422949 -0.54645586 0.26088765 0.40396416 -0.87678421 0.25892162
		 0.7735014 -0.57849383 0.13145663 0.7881192 -0.60132134 0.11089709 0.35474825 -0.92836171
		 0.26088765 0.40396416 -0.87678421 0.26921371 0.44061965 -0.8563751 0.31968322 0.75878137
		 -0.56749755 0.25892162 0.7735014 -0.57849383 -0.034598812 -0.06529776 -0.99726582
		 0.05720222 0.15190589 -0.98673832 0.2198386 0.14594504 -0.96455741 0.10501898 -0.013418495
		 -0.9943797 0.3994036 0.059373926 -0.91485053 -0.12638034 -0.48133311 -0.86737907
		 -0.051280037 -0.51674473 -0.8546024 0.44260645 0.071223065 -0.89388299 -0.091121458
		 -0.4866918 -0.86880833 0.40494138 0.11143681 -0.90752649 0.44260645 0.071223065 -0.89388299
		 -0.051280037 -0.51674473 -0.8546024 -0.039390717 -0.50129741 -0.86437798 0.39523652
		 0.061476149 -0.91651994 0.40494138 0.11143681 -0.90752649 -0.091121458 -0.4866918
		 -0.86880833 0.39523652 0.061476149 -0.91651994 -0.039390717 -0.50129741 -0.86437798
		 0.1638279 -0.44406921 -0.88088757 0.37075049 0.068899617 -0.92617327 -0.12638034
		 -0.48133311 -0.86737907 -0.47810301 -0.75249583 -0.45295426 -0.43968263 -0.78845447
		 -0.43013805 -0.051280037 -0.51674473 -0.8546024 -0.45080885 -0.7853595 -0.42424262
		 -0.091121458 -0.4866918 -0.86880833 -0.051280037 -0.51674473 -0.8546024 -0.43968263
		 -0.78845447 -0.43013805 -0.31398255 -0.86529255 -0.39074773 -0.039390717 -0.50129741
		 -0.86437798 -0.091121458 -0.4866918 -0.86880833 -0.45080885 -0.7853595 -0.42424262
		 -0.039390717 -0.50129741 -0.86437798 -0.31398255 -0.86529255 -0.39074773 0.25372469
		 -0.92386836 -0.2865153 0.1638279 -0.44406921 -0.88088757 0.10501898 -0.013418495
		 -0.9943797 0.2198386 0.14594504 -0.96455741 0.29632211 0.1196974 -0.94755775 0.30138397
		 -0.078364633 -0.95027715 0.27767256 -0.032995611 -0.960109 0.26613355 -0.33161101
		 -0.90510058 0.40194565 -0.28877673 -0.86893481 0.16306761 0.014305179 -0.98651117
		 0.30138397 -0.078364633 -0.95027715 0.29632211 0.1196974 -0.94755775 0.16306761 0.014305179
		 -0.98651117;
	setAttr ".n[5146:5311]" -type "float3"  0.40194565 -0.28877673 -0.86893481 0.26613355
		 -0.33161101 -0.90510058 0.68455672 -0.65727168 -0.3152397 0.70094442 -0.50371236
		 -0.5049265 0.40194565 -0.28877673 -0.86893481 0.39738688 -0.31786063 -0.86084163
		 0.30138397 -0.078364633 -0.95027715 0.40194565 -0.28877673 -0.86893481 0.70094442
		 -0.50371236 -0.5049265 0.096363172 -0.20175581 -0.97468394 0.10501898 -0.013418495
		 -0.9943797 0.30138397 -0.078364633 -0.95027715 0.39738688 -0.31786063 -0.86084163
		 -0.13899764 -0.16889714 -0.97578347 -0.034598812 -0.06529776 -0.99726582 0.10501898
		 -0.013418495 -0.9943797 0.096363172 -0.20175581 -0.97468394 0.93349767 -0.35783356
		 -0.023179172 0.86092305 -0.39040622 0.32618162 0.93040913 -0.25791103 0.26042417
		 0.95668036 -0.28245223 -0.070593253 0.82035559 -0.57184172 0.0037055847 0.7273342
		 -0.61298949 0.30859163 0.86092305 -0.39040622 0.32618162 0.93349767 -0.35783356 -0.023179172
		 0.82035559 -0.57184172 0.0037055847 0.28696766 -0.95348018 0.092331544 0.44095433
		 -0.79927808 0.40830609 0.7273342 -0.61298949 0.30859163 0.28696766 -0.95348018 0.092331544
		 0.82035559 -0.57184172 0.0037055847 0.68455672 -0.65727168 -0.3152397 0.25372469
		 -0.92386836 -0.2865153 0.70094442 -0.50371236 -0.5049265 0.68455672 -0.65727168 -0.3152397
		 0.82035559 -0.57184172 0.0037055847 0.93349767 -0.35783356 -0.023179172 0.82483321
		 -0.37591037 -0.42230511 0.70094442 -0.50371236 -0.5049265 0.93349767 -0.35783356
		 -0.023179172 0.95668036 -0.28245223 -0.070593253 -0.13899764 -0.16889714 -0.97578347
		 0.096363172 -0.20175581 -0.97468394 0.11000601 -0.35200959 -0.92950952 -0.11929494
		 -0.31798652 -0.9405601 0.096363172 -0.20175581 -0.97468394 0.39738688 -0.31786063
		 -0.86084163 0.53632134 -0.3636286 -0.76166505 0.11000601 -0.35200959 -0.92950952
		 0.39738688 -0.31786063 -0.86084163 0.70094442 -0.50371236 -0.5049265 0.82483321 -0.37591037
		 -0.42230511 0.53632134 -0.3636286 -0.76166505 0.55418038 -0.37828663 -0.74147379
		 0.53632134 -0.3636286 -0.76166505 0.82483321 -0.37591037 -0.42230511 0.84677213 -0.28339067
		 -0.45018515 0.16530159 -0.38590372 -0.90760881 0.11000601 -0.35200959 -0.92950952
		 0.53632134 -0.3636286 -0.76166505 0.55418038 -0.37828663 -0.74147379 -0.086300254
		 -0.34910104 -0.93310273 -0.11929494 -0.31798652 -0.9405601 0.11000601 -0.35200959
		 -0.92950952 0.16530159 -0.38590372 -0.90760881 3.1003468e-31 -0.33369347 -0.94268161
		 3.6981976e-31 -0.32129315 -0.94697976 -0.11929494 -0.31798652 -0.9405601 -0.086300254
		 -0.34910104 -0.93310273 0.54597092 0.24928674 -0.79985738 0.56699169 -0.088198714
		 -0.81898803 0.86189228 -0.040199641 -0.50549549 0.87893564 0.16410667 -0.44781819
		 0.54597092 0.24928674 -0.79985738 0.14249533 0.26389137 -0.95396876 0.18629929 -0.11279958
		 -0.97599632 0.56699169 -0.088198714 -0.81898803 0 -0.21109267 -0.97746605 2.98659e-32
		 0.18510358 -0.982719 -0.15696955 0.19514953 -0.96813077 -0.25826362 -0.11724153 -0.95893395
		 2.98659e-32 0.18510358 -0.982719 0 0.31718758 -0.94836283 -0.071498141 0.35879064
		 -0.93067575 -0.15696955 0.19514953 -0.96813077 0.14249533 0.26389137 -0.95396876
		 0.007000078 0.23400259 -0.97221076 -0.0022999856 -0.094799407 -0.99549371 0.18629929
		 -0.11279958 -0.97599632 -0.0049243467 -0.38056526 -0.92474097 -0.48608923 -0.5257569
		 -0.69806659 -0.25826362 -0.11724153 -0.95893395 0.10499063 -0.03599219 -0.99382168
		 0.56766808 -0.25750092 -0.78195029 -0.0049243467 -0.38056526 -0.92474097 0.10499063
		 -0.03599219 -0.99382168 0.60454983 0.053098053 -0.79479563 0.96278977 0.19492759
		 -0.18718728 0.92101997 0.15049435 -0.35926831 0.86442709 -0.029816136 -0.50187325
		 0.9109897 0.13055919 -0.39121875 0.94847041 0.25299457 0.1907815 0.92101997 0.15049435
		 -0.35926831 0.96278977 0.19492759 -0.18718728 0.92968494 0.26920214 0.25142828 0.43989646
		 -0.10449171 -0.89194876 -0.43139863 -0.34755164 -0.83252811 -0.48205665 -0.28072122
		 -0.82994998 0.42725825 -0.028740585 -0.9036727 0.39430624 -0.17870548 -0.90143603
		 -0.42749679 -0.39404696 -0.81361753 -0.43139863 -0.34755164 -0.83252811 0.43989646
		 -0.10449171 -0.89194876 0.92101997 0.15049435 -0.35926831 0.94847041 0.25299457 0.1907815
		 0.96576643 0.16949219 0.19638631 0.88915282 0.13031444 -0.43866324 0.90952533 0.0038698101
		 -0.41563049 0.88915282 0.13031444 -0.43866324 0.96576643 0.16949219 0.19638631 0.97870785
		 0.025174597 0.20370851 0.92437309 -0.010309878 -0.3813504 0.90952533 0.0038698101
		 -0.41563049 0.97870785 0.025174597 0.20370851 0.96455735 -0.0099099679 0.26368719
		 0.92968494 0.26920214 0.25142828 0.55449206 0.24551553 0.79514819 0.59669632 0.22689508
		 0.7697221 0.94847041 0.25299457 0.1907815 0.62613583 0.14661756 0.76580495 0.96576643
		 0.16949219 0.19638631 0.94847041 0.25299457 0.1907815 0.59669632 0.22689508 0.7697221
		 0.6578989 -0.036794383 0.75220692 0.97870785 0.025174597 0.20370851 0.96576643 0.16949219
		 0.19638631 0.62613583 0.14661756 0.76580495 0.6578989 -0.036794383 0.75220692 0.62052161
		 -0.085452124 0.77951962 0.96455735 -0.0099099679 0.26368719 0.97870785 0.025174597
		 0.20370851 0.55449206 0.24551553 0.79514819 -0.0407135 0.074792832 0.99636763 -0.051981173
		 0.098159924 0.99381214 0.59669632 0.22689508 0.7697221 -0.084556095 0.03471081 0.99581397
		 0.62613583 0.14661756 0.76580495 0.59669632 0.22689508 0.7697221 -0.051981173 0.098159924
		 0.99381214 -0.084556095 0.03471081 0.99581397 -0.056319334 -0.14035009 0.98849887
		 0.6578989 -0.036794383 0.75220692 0.62613583 0.14661756 0.76580495 -0.056319334 -0.14035009
		 0.98849887 -0.022699561 -0.23753205 0.97111446 0.62052161 -0.085452124 0.77951962
		 0.6578989 -0.036794383 0.75220692 0.18629929 -0.11279958 -0.97599632 -0.0022999856
		 -0.094799407 -0.99549371 -0.086300254 -0.34910104 -0.93310273 0.16530159 -0.38590372
		 -0.90760881 0.18629929 -0.11279958 -0.97599632 0.16530159 -0.38590372 -0.90760881
		 0.55418038 -0.37828663 -0.74147379 0.56699169 -0.088198714 -0.81898803 0.56699169
		 -0.088198714 -0.81898803;
	setAttr ".n[5312:5477]" -type "float3"  0.55418038 -0.37828663 -0.74147379 0.84677213
		 -0.28339067 -0.45018515 0.86189228 -0.040199641 -0.50549549 0.60454983 0.053098053
		 -0.79479563 0.9109897 0.13055919 -0.39121875 0.86442709 -0.029816136 -0.50187325
		 0.56766808 -0.25750092 -0.78195029 0.42725825 -0.028740585 -0.9036727 0.88915282
		 0.13031444 -0.43866324 0.90952533 0.0038698101 -0.41563049 0.43989646 -0.10449171
		 -0.89194876 0.90952533 0.0038698101 -0.41563049 0.92437309 -0.010309878 -0.3813504
		 0.39430624 -0.17870548 -0.90143603 0.43989646 -0.10449171 -0.89194876 0.38111696
		 -0.32429761 0.86578339 -0.007349073 -0.36785305 0.92985493 0.007798987 -0.69768286
		 0.71636432 -0.085171774 -0.40457296 0.91053087 0.23294565 -0.13512047 0.96305698
		 0.38111696 -0.32429761 0.86578339 -0.085171774 -0.40457296 0.91053087 0.14218645
		 -0.047287975 0.98870969 -0.0407135 0.074792832 0.99636763 -0.60496116 -0.14737955
		 0.78249681 -0.65803087 -0.06659621 0.75004017 -0.051981173 0.098159924 0.99381214
		 -0.65803087 -0.06659621 0.75004017 -0.60496116 -0.14737955 0.78249681 -0.95245165
		 -0.14349315 0.26878542 -0.94103158 -0.12901276 0.31275427 -0.051981173 0.098159924
		 0.99381214 -0.65803087 -0.06659621 0.75004017 -0.70901787 -0.10949208 0.69663846
		 -0.084556095 0.03471081 0.99581397 -0.65803087 -0.06659621 0.75004017 -0.94103158
		 -0.12901276 0.31275427 -0.93383557 -0.21320759 0.28721711 -0.70901787 -0.10949208
		 0.69663846 -0.72083575 -0.22018363 0.65720242 -0.056319334 -0.14035009 0.98849887
		 -0.084556095 0.03471081 0.99581397 -0.70901787 -0.10949208 0.69663846 -0.70901787
		 -0.10949208 0.69663846 -0.93383557 -0.21320759 0.28721711 -0.93442267 -0.28159222
		 0.21808267 -0.72083575 -0.22018363 0.65720242 -0.71270913 -0.32745177 0.62033945
		 -0.022699561 -0.23753205 0.97111446 -0.056319334 -0.14035009 0.98849887 -0.72083575
		 -0.22018363 0.65720242 -0.72083575 -0.22018363 0.65720242 -0.93442267 -0.28159222
		 0.21808267 -0.9423213 -0.31865546 0.10241686 -0.71270913 -0.32745177 0.62033945 -0.97907323
		 -0.10977599 -0.17136165 -0.95245165 -0.14349315 0.26878542 -0.69446731 -0.53052151
		 0.48606795 -0.90162665 -0.41451889 -0.12346425 -0.97636604 -0.12488068 -0.17639212
		 -0.94103158 -0.12901276 0.31275427 -0.95245165 -0.14349315 0.26878542 -0.97907323
		 -0.10977599 -0.17136165 -0.94776475 -0.27201936 -0.1665758 -0.93383557 -0.21320759
		 0.28721711 -0.94103158 -0.12901276 0.31275427 -0.97636604 -0.12488068 -0.17639212
		 -0.90493602 -0.3658255 -0.2173993 -0.93442267 -0.28159222 0.21808267 -0.93383557
		 -0.21320759 0.28721711 -0.94776475 -0.27201936 -0.1665758 -0.86823189 -0.36500818
		 -0.33606908 -0.9423213 -0.31865546 0.10241686 -0.93442267 -0.28159222 0.21808267
		 -0.90493602 -0.3658255 -0.2173993 -0.90162665 -0.41451889 -0.12346425 -0.48608923
		 -0.5257569 -0.69806659 -0.73050386 -0.2376918 -0.64020836 -0.97907323 -0.10977599
		 -0.17136165 -0.94776475 -0.27201936 -0.1665758 -0.48205665 -0.28072122 -0.82994998
		 -0.43139863 -0.34755164 -0.83252811 -0.90493602 -0.3658255 -0.2173993 -0.90493602
		 -0.3658255 -0.2173993 -0.43139863 -0.34755164 -0.83252811 -0.42749679 -0.39404696
		 -0.81361753 -0.86823189 -0.36500818 -0.33606908 0.58178639 -0.11843351 -0.80467266
		 -0.0041576712 -0.23725152 -0.97143936 -0.0049243467 -0.38056526 -0.92474097 0.56766808
		 -0.25750092 -0.78195029 -0.73050386 -0.2376918 -0.64020836 -0.48608923 -0.5257569
		 -0.69806659 -0.0049243467 -0.38056526 -0.92474097 -0.0041576712 -0.23725152 -0.97143936
		 0.56766808 -0.25750092 -0.78195029 0.86442709 -0.029816136 -0.50187325 0.92101997
		 0.15049435 -0.35926831 0.58178639 -0.11843351 -0.80467266 -0.0041576712 -0.23725152
		 -0.97143936 0.58178639 -0.11843351 -0.80467266 0.42725825 -0.028740585 -0.9036727
		 0.026562672 -0.038383067 -0.99891001 0.58178639 -0.11843351 -0.80467266 0.92101997
		 0.15049435 -0.35926831 0.88915282 0.13031444 -0.43866324 0.42725825 -0.028740585
		 -0.9036727 -0.25826362 -0.11724153 -0.95893395 -0.15696955 0.19514953 -0.96813077
		 0.12329188 0.25001767 -0.96035945 0.10499063 -0.03599219 -0.99382168 -0.15696955
		 0.19514953 -0.96813077 -0.071498141 0.35879064 -0.93067575 0.13149731 0.39509192
		 -0.90918142 0.12329188 0.25001767 -0.96035945 -0.66385829 -0.10508696 -0.74043828
		 -0.97636604 -0.12488068 -0.17639212 -0.97907323 -0.10977599 -0.17136165 -0.73050386
		 -0.2376918 -0.64020836 -0.66385829 -0.10508696 -0.74043828 -0.73050386 -0.2376918
		 -0.64020836 -0.0041576712 -0.23725152 -0.97143936 0.026562672 -0.038383067 -0.99891001
		 -0.66385829 -0.10508696 -0.74043828 -0.48205665 -0.28072122 -0.82994998 -0.94776475
		 -0.27201936 -0.1665758 -0.97636604 -0.12488068 -0.17639212 -0.18571277 -0.29102764
		 0.93851674 0.5527041 -0.0269653 0.83294117 0.62052161 -0.085452124 0.77951962 -0.022699561
		 -0.23753205 0.97111446 0.56431538 -0.085835226 0.82108492 0.5709337 -0.029624289
		 0.82046151 -0.29982322 -0.32588488 0.89660752 -0.3462781 -0.37178048 0.86131918 0.60047066
		 -0.23568347 0.76412582 0.5949167 -0.19772346 0.77908891 -0.32633033 -0.48081717 0.81383252
		 -0.31540078 -0.48824739 0.8137179 0.54014409 -0.22721213 0.81032032 0.57493573 -0.22132933
		 0.78769422 -0.3396621 -0.41684505 0.84313101 -0.3084558 -0.36788291 0.87722129 -0.26720563
		 -0.38109946 0.88507873 0.53147876 -0.28083152 0.79916453 0.54014409 -0.22721213 0.81032032
		 -0.3084558 -0.36788291 0.87722129 0.59477949 -0.26175749 0.76007915 0.55936986 -0.31215551
		 0.76789606 -0.24026057 -0.41030449 0.87973011 -0.22291064 -0.37908113 0.89811379
		 0.62355536 0.059094857 0.77954251 0.61165935 -0.12066827 0.7818644 -0.27832159 -0.27618712
		 0.91992271 -0.37027872 -0.088158868 0.92472792 -0.57398272 0.39125851 0.71934736
		 0.66766101 0.53948265 0.51301777 0.62355536 0.059094857 0.77954251 -0.37027872 -0.088158868
		 0.92472792 0.95392299 0.070522994 0.291646 0.96455735 -0.0099099679 0.26368719 0.62052161
		 -0.085452124 0.77951962 0.5527041 -0.0269653 0.83294117 0.96412778 0.1487034 0.21987478
		 0.96498388 0.1028379 0.24130988 0.5709337 -0.029624289 0.82046151;
	setAttr ".n[5478:5643]" -type "float3"  0.56431538 -0.085835226 0.82108492 0.96498388
		 0.1028379 0.24130988 0.96412778 0.1487034 0.21987478 0.87435818 0.25727826 -0.41146776
		 0.90644121 0.078830749 -0.41490969 -0.022699561 -0.23753205 0.97111446 -0.71270913
		 -0.32745177 0.62033945 -0.68889391 -0.4698334 0.55197984 -0.18571277 -0.29102764
		 0.93851674 -0.18571277 -0.29102764 0.93851674 -0.68889391 -0.4698334 0.55197984 -0.69681114
		 -0.53718913 0.47527054 -0.29982322 -0.32588488 0.89660752 -0.71270913 -0.32745177
		 0.62033945 -0.9423213 -0.31865546 0.10241686 -0.91921026 -0.38822007 0.065861195
		 -0.68889391 -0.4698334 0.55197984 -0.3462781 -0.37178048 0.86131918 -0.76565176 -0.45055738
		 0.45910287 -0.78724629 -0.42164713 0.44995216 -0.32633033 -0.48081717 0.81383252
		 -0.68889391 -0.4698334 0.55197984 -0.91921026 -0.38822007 0.065861195 -0.90686637
		 -0.41576007 0.068825223 -0.69681114 -0.53718913 0.47527054 -0.93260807 -0.34399024
		 0.1091463 -0.94759876 -0.30575076 0.092590973 -0.78724629 -0.42164713 0.44995216
		 -0.76565176 -0.45055738 0.45910287 0.60047066 -0.23568347 0.76412582 0.96734607 0.15644096
		 0.19941875 0.97405678 0.13348249 0.18274507 0.5949167 -0.19772346 0.77908891 0.96734607
		 0.15644096 0.19941875 0.83358616 0.41434222 -0.36531448 0.84468126 0.351475 -0.40370649
		 0.97405678 0.13348249 0.18274507 -0.9423213 -0.31865546 0.10241686 -0.86823189 -0.36500818
		 -0.33606908 -0.83930421 -0.3176856 -0.44118512 -0.91921026 -0.38822007 0.065861195
		 -0.83930421 -0.3176856 -0.44118512 -0.82299757 -0.30218834 -0.48099601 -0.90686637
		 -0.41576007 0.068825223 -0.91921026 -0.38822007 0.065861195 -0.84792596 -0.17223759
		 -0.50135392 -0.8608461 -0.07246317 -0.50367951 -0.94759876 -0.30575076 0.092590973
		 -0.93260807 -0.34399024 0.1091463 -0.86823189 -0.36500818 -0.33606908 -0.42749679
		 -0.39404696 -0.81361753 -0.39590877 -0.26858193 -0.87813437 -0.83930421 -0.3176856
		 -0.44118512 -0.39590877 -0.26858193 -0.87813437 -0.36481735 -0.16695185 -0.91598874
		 -0.82299757 -0.30218834 -0.48099601 -0.83930421 -0.3176856 -0.44118512 -0.3932611
		 0.061313409 -0.91738015 -0.4227908 0.22028978 -0.87904513 -0.8608461 -0.07246317
		 -0.50367951 -0.84792596 -0.17223759 -0.50135392 -0.42749679 -0.39404696 -0.81361753
		 0.39430624 -0.17870548 -0.90143603 0.37169552 -0.10461728 -0.92244112 -0.39590877
		 -0.26858193 -0.87813437 0.37169552 -0.10461728 -0.92244112 0.39430624 -0.17870548
		 -0.90143603 0.92437309 -0.010309878 -0.3813504 0.9205389 0.060591687 -0.38592324
		 0.37169552 -0.10461728 -0.92244112 0.3578946 -0.032407094 -0.93319947 -0.36481735
		 -0.16695185 -0.91598874 -0.39590877 -0.26858193 -0.87813437 0.37169552 -0.10461728
		 -0.92244112 0.9205389 0.060591687 -0.38592324 0.90644121 0.078830749 -0.41490969
		 0.3578946 -0.032407094 -0.93319947 0.3280381 0.22554117 -0.91734517 0.29653949 0.384956
		 -0.8739984 -0.4227908 0.22028978 -0.87904513 -0.3932611 0.061313409 -0.91738015 0.3280381
		 0.22554117 -0.91734517 0.87435818 0.25727826 -0.41146776 0.84468126 0.351475 -0.40370649
		 0.29653949 0.384956 -0.8739984 0.026562672 -0.038383067 -0.99891001 0.42725825 -0.028740585
		 -0.9036727 -0.48205665 -0.28072122 -0.82994998 -0.66385829 -0.10508696 -0.74043828
		 0.9205389 0.060591687 -0.38592324 0.92437309 -0.010309878 -0.3813504 0.96455735 -0.0099099679
		 0.26368719 0.95392299 0.070522994 0.291646 0.54014409 -0.22721213 0.81032032 0.96238643
		 0.11476199 0.24625601 0.95159292 0.19342515 0.23886736 0.57493573 -0.22132933 0.78769422
		 0.96238643 0.11476199 0.24625601 0.84964645 0.35282597 -0.39193714 0.81177026 0.45544517
		 -0.36551166 0.95159292 0.19342515 0.23886736 0.84964645 0.35282597 -0.39193714 0.32711464
		 0.46056727 -0.82515079 0.27292261 0.55083627 -0.78872848 0.81177026 0.45544517 -0.36551166
		 0.54014409 -0.22721213 0.81032032 0.53147876 -0.28083152 0.79916453 0.97378248 -0.02084114
		 0.22652456 0.96238643 0.11476199 0.24625601 0.88381851 0.20229083 -0.42183325 0.84964645
		 0.35282597 -0.39193714 0.96238643 0.11476199 0.24625601 0.97378248 -0.02084114 0.22652456
		 0.35712254 0.31620738 -0.87890637 0.32711464 0.46056727 -0.82515079 0.84964645 0.35282597
		 -0.39193714 0.88381851 0.20229083 -0.42183325 0.32711464 0.46056727 -0.82515079 -0.36541149
		 0.36447895 -0.85652179 -0.39817408 0.45184442 -0.79830694 0.27292261 0.55083627 -0.78872848
		 0.32711464 0.46056727 -0.82515079 0.35712254 0.31620738 -0.87890637 -0.32415485 0.23983458
		 -0.9150973 -0.36541149 0.36447895 -0.85652179 -0.78834164 -0.38052818 0.48344153
		 -0.77491081 -0.28009462 0.56662178 -0.3396621 -0.41684505 0.84313101 -0.31540078
		 -0.48824739 0.8137179 -0.97734499 -0.082925998 0.19473059 -0.96892941 -0.15855703
		 0.18983024 -0.75445467 -0.27875489 0.59421706 -0.77491081 -0.28009462 0.56662178
		 -0.77106577 -0.32045752 0.55024046 -0.26720563 -0.38109946 0.88507873 -0.3084558
		 -0.36788291 0.87722129 -0.75445467 -0.27875489 0.59421706 -0.75445467 -0.27875489
		 0.59421706 -0.96892941 -0.15855703 0.18983024 -0.96109098 -0.25010389 0.11726962
		 -0.77106577 -0.32045752 0.55024046 -0.83915627 -0.3324627 0.43044782 -0.22291064
		 -0.37908113 0.89811379 -0.24026057 -0.41030449 0.87973011 -0.79120588 -0.36170584
		 0.49311477 -0.79120588 -0.36170584 0.49311477 -0.95128441 -0.30771556 0.019212808
		 -0.9614231 -0.26209345 -0.083502583 -0.83915627 -0.3324627 0.43044782 -0.83915627
		 -0.3324627 0.43044782 -0.88252485 -0.26240259 0.3902497 -0.27832159 -0.27618712 0.91992271
		 -0.22291064 -0.37908113 0.89811379 -0.97424936 -0.195852 -0.1117147 -0.99363589 -0.046265922
		 -0.10269929 -0.93804783 -0.11968083 0.32518116 -0.88252485 -0.26240259 0.3902497
		 -0.89671952 0.21814053 -0.38510877 -0.8979286 0.12159485 -0.42301181 -0.96892941
		 -0.15855703 0.18983024 -0.97734499 -0.082925998 0.19473059 -0.89671952 0.21814053
		 -0.38510877 -0.89358443 0.09639895 -0.43842226 -0.43209514 0.3750689 -0.82013237
		 -0.39817408 0.45184442 -0.79830694 -0.96109098 -0.25010389 0.11726962;
	setAttr ".n[5644:5809]" -type "float3"  -0.96892941 -0.15855703 0.18983024 -0.8979286
		 0.12159485 -0.42301181 -0.85796392 0.00081280933 -0.51370925 -0.8979286 0.12159485
		 -0.42301181 -0.36541149 0.36447895 -0.85652179 -0.32415485 0.23983458 -0.9150973
		 -0.85796392 0.00081280933 -0.51370925 -0.80026996 -0.13889292 -0.58333242 -0.9614231
		 -0.26209345 -0.083502583 -0.95128441 -0.30771556 0.019212808 -0.81992054 -0.13025288
		 -0.55746257 -0.29243246 0.035169277 -0.95563924 -0.80026996 -0.13889292 -0.58333242
		 -0.81992054 -0.13025288 -0.55746257 -0.29669958 0.095955841 -0.95013779 -0.29669958
		 0.095955841 -0.95013779 0.39791468 0.19357757 -0.89676732 0.40923053 0.12206911 -0.90422869
		 -0.29243246 0.035169277 -0.95563924 0.39791468 0.19357757 -0.89676732 0.91017115
		 0.098829448 -0.40227008 0.9166345 0.046878409 -0.39696798 0.40923053 0.12206911 -0.90422869
		 0.91017115 0.098829448 -0.40227008 0.97057813 -0.10185367 0.21818312 0.97001088 -0.10392281
		 0.21972461 0.9166345 0.046878409 -0.39696798 0.97001088 -0.10392281 0.21972461 0.97057813
		 -0.10185367 0.21818312 0.55936986 -0.31215551 0.76789606 0.59477949 -0.26175749 0.76007915
		 0.62355536 0.059094857 0.77954251 0.98394263 0.12123755 0.13098985 0.9801873 -0.0048305509
		 0.19801389 0.61165935 -0.12066827 0.7818644 0.9801873 -0.0048305509 0.19801389 0.98394263
		 0.12123755 0.13098985 0.91424829 0.14551926 -0.37811938 0.93209487 0.062544793 -0.35677347
		 0.93209487 0.062544793 -0.35677347 0.91424829 0.14551926 -0.37811938 0.4338921 0.27930635
		 -0.85657787 0.43226913 0.13908102 -0.89095449 0.4338921 0.27930635 -0.85657787 -0.46574268
		 0.26672739 -0.8437655 -0.35465392 0.079758182 -0.9315896 0.43226913 0.13908102 -0.89095449
		 -0.46574268 0.26672739 -0.8437655 -0.91736758 0.074290566 -0.39104682 -0.85189235
		 -0.083785012 -0.51697147 -0.35465392 0.079758182 -0.9315896 -0.91736758 0.074290566
		 -0.39104682 -0.99363589 -0.046265922 -0.10269929 -0.97424936 -0.195852 -0.1117147
		 -0.85189235 -0.083785012 -0.51697147 -0.90747947 0.067993067 0.41455755 -0.57398272
		 0.39125851 0.71934736 -0.37027872 -0.088158868 0.92472792 -0.93804783 -0.11968083
		 0.32518116 -0.98278552 0.15997444 0.092416301 -0.90747947 0.067993067 0.41455755
		 -0.93804783 -0.11968083 0.32518116 -0.99363589 -0.046265922 -0.10269929 -0.99363589
		 -0.046265922 -0.10269929 -0.91736758 0.074290566 -0.39104682 -0.93207967 0.29559547
		 -0.20940579 -0.98278552 0.15997444 0.092416301 -0.91736758 0.074290566 -0.39104682
		 -0.46574268 0.26672739 -0.8437655 -0.50603485 0.41047788 -0.75857538 -0.93207967
		 0.29559547 -0.20940579 -0.46574268 0.26672739 -0.8437655 0.4338921 0.27930635 -0.85657787
		 0.3879154 0.3315559 -0.85999554 -0.50603485 0.41047788 -0.75857538 0.4338921 0.27930635
		 -0.85657787 0.91424829 0.14551926 -0.37811938 0.88576186 0.081562623 -0.45691741
		 0.3879154 0.3315559 -0.85999554 0.91424829 0.14551926 -0.37811938 0.98394263 0.12123755
		 0.13098985 0.98553598 0.11857747 -0.12107114 0.88576186 0.081562623 -0.45691741 0.98553598
		 0.11857747 -0.12107114 0.98394263 0.12123755 0.13098985 0.62355536 0.059094857 0.77954251
		 0.66766101 0.53948265 0.51301777 0.88576186 0.081562623 -0.45691741 0.905312 -0.094717577
		 -0.41405168 0.41777101 0.039082956 -0.90771139 0.3879154 0.3315559 -0.85999554 0.42558256
		 -0.21210563 -0.87971056 0.41777101 0.039082956 -0.90771139 0.905312 -0.094717577
		 -0.41405168 0.8889603 -0.20106742 -0.41148683 0.41777101 0.039082956 -0.90771139
		 -0.5058648 0.13702796 -0.85165966 -0.50603485 0.41047788 -0.75857538 0.3879154 0.3315559
		 -0.85999554 -0.96045655 0.14891818 -0.23525849 -0.93207967 0.29559547 -0.20940579
		 -0.50603485 0.41047788 -0.75857538 -0.5058648 0.13702796 -0.85165966 -0.9712342 0.072352819
		 0.2268682 -0.98278552 0.15997444 0.092416301 -0.93207967 0.29559547 -0.20940579 -0.96045655
		 0.14891818 -0.23525849 0.41777101 0.039082956 -0.90771139 0.42558256 -0.21210563
		 -0.87971056 -0.52209294 -0.098834127 -0.8471427 -0.5058648 0.13702796 -0.85165966
		 -0.97460449 -0.015619545 -0.22338791 -0.96045655 0.14891818 -0.23525849 -0.5058648
		 0.13702796 -0.85165966 -0.52209294 -0.098834127 -0.8471427 -0.95521432 -0.044961505
		 0.29247919 -0.9712342 0.072352819 0.2268682 -0.96045655 0.14891818 -0.23525849 -0.97460449
		 -0.015619545 -0.22338791 -0.95080382 0.25175917 0.18052545 -0.53236699 0.78217679
		 0.32370484 -0.57644552 0.70451689 0.41396433 -0.97751892 0.13079089 0.16538006 0.89867032
		 0.40616813 0.16558705 0.93277526 0.30287182 -0.19544548 0.48753822 0.86710811 0.10212727
		 0.3094188 0.92032397 0.23929863 -0.36480856 0.51017195 0.77887052 -0.42017552 0.028635249
		 0.90699095 0.61842483 -0.0054977234 0.78582472 0.55417442 0.49530336 0.66900319 -0.95091575
		 -0.026411528 0.30832064 -0.90747947 0.067993067 0.41455755 -0.98278552 0.15997444
		 0.092416301 -0.9712342 0.072352819 0.2268682 -0.95091575 -0.026411528 0.30832064
		 -0.97751892 0.13079089 0.16538006 -0.57398272 0.39125851 0.71934736 -0.90747947 0.067993067
		 0.41455755 -0.9712342 0.072352819 0.2268682 -0.95521432 -0.044961505 0.29247919 -0.94730186
		 -0.19320776 0.25551903 -0.95091575 -0.026411528 0.30832064 -0.95091575 -0.026411528
		 0.30832064 -0.94730186 -0.19320776 0.25551903 -0.9936769 0.019113965 0.11063869 -0.97751892
		 0.13079089 0.16538006 -0.36480856 0.51017195 0.77887052 -0.88526213 0.34527177 0.31160611
		 -0.92489171 0.14120457 0.35303903 -0.42017552 0.028635249 0.90699095 0.88576186 0.081562623
		 -0.45691741 0.98553598 0.11857747 -0.12107114 0.9281798 -0.11792517 -0.3529532 0.905312
		 -0.094717577 -0.41405168 0.98553598 0.11857747 -0.12107114 0.66766101 0.53948265
		 0.51301777 0.94254464 0.13443002 -0.30584019 0.9281798 -0.11792517 -0.3529532 0.91509676
		 -0.18712488 -0.3571865 0.8889603 -0.20106742 -0.41148683 0.905312 -0.094717577 -0.41405168
		 0.9281798 -0.11792517 -0.3529532 0.91509676 -0.18712488 -0.3571865 0.9281798 -0.11792517
		 -0.3529532 0.94254464 0.13443002 -0.30584019;
	setAttr ".n[5810:5975]" -type "float3"  0.90518689 -0.093410283 -0.4146218 0.48753822
		 0.86710811 0.10212727 0.93277526 0.30287182 -0.19544548 0.94254464 0.13443002 -0.30584019
		 0.58543015 0.77636701 0.23350756 0.89867032 0.40616813 0.16558705 0.55417442 0.49530336
		 0.66900319 0.61842483 -0.0054977234 0.78582472 0.98771167 -0.036354974 0.15199979
		 0.9702425 -0.09478455 -0.22281255 0.90518689 -0.093410283 -0.4146218 0.94254464 0.13443002
		 -0.30584019 0.93277526 0.30287182 -0.19544548 0.93277526 0.30287182 -0.19544548 0.89867032
		 0.40616813 0.16558705 0.98771167 -0.036354974 0.15199979 0.9702425 -0.09478455 -0.22281255
		 -0.36480856 0.51017195 0.77887052 0.55417442 0.49530336 0.66900319 0.3094188 0.92032397
		 0.23929863 -0.434387 0.83855706 0.32883126 0.64672232 0.6904825 0.32401261 0.64493662
		 0.7185747 0.26020598 0.88830924 0.23327097 -0.39558986 0.91022158 0.19056556 -0.36767033
		 0.74151653 0.62210697 0.25126904 0.64672232 0.6904825 0.32401261 0.91022158 0.19056556
		 -0.36767033 0.91884977 0.20107883 -0.33953261 0.69558614 0.68954831 0.20170036 0.89546633
		 0.26872554 -0.35486141 0.88830924 0.23327097 -0.39558986 0.64493662 0.7185747 0.26020598
		 0.98439246 0.045477826 -0.17000951 0.89546633 0.26872554 -0.35486141 0.69558614 0.68954831
		 0.20170036 0.7799111 0.4775604 0.40456739 0.71179754 0.4135907 0.56770325 0.98775029
		 -0.10259792 -0.11757132 0.98439246 0.045477826 -0.17000951 0.7799111 0.4775604 0.40456739
		 0.98626888 -0.022236681 -0.1636437 0.98850667 -0.050123535 -0.14262584 0.74754715
		 0.43730751 0.49993539 0.76172984 0.47621289 0.43930504 0.80398327 0.41032049 0.43040448
		 0.98486495 -0.058391582 -0.16319142 0.98626888 -0.022236681 -0.1636437 0.76172984
		 0.47621289 0.43930504 0.82889694 0.34454486 0.4407025 0.98863751 -0.081077009 -0.12657967
		 0.98486495 -0.058391582 -0.16319142 0.80398327 0.41032049 0.43040448 0.64672232 0.6904825
		 0.32401261 0.74151653 0.62210697 0.25126904 0.17801113 0.65154213 0.73743129 -0.0087048253
		 0.69169199 0.72214013 -0.059134368 0.68352312 0.72752953 0.64493662 0.7185747 0.26020598
		 0.64672232 0.6904825 0.32401261 -0.0087048253 0.69169199 0.72214013 0.2549538 0.77350783
		 0.58024496 0.69558614 0.68954831 0.20170036 0.64493662 0.7185747 0.26020598 -0.059134368
		 0.68352312 0.72752953 0.28291586 0.62081611 0.73112649 0.7799111 0.4775604 0.40456739
		 0.69558614 0.68954831 0.20170036 0.2549538 0.77350783 0.58024496 -0.012773701 0.58456409
		 0.81124699 0.71179754 0.4135907 0.56770325 0.7799111 0.4775604 0.40456739 0.28291586
		 0.62081611 0.73112649 0.74754715 0.43730751 0.49993539 0.71179754 0.4135907 0.56770325
		 -0.012773701 0.58456409 0.81124699 0.099787652 0.59486067 0.79761094 0.18264093 0.63648278
		 0.74935436 0.80398327 0.41032049 0.43040448 0.76172984 0.47621289 0.43930504 0.14732547
		 0.6482349 0.74705201 0.23028038 0.56376237 0.79318529 0.82889694 0.34454486 0.4407025
		 0.80398327 0.41032049 0.43040448 0.18264093 0.63648278 0.74935436 0.2549538 0.77350783
		 0.58024496 -0.059134368 0.68352312 0.72752953 -0.012773701 0.58456409 0.81124699
		 0.28291586 0.62081611 0.73112649 -0.059134368 0.68352312 0.72752953 -0.62600553 0.2534712
		 0.73747504 -0.62860626 0.33428565 0.70221597 -0.012773701 0.58456409 0.81124699 -0.8708992
		 -0.29882932 0.39017379 -0.94320172 -0.16898812 0.28603065 -0.62860626 0.33428565
		 0.70221597 -0.62600553 0.2534712 0.73747504 -0.73606741 -0.67054969 -0.092562735
		 -0.80498314 -0.55131245 -0.21921837 -0.94320172 -0.16898812 0.28603065 -0.8708992
		 -0.29882932 0.39017379 0.71179754 0.4135907 0.56770325 0.74754715 0.43730751 0.49993539
		 0.98850667 -0.050123535 -0.14262584 0.98775029 -0.10259792 -0.11757132 -0.012773701
		 0.58456409 0.81124699 -0.62860626 0.33428565 0.70221597 -0.55420816 0.37789592 0.74165219
		 0.099787652 0.59486067 0.79761094 -0.55483449 0.51444161 0.65384138 0.18264093 0.63648278
		 0.74935436 0.14732547 0.6482349 0.74705201 -0.54465562 0.46863431 0.69550854 -0.52461648
		 0.43643343 0.73096061 0.23028038 0.56376237 0.79318529 0.18264093 0.63648278 0.74935436
		 -0.55483449 0.51444161 0.65384138 -0.62860626 0.33428565 0.70221597 -0.94320172 -0.16898812
		 0.28603065 -0.94703031 -0.053733472 0.31661704 -0.55420816 0.37789592 0.74165219
		 -0.98046297 0.044670146 0.19156453 -0.55483449 0.51444161 0.65384138 -0.54465562
		 0.46863431 0.69550854 -0.94648951 -0.025994226 0.32168603 -0.97746825 -0.023394627
		 0.20978196 -0.52461648 0.43643343 0.73096061 -0.55483449 0.51444161 0.65384138 -0.98046297
		 0.044670146 0.19156453 0.75349188 -0.10039736 0.64974636 0.85990345 -0.48989126 0.14343162
		 0.98863751 -0.081077009 -0.12657967 0.82889694 0.34454486 0.4407025 0.82889694 0.34454486
		 0.4407025 0.23028038 0.56376237 0.79318529 0.23317192 0.39612409 0.88809717 0.75349188
		 -0.10039736 0.64974636 0.082374327 -0.93672532 0.3402355 0.85990345 -0.48989126 0.14343162
		 0.75349188 -0.10039736 0.64974636 0.010979624 -0.61022067 0.79215539 -0.56101233
		 -0.81236041 0.159172 0.082374327 -0.93672532 0.3402355 0.010979624 -0.61022067 0.79215539
		 -0.64302129 -0.5579201 0.52464163 -0.059134368 0.68352312 0.72752953 -0.0087048253
		 0.69169199 0.72214013 -0.57902789 0.32068914 0.74959004 -0.62600553 0.2534712 0.73747504
		 -0.85060543 -0.27955621 0.44532993 -0.8708992 -0.29882932 0.39017379 -0.62600553
		 0.2534712 0.73747504 -0.57902789 0.32068914 0.74959004 -0.6860441 -0.71345669 -0.14255907
		 -0.73606741 -0.67054969 -0.092562735 -0.8708992 -0.29882932 0.39017379 -0.85060543
		 -0.27955621 0.44532993 -0.40428168 -0.5213995 0.75146449 -0.42031303 -0.90737915
		 0.0002287145 -0.6860441 -0.71345669 -0.14255907 -0.85060543 -0.27955621 0.44532993
		 0.097549357 0.090190932 0.9911356 -0.40428168 -0.5213995 0.75146449 -0.85060543 -0.27955621
		 0.44532993 -0.57902789 0.32068914 0.74959004 -0.52346605 -0.84271938 0.12572698;
	setAttr ".n[5976:6141]" -type "float3"  -0.71099168 -0.68712229 0.14951195 -0.42031303
		 -0.90737915 0.0002287145 -0.40428168 -0.5213995 0.75146449 0.069899365 -0.70740956
		 0.70333904 -0.56233323 -0.81206858 0.15596776 -0.52346605 -0.84271938 0.12572698
		 -0.40428168 -0.5213995 0.75146449 -0.40428168 -0.5213995 0.75146449 0.097549357 0.090190932
		 0.9911356 0.72837681 -0.36703521 0.57857788 0.069899365 -0.70740956 0.70333904 0.91745585
		 0.065162748 -0.39246473 0.79266274 0.52516627 0.30965486 0.74151653 0.62210697 0.25126904
		 0.91884977 0.20107883 -0.33953261 0.91745585 0.065162748 -0.39246473 0.93695766 0.28019103
		 -0.208814 0.81267941 0.57801467 0.073832139 0.79266274 0.52516627 0.30965486 -0.94320172
		 -0.16898812 0.28603065 -0.80498314 -0.55131245 -0.21921837 -0.82326478 -0.50748551
		 -0.25434926 -0.94703031 -0.053733472 0.31661704 -0.84305418 -0.41436878 -0.34286752
		 -0.98046297 0.044670146 0.19156453 -0.94648951 -0.025994226 0.32168603 -0.81552631
		 -0.50784075 -0.27751511 0.76172984 0.47621289 0.43930504 0.74754715 0.43730751 0.49993539
		 0.099787652 0.59486067 0.79761094 0.14732547 0.6482349 0.74705201 0.099787652 0.59486067
		 0.79761094 -0.55420816 0.37789592 0.74165219 -0.54465562 0.46863431 0.69550854 0.14732547
		 0.6482349 0.74705201 -0.55420816 0.37789592 0.74165219 -0.94703031 -0.053733472 0.31661704
		 -0.94648951 -0.025994226 0.32168603 -0.54465562 0.46863431 0.69550854 -0.94648951
		 -0.025994226 0.32168603 -0.94703031 -0.053733472 0.31661704 -0.82326478 -0.50748551
		 -0.25434926 -0.81552631 -0.50784075 -0.27751511 0.23028038 0.56376237 0.79318529
		 -0.52461648 0.43643343 0.73096061 -0.5250783 0.21449703 0.82357991 0.23317192 0.39612409
		 0.88809717 0.23317192 0.39612409 0.88809717 -0.5250783 0.21449703 0.82357991 -0.55483341
		 -0.1507844 0.8181833 -0.18527898 -0.052049231 0.98130655 -0.9146508 -0.21121339 0.34467787
		 -0.5250783 0.21449703 0.82357991 -0.52461648 0.43643343 0.73096061 -0.97746825 -0.023394627
		 0.20978196 -0.9146508 -0.21121339 0.34467787 -0.64302129 -0.5579201 0.52464163 -0.55483341
		 -0.1507844 0.8181833 -0.5250783 0.21449703 0.82357991 -0.64302129 -0.5579201 0.52464163
		 -0.9146508 -0.21121339 0.34467787 -0.79003161 -0.5937705 -0.15259945 -0.56101233
		 -0.81236041 0.159172 -0.98046297 0.044670146 0.19156453 -0.84305418 -0.41436878 -0.34286752
		 -0.83183432 -0.46550167 -0.30225796 -0.97746825 -0.023394627 0.20978196 -0.83183432
		 -0.46550167 -0.30225796 -0.79003161 -0.5937705 -0.15259945 -0.9146508 -0.21121339
		 0.34467787 -0.97746825 -0.023394627 0.20978196 0.74151653 0.62210697 0.25126904 0.79266274
		 0.52516627 0.30965486 0.87763327 0.32236436 0.35474086 0.17801113 0.65154213 0.73743129
		 0.17801113 0.65154213 0.73743129 0.097549357 0.090190932 0.9911356 -0.57902789 0.32068914
		 0.74959004 -0.0087048253 0.69169199 0.72214013 0.17801113 0.65154213 0.73743129 0.87763327
		 0.32236436 0.35474086 0.72837681 -0.36703521 0.57857788 0.097549357 0.090190932 0.9911356
		 0.79266274 0.52516627 0.30965486 0.81267941 0.57801467 0.073832139 0.80727005 0.49293467
		 0.32454661 0.87763327 0.32236436 0.35474086 0.8044064 0.59242666 -0.044283494 0.81267941
		 0.57801467 0.073832139 0.93695766 0.28019103 -0.208814 0.85352832 0.51104409 -0.10160398
		 0.68389267 0.71880543 0.12493821 0.80727005 0.49293467 0.32454661 0.81267941 0.57801467
		 0.073832139 0.8044064 0.59242666 -0.044283494 0.86065692 0.48524258 -0.15430267 0.85352832
		 0.51104409 -0.10160398 0.93695766 0.28019103 -0.208814 0.94019783 0.31537092 0.12872137
		 0.93695766 0.28019103 -0.208814 0.91745585 0.065162748 -0.39246473 0.97387511 0.22698069
		 0.0068579861 0.94019783 0.31537092 0.12872137 0.91022158 0.19056556 -0.36767033 0.53044987
		 -0.36674535 -0.76427794 0.62422597 -0.3417888 -0.70251149 0.91884977 0.20107883 -0.33953261
		 0.52464771 -0.37510031 -0.76422805 0.53044987 -0.36674535 -0.76427794 0.91022158
		 0.19056556 -0.36767033 0.88830924 0.23327097 -0.39558986 0.73383766 -0.14551611 -0.66355658
		 0.52464771 -0.37510031 -0.76422805 0.88830924 0.23327097 -0.39558986 0.89546633 0.26872554
		 -0.35486141 0.75492603 -0.31059596 -0.57759577 0.73383766 -0.14551611 -0.66355658
		 0.89546633 0.26872554 -0.35486141 0.98439246 0.045477826 -0.17000951 0.58317393 -0.49429044
		 -0.64465892 0.75492603 -0.31059596 -0.57759577 0.98439246 0.045477826 -0.17000951
		 0.98775029 -0.10259792 -0.11757132 0.98850667 -0.050123535 -0.14262584 0.6147266
		 -0.48937404 -0.61856627 0.58317393 -0.49429044 -0.64465892 0.98775029 -0.10259792
		 -0.11757132 0.62599516 -0.44902405 -0.63757932 0.61515784 -0.45151195 -0.64631093
		 0.98626888 -0.022236681 -0.1636437 0.98486495 -0.058391582 -0.16319142 0.63571835
		 -0.48736173 -0.59861565 0.62599516 -0.44902405 -0.63757932 0.98486495 -0.058391582
		 -0.16319142 0.98863751 -0.081077009 -0.12657967 0.73383766 -0.14551611 -0.66355658
		 0.75492603 -0.31059596 -0.57759577 0.58317393 -0.49429044 -0.64465892 0.52464771
		 -0.37510031 -0.76422805 0.52464771 -0.37510031 -0.76422805 0.58317393 -0.49429044
		 -0.64465892 -0.12770377 -0.72439033 -0.67745882 -0.07834132 -0.75326592 -0.65303379
		 -0.73606741 -0.67054969 -0.092562735 -0.07834132 -0.75326592 -0.65303379 -0.12770377
		 -0.72439033 -0.67745882 -0.80498314 -0.55131245 -0.21921837 0.58317393 -0.49429044
		 -0.64465892 0.6147266 -0.48937404 -0.61856627 -0.1603215 -0.70926744 -0.68646687
		 -0.12770377 -0.72439033 -0.67745882 -0.17540637 -0.64839387 -0.74082249 -0.16962233
		 -0.67203814 -0.720828 0.61515784 -0.45151195 -0.64631093 0.62599516 -0.44902405 -0.63757932
		 -0.14002563 -0.70470983 -0.69554067 -0.17540637 -0.64839387 -0.74082249 0.62599516
		 -0.44902405 -0.63757932 0.63571835 -0.48736173 -0.59861565 -0.12770377 -0.72439033
		 -0.67745882 -0.1603215 -0.70926744 -0.68646687 -0.82326478 -0.50748551 -0.25434926
		 -0.80498314 -0.55131245 -0.21921837 -0.84305418 -0.41436878 -0.34286752 -0.81552631
		 -0.50784075 -0.27751511 -0.16962233 -0.67203814 -0.720828;
	setAttr ".n[6142:6307]" -type "float3"  -0.17540637 -0.64839387 -0.74082249 -0.83183432
		 -0.46550167 -0.30225796 -0.84305418 -0.41436878 -0.34286752 -0.17540637 -0.64839387
		 -0.74082249 -0.14002563 -0.70470983 -0.69554067 0.67711526 -0.53692901 -0.50321192
		 0.63571835 -0.48736173 -0.59861565 0.98863751 -0.081077009 -0.12657967 0.85990345
		 -0.48989126 0.14343162 0.52464771 -0.37510031 -0.76422805 -0.07834132 -0.75326592
		 -0.65303379 -0.061652843 -0.69915217 -0.71230972 0.53044987 -0.36674535 -0.76427794
		 -0.6860441 -0.71345669 -0.14255907 -0.061652843 -0.69915217 -0.71230972 -0.07834132
		 -0.75326592 -0.65303379 -0.73606741 -0.67054969 -0.092562735 0.077336833 -0.81246012
		 -0.57786465 -0.061652843 -0.69915217 -0.71230972 -0.6860441 -0.71345669 -0.14255907
		 -0.42031303 -0.90737915 0.0002287145 -0.0071081631 -0.96934664 0.24559426 -0.42031303
		 -0.90737915 0.0002287145 -0.71099168 -0.68712229 0.14951195 -0.66786075 -0.70670128
		 0.23352793 -0.42031303 -0.90737915 0.0002287145 -0.0071081631 -0.96934664 0.24559426
		 0.62685585 -0.77377427 -0.091242023 0.077336833 -0.81246012 -0.57786465 0.98626888
		 -0.022236681 -0.1636437 0.61515784 -0.45151195 -0.64631093 0.6147266 -0.48937404
		 -0.61856627 0.98850667 -0.050123535 -0.14262584 0.6147266 -0.48937404 -0.61856627
		 0.61515784 -0.45151195 -0.64631093 -0.16962233 -0.67203814 -0.720828 -0.1603215 -0.70926744
		 -0.68646687 -0.1603215 -0.70926744 -0.68646687 -0.16962233 -0.67203814 -0.720828
		 -0.81552631 -0.50784075 -0.27751511 -0.82326478 -0.50748551 -0.25434926 -0.13331091
		 -0.7982167 -0.58743364 -0.14002563 -0.70470983 -0.69554067 0.63571835 -0.48736173
		 -0.59861565 0.67711526 -0.53692901 -0.50321192 -0.13331091 -0.7982167 -0.58743364
		 0.67711526 -0.53692901 -0.50321192 0.29699764 -0.92754996 -0.22681159 -0.28597555
		 -0.95101929 -0.11738941 -0.79003161 -0.5937705 -0.15259945 -0.83183432 -0.46550167
		 -0.30225796 -0.14002563 -0.70470983 -0.69554067 -0.13331091 -0.7982167 -0.58743364
		 -0.79003161 -0.5937705 -0.15259945 -0.13331091 -0.7982167 -0.58743364 -0.28597555
		 -0.95101929 -0.11738941 -0.56101233 -0.81236041 0.159172 0.91884977 0.20107883 -0.33953261
		 0.62422597 -0.3417888 -0.70251149 0.97387511 0.22698069 0.0068579861 0.91745585 0.065162748
		 -0.39246473 0.62422597 -0.3417888 -0.70251149 0.53044987 -0.36674535 -0.76427794
		 -0.061652843 -0.69915217 -0.71230972 0.077336833 -0.81246012 -0.57786465 0.62422597
		 -0.3417888 -0.70251149 0.077336833 -0.81246012 -0.57786465 0.62685585 -0.77377427
		 -0.091242023 0.97387511 0.22698069 0.0068579861 -0.18527898 -0.052049231 0.98130655
		 -0.55483341 -0.1507844 0.8181833 -0.64302129 -0.5579201 0.52464163 0.010979624 -0.61022067
		 0.79215539 -0.56101233 -0.81236041 0.159172 -0.28597555 -0.95101929 -0.11738941 0.29699764
		 -0.92754996 -0.22681159 0.082374327 -0.93672532 0.3402355 0.75349188 -0.10039736
		 0.64974636 0.23317192 0.39612409 0.88809717 -0.18527898 -0.052049231 0.98130655 0.010979624
		 -0.61022067 0.79215539 0.85990345 -0.48989126 0.14343162 0.082374327 -0.93672532
		 0.3402355 0.29699764 -0.92754996 -0.22681159 0.67711526 -0.53692901 -0.50321192 0.51648438
		 0.77798581 0.35774571 0.48045838 0.83583385 0.2655966 0.87802261 0.40184569 -0.25999305
		 0.92268699 0.35105264 -0.15940747 0.5587157 0.75024068 0.35351902 0.51648438 0.77798581
		 0.35774571 0.92268699 0.35105264 -0.15940747 0.91461748 0.4039605 -0.01705371 0.60708022
		 0.74825996 0.26750812 0.91371071 0.35361487 -0.20022301 0.87802261 0.40184569 -0.25999305
		 0.48045838 0.83583385 0.2655966 0.98730022 0.15121369 -0.048710097 0.91371071 0.35361487
		 -0.20022301 0.60708022 0.74825996 0.26750812 0.69532341 0.5401774 0.47406089 0.65932542
		 0.49575785 0.56525582 0.99969649 0.021866698 0.011348067 0.98730022 0.15121369 -0.048710097
		 0.69532341 0.5401774 0.47406089 0.9751367 0.16829793 -0.14416721 0.99110514 0.10065072
		 -0.087063156 0.69332385 0.54879558 0.46703902 0.6899116 0.58557349 0.42558864 0.70597988
		 0.53178501 0.46775752 0.98363227 0.13618372 -0.11798973 0.9751367 0.16829793 -0.14416721
		 0.6899116 0.58557349 0.42558864 0.73286325 0.43617359 0.52217245 0.99643075 0.081061445
		 -0.023554936 0.98363227 0.13618372 -0.11798973 0.70597988 0.53178501 0.46775752 0.51648438
		 0.77798581 0.35774571 0.5587157 0.75024068 0.35351902 -0.0069919275 0.72107393 0.69282287
		 -0.068451084 0.73040611 0.67957437 -0.1934732 0.72394061 0.66217679 0.48045838 0.83583385
		 0.2655966 0.51648438 0.77798581 0.35774571 -0.068451084 0.73040611 0.67957437 0.11108714
		 0.84030455 0.53061092 0.60708022 0.74825996 0.26750812 0.48045838 0.83583385 0.2655966
		 -0.1934732 0.72394061 0.66217679 0.28282595 0.58569813 0.75958353 0.69532341 0.5401774
		 0.47406089 0.60708022 0.74825996 0.26750812 0.11108714 0.84030455 0.53061092 -0.088686287
		 0.61147934 0.78627461 0.65932542 0.49575785 0.56525582 0.69532341 0.5401774 0.47406089
		 0.28282595 0.58569813 0.75958353 0.69332385 0.54879558 0.46703902 0.65932542 0.49575785
		 0.56525582 -0.088686287 0.61147934 0.78627461 -0.01170515 0.62051314 0.7841087 -0.0046079457
		 0.65538722 0.75527894 0.70597988 0.53178501 0.46775752 0.6899116 0.58557349 0.42558864
		 0.0010293978 0.66605079 0.74590564 0.019602688 0.55637121 0.8307026 0.73286325 0.43617359
		 0.52217245 0.70597988 0.53178501 0.46775752 -0.0046079457 0.65538722 0.75527894 0.11108714
		 0.84030455 0.53061092 -0.1934732 0.72394061 0.66217679 -0.088686287 0.61147934 0.78627461
		 0.28282595 0.58569813 0.75958353 -0.1934732 0.72394061 0.66217679 -0.72990489 0.25994626
		 0.63219208 -0.71338165 0.30488834 0.63097519 -0.088686287 0.61147934 0.78627461 -0.86105686
		 -0.40684518 0.30505416 -0.92504627 -0.33491057 0.17923246 -0.71338165 0.30488834
		 0.63097519 -0.72990489 0.25994626 0.63219208 -0.53639495 -0.82146174 -0.19360037
		 -0.6039055 -0.72714782 -0.32642648 -0.92504627 -0.33491057 0.17923246 -0.86105686
		 -0.40684518 0.30505416 0.65932542 0.49575785 0.56525582;
	setAttr ".n[6308:6473]" -type "float3"  0.69332385 0.54879558 0.46703902 0.99110514
		 0.10065072 -0.087063156 0.99969649 0.021866698 0.011348067 -0.088686287 0.61147934
		 0.78627461 -0.71338165 0.30488834 0.63097519 -0.63847601 0.29489022 0.71090657 -0.01170515
		 0.62051314 0.7841087 -0.67112744 0.39232343 0.62902325 -0.0046079457 0.65538722 0.75527894
		 0.0010293978 0.66605079 0.74590564 -0.64438474 0.36152026 0.67384821 -0.65426236
		 0.28997654 0.6984657 0.019602688 0.55637121 0.8307026 -0.0046079457 0.65538722 0.75527894
		 -0.67112744 0.39232343 0.62902325 -0.71338165 0.30488834 0.63097519 -0.92504627 -0.33491057
		 0.17923246 -0.93689138 -0.27864334 0.21116918 -0.63847601 0.29489022 0.71090657 -0.98281872
		 -0.13144602 0.12957369 -0.67112744 0.39232343 0.62902325 -0.64438474 0.36152026 0.67384821
		 -0.94684196 -0.20878661 0.24474163 -0.95708436 -0.21694307 0.1921594 -0.65426236
		 0.28997654 0.6984657 -0.67112744 0.39232343 0.62902325 -0.98281872 -0.13144602 0.12957369
		 0.59096611 -0.023726355 0.80634737 0.8470431 -0.38709933 0.36424181 0.99643075 0.081061445
		 -0.023554936 0.73286325 0.43617359 0.52217245 0.73286325 0.43617359 0.52217245 0.019602688
		 0.55637121 0.8307026 0.010693964 0.36923414 0.92927486 0.59096611 -0.023726355 0.80634737
		 0.046103343 -0.87631536 0.47952673 0.8470431 -0.38709933 0.36424181 0.59096611 -0.023726355
		 0.80634737 -0.11253615 -0.56326121 0.81857949 -0.50138122 -0.827308 0.25333458 0.046103343
		 -0.87631536 0.47952673 -0.11253615 -0.56326121 0.81857949 -0.64565879 -0.55001205
		 0.5297277 -0.1934732 0.72394061 0.66217679 -0.068451084 0.73040611 0.67957437 -0.64511198
		 0.29405382 0.70523959 -0.72990489 0.25994626 0.63219208 -0.86220509 -0.39029443 0.32291278
		 -0.86105686 -0.40684518 0.30505416 -0.72990489 0.25994626 0.63219208 -0.64511198
		 0.29405382 0.70523959 -0.47563437 -0.85820246 -0.19302991 -0.53639495 -0.82146174
		 -0.19360037 -0.86105686 -0.40684518 0.30505416 -0.86220509 -0.39029443 0.32291278
		 -0.80645645 -0.39726576 0.43795884 -0.42937303 -0.87004977 0.24218225 -0.47563437
		 -0.85820246 -0.19302991 -0.86220509 -0.39029443 0.32291278 -0.56877351 0.25939584
		 0.78051937 -0.80645645 -0.39726576 0.43795884 -0.86220509 -0.39029443 0.32291278
		 -0.64511198 0.29405382 0.70523959 -0.73907775 -0.357021 0.57122684 -0.7120083 -0.63429981
		 0.30117765 -0.42937303 -0.87004977 0.24218225 -0.80645645 -0.39726576 0.43795884
		 -0.80645645 -0.39726576 0.43795884 -0.56877351 0.25939584 0.78051937 -0.49149859
		 0.19362895 0.84908009 -0.73907775 -0.357021 0.57122684 0.93172896 0.36314353 -0.0028107928
		 0.46035179 0.73784274 0.4936237 0.5587157 0.75024068 0.35351902 0.91461748 0.4039605
		 -0.01705371 0.93172896 0.36314353 -0.0028107928 0.79260081 0.57593787 0.20019881
		 0.42125636 0.78901815 0.4472062 0.46035179 0.73784274 0.4936237 -0.92504627 -0.33491057
		 0.17923246 -0.6039055 -0.72714782 -0.32642648 -0.5923835 -0.70972681 -0.38127375
		 -0.93689138 -0.27864334 0.21116918 -0.68728411 -0.55549496 -0.46804473 -0.98281872
		 -0.13144602 0.12957369 -0.94684196 -0.20878661 0.24474163 -0.63301659 -0.64324874
		 -0.43072149 0.6899116 0.58557349 0.42558864 0.69332385 0.54879558 0.46703902 -0.01170515
		 0.62051314 0.7841087 0.0010293978 0.66605079 0.74590564 -0.01170515 0.62051314 0.7841087
		 -0.63847601 0.29489022 0.71090657 -0.64438474 0.36152026 0.67384821 0.0010293978
		 0.66605079 0.74590564 -0.63847601 0.29489022 0.71090657 -0.93689138 -0.27864334 0.21116918
		 -0.94684196 -0.20878661 0.24474163 -0.64438474 0.36152026 0.67384821 -0.94684196
		 -0.20878661 0.24474163 -0.93689138 -0.27864334 0.21116918 -0.5923835 -0.70972681
		 -0.38127375 -0.63301659 -0.64324874 -0.43072149 0.019602688 0.55637121 0.8307026
		 -0.65426236 0.28997654 0.6984657 -0.67966747 0.048966572 0.73188412 0.010693964 0.36923414
		 0.92927486 0.010693964 0.36923414 0.92927486 -0.67966747 0.048966572 0.73188412 -0.65369701
		 -0.21290329 0.72619033 -0.37644258 -0.16969921 0.91076517 -0.87422109 -0.33445206
		 0.35196501 -0.67966747 0.048966572 0.73188412 -0.65426236 0.28997654 0.6984657 -0.95708436
		 -0.21694307 0.1921594 -0.87422109 -0.33445206 0.35196501 -0.64565879 -0.55001205
		 0.5297277 -0.65369701 -0.21290329 0.72619033 -0.67966747 0.048966572 0.73188412 -0.64565879
		 -0.55001205 0.5297277 -0.87422109 -0.33445206 0.35196501 -0.70309353 -0.69966704
		 -0.12698629 -0.50138122 -0.827308 0.25333458 -0.98281872 -0.13144602 0.12957369 -0.68728411
		 -0.55549496 -0.46804473 -0.69028461 -0.62097412 -0.37134656 -0.95708436 -0.21694307
		 0.1921594 -0.69028461 -0.62097412 -0.37134656 -0.70309353 -0.69966704 -0.12698629
		 -0.87422109 -0.33445206 0.35196501 -0.95708436 -0.21694307 0.1921594 0.5587157 0.75024068
		 0.35351902 0.46035179 0.73784274 0.4936237 0.010910219 0.67434901 0.73833215 -0.0069919275
		 0.72107393 0.69282287 -0.0069919275 0.72107393 0.69282287 -0.56877351 0.25939584
		 0.78051937 -0.64511198 0.29405382 0.70523959 -0.068451084 0.73040611 0.67957437 -0.0069919275
		 0.72107393 0.69282287 0.010910219 0.67434901 0.73833215 -0.49149859 0.19362895 0.84908009
		 -0.56877351 0.25939584 0.78051937 0.46035179 0.73784274 0.4936237 0.42125636 0.78901815
		 0.4472062 0.025452441 0.64891696 0.76043338 0.010910219 0.67434901 0.73833215 0.31252739
		 0.84012288 0.44330594 0.42125636 0.78901815 0.4472062 0.79260081 0.57593787 0.20019881
		 0.57278293 0.78455311 0.23747875 0.040045176 0.66545808 0.74536031 0.025452441 0.64891696
		 0.76043338 0.42125636 0.78901815 0.4472062 0.31252739 0.84012288 0.44330594 0.68389267
		 0.71880543 0.12493821 0.57278293 0.78455311 0.23747875 0.79260081 0.57593787 0.20019881
		 0.80727005 0.49293467 0.32454661 0.79260081 0.57593787 0.20019881 0.93172896 0.36314353
		 -0.0028107928 0.87763327 0.32236436 0.35474086 0.80727005 0.49293467 0.32454661 0.92268699
		 0.35105264 -0.15940747 0.76147091 -0.29754639 -0.57587165 0.92469138 -0.19083495
		 -0.32943571;
	setAttr ".n[6474:6639]" -type "float3"  0.91461748 0.4039605 -0.01705371 0.70118409
		 -0.32243541 -0.63590586 0.76147091 -0.29754639 -0.57587165 0.92268699 0.35105264
		 -0.15940747 0.87802261 0.40184569 -0.25999305 0.84429955 -0.072280832 -0.53097433
		 0.70118409 -0.32243541 -0.63590586 0.87802261 0.40184569 -0.25999305 0.91371071 0.35361487
		 -0.20022301 0.87881172 -0.25939903 -0.40050238 0.84429955 -0.072280832 -0.53097433
		 0.91371071 0.35361487 -0.20022301 0.98730022 0.15121369 -0.048710097 0.73204643 -0.43490478
		 -0.52437192 0.87881172 -0.25939903 -0.40050238 0.98730022 0.15121369 -0.048710097
		 0.99969649 0.021866698 0.011348067 0.99110514 0.10065072 -0.087063156 0.74811536
		 -0.37124878 -0.54999799 0.73204643 -0.43490478 -0.52437192 0.99969649 0.021866698
		 0.011348067 0.71791482 -0.34502497 -0.60461235 0.70857787 -0.32783049 -0.62485564
		 0.9751367 0.16829793 -0.14416721 0.98363227 0.13618372 -0.11798973 0.71510243 -0.40591291
		 -0.56908983 0.71791482 -0.34502497 -0.60461235 0.98363227 0.13618372 -0.11798973
		 0.99643075 0.081061445 -0.023554936 0.84429955 -0.072280832 -0.53097433 0.87881172
		 -0.25939903 -0.40050238 0.73204643 -0.43490478 -0.52437192 0.70118409 -0.32243541
		 -0.63590586 0.70118409 -0.32243541 -0.63590586 0.73204643 -0.43490478 -0.52437192
		 0.12828261 -0.75500685 -0.64304608 0.17296392 -0.78188914 -0.59894311 -0.53639495
		 -0.82146174 -0.19360037 0.17296392 -0.78188914 -0.59894311 0.12828261 -0.75500685
		 -0.64304608 -0.6039055 -0.72714782 -0.32642648 0.73204643 -0.43490478 -0.52437192
		 0.74811536 -0.37124878 -0.54999799 0.14388658 -0.72631025 -0.67213845 0.12828261
		 -0.75500685 -0.64304608 -0.0085364021 -0.65466523 -0.75587076 0.018631898 -0.66350734
		 -0.74793774 0.70857787 -0.32783049 -0.62485564 0.71791482 -0.34502497 -0.60461235
		 0.022745011 -0.70685244 -0.70699525 -0.0085364021 -0.65466523 -0.75587076 0.71791482
		 -0.34502497 -0.60461235 0.71510243 -0.40591291 -0.56908983 0.12828261 -0.75500685
		 -0.64304608 0.14388658 -0.72631025 -0.67213845 -0.5923835 -0.70972681 -0.38127375
		 -0.6039055 -0.72714782 -0.32642648 -0.68728411 -0.55549496 -0.46804473 -0.63301659
		 -0.64324874 -0.43072149 0.018631898 -0.66350734 -0.74793774 -0.0085364021 -0.65466523
		 -0.75587076 -0.69028461 -0.62097412 -0.37134656 -0.68728411 -0.55549496 -0.46804473
		 -0.0085364021 -0.65466523 -0.75587076 0.022745011 -0.70685244 -0.70699525 0.76253086
		 -0.51656097 -0.38950151 0.71510243 -0.40591291 -0.56908983 0.99643075 0.081061445
		 -0.023554936 0.8470431 -0.38709933 0.36424181 0.70118409 -0.32243541 -0.63590586
		 0.17296392 -0.78188914 -0.59894311 0.20665672 -0.75782663 -0.61886334 0.76147091
		 -0.29754639 -0.57587165 -0.47563437 -0.85820246 -0.19302991 0.20665672 -0.75782663
		 -0.61886334 0.17296392 -0.78188914 -0.59894311 -0.53639495 -0.82146174 -0.19360037
		 0.34392703 -0.80667841 -0.48060808 0.20665672 -0.75782663 -0.61886334 -0.47563437
		 -0.85820246 -0.19302991 -0.42937303 -0.87004977 0.24218225 0.069899365 -0.70740956
		 0.70333904 -0.42937303 -0.87004977 0.24218225 -0.7120083 -0.63429981 0.30117765 -0.56233323
		 -0.81206858 0.15596776 -0.42937303 -0.87004977 0.24218225 0.069899365 -0.70740956
		 0.70333904 0.72837681 -0.36703521 0.57857788 0.34392703 -0.80667841 -0.48060808 0.9751367
		 0.16829793 -0.14416721 0.70857787 -0.32783049 -0.62485564 0.74811536 -0.37124878
		 -0.54999799 0.99110514 0.10065072 -0.087063156 0.74811536 -0.37124878 -0.54999799
		 0.70857787 -0.32783049 -0.62485564 0.018631898 -0.66350734 -0.74793774 0.14388658
		 -0.72631025 -0.67213845 0.14388658 -0.72631025 -0.67213845 0.018631898 -0.66350734
		 -0.74793774 -0.63301659 -0.64324874 -0.43072149 -0.5923835 -0.70972681 -0.38127375
		 -0.024960952 -0.85685462 -0.51495349 0.022745011 -0.70685244 -0.70699525 0.71510243
		 -0.40591291 -0.56908983 0.76253086 -0.51656097 -0.38950151 -0.024960952 -0.85685462
		 -0.51495349 0.76253086 -0.51656097 -0.38950151 0.31460473 -0.94815576 -0.044994429
		 -0.20141277 -0.97917801 -0.025363568 -0.024960952 -0.85685462 -0.51495349 -0.70309353
		 -0.69966704 -0.12698629 -0.69028461 -0.62097412 -0.37134656 0.022745011 -0.70685244
		 -0.70699525 -0.70309353 -0.69966704 -0.12698629 -0.024960952 -0.85685462 -0.51495349
		 -0.20141277 -0.97917801 -0.025363568 -0.50138122 -0.827308 0.25333458 0.91461748
		 0.4039605 -0.01705371 0.92469138 -0.19083495 -0.32943571 0.87763327 0.32236436 0.35474086
		 0.93172896 0.36314353 -0.0028107928 0.92469138 -0.19083495 -0.32943571 0.76147091
		 -0.29754639 -0.57587165 0.20665672 -0.75782663 -0.61886334 0.34392703 -0.80667841
		 -0.48060808 0.92469138 -0.19083495 -0.32943571 0.34392703 -0.80667841 -0.48060808
		 0.72837681 -0.36703521 0.57857788 0.87763327 0.32236436 0.35474086 -0.37644258 -0.16969921
		 0.91076517 -0.65369701 -0.21290329 0.72619033 -0.64565879 -0.55001205 0.5297277 -0.11253615
		 -0.56326121 0.81857949 -0.50138122 -0.827308 0.25333458 -0.20141277 -0.97917801 -0.025363568
		 0.31460473 -0.94815576 -0.044994429 0.046103343 -0.87631536 0.47952673 0.59096611
		 -0.023726355 0.80634737 0.010693964 0.36923414 0.92927486 -0.37644258 -0.16969921
		 0.91076517 -0.11253615 -0.56326121 0.81857949 0.8470431 -0.38709933 0.36424181 0.046103343
		 -0.87631536 0.47952673 0.31460473 -0.94815576 -0.044994429 0.76253086 -0.51656097
		 -0.38950151 0.010910219 0.67434901 0.73833215 0.025452441 0.64891696 0.76043338 -0.40874663
		 0.11523589 0.90534353 -0.49149859 0.19362895 0.84908009 -0.70446438 -0.47153485 0.5304572
		 -0.73907775 -0.357021 0.57122684 -0.49149859 0.19362895 0.84908009 -0.40874663 0.11523589
		 0.90534353 -0.75246221 -0.65081668 0.10118455 -0.7120083 -0.63429981 0.30117765 -0.73907775
		 -0.357021 0.57122684 -0.70446438 -0.47153485 0.5304572 -0.43055511 -0.71306932 0.55331224
		 -0.70446438 -0.47153485 0.5304572 -0.40874663 0.11523589 0.90534353 -0.31871492 0.020447684
		 0.94763005 -0.06561093 -0.034012642 0.99726546 -0.12723514 -0.71536982 0.68706423
		 -0.43055511 -0.71306932 0.55331224 -0.31871492 0.020447684 0.94763005 -0.31871492
		 0.020447684 0.94763005;
	setAttr ".n[6640:6805]" -type "float3"  -0.40874663 0.11523589 0.90534353 0.025452441
		 0.64891696 0.76043338 0.040045176 0.66545808 0.74536031 -0.31871492 0.020447684 0.94763005
		 0.040045176 0.66545808 0.74536031 0.12139197 0.59663588 0.79327774 -0.06561093 -0.034012642
		 0.99726546 0.040045176 0.66545808 0.74536031 0.31252739 0.84012288 0.44330594 0.17646889
		 0.80398375 0.5678634 0.12139197 0.59663588 0.79327774 -0.063711412 0.85385913 0.51659024
		 -0.18359837 0.92193884 0.34105778 0.12590358 0.86831361 0.47977054 0.29386708 0.84860939
		 0.43989116 -0.063711412 0.85385913 0.51659024 0.29386708 0.84860939 0.43989116 0.35515979
		 0.81181824 0.46347889 0.35515979 0.81181824 0.46347889 0.29604897 0.73710418 0.60748041
		 -0.12684438 0.68683654 0.71565783 -0.063711412 0.85385913 0.51659024 -0.16020672
		 0.57876736 0.7996012 -0.13947964 0.59253263 0.79337919 0.26933798 0.73662877 0.62035084
		 0.29164076 0.7447874 0.60019779 0.39051142 0.76280516 0.51539218 -0.035564434 0.58031082
		 0.81361818 -0.16020672 0.57876736 0.7996012 0.29164076 0.7447874 0.60019779 0.67227614
		 0.70000482 0.24091083 0.71944588 0.67845529 0.14864746 0.29164076 0.7447874 0.60019779
		 0.26933798 0.73662877 0.62035084 0.8797946 0.33771536 -0.33452922 0.85932577 0.28158754
		 -0.42692825 0.71944588 0.67845529 0.14864746 0.67227614 0.70000482 0.24091083 0.39051142
		 0.76280516 0.51539218 0.29164076 0.7447874 0.60019779 0.71944588 0.67845529 0.14864746
		 0.79902375 0.601165 -0.012714809 0.71944588 0.67845529 0.14864746 0.85932577 0.28158754
		 -0.42692825 0.84990072 0.10686328 -0.51599318 0.79902375 0.601165 -0.012714809 0.52749586
		 0.73531413 0.42551297 0.07912939 0.59405613 0.80052227 -0.035564434 0.58031082 0.81361818
		 0.39051142 0.76280516 0.51539218 0.029495526 0.70927632 0.70431322 0.06295345 0.6573838
		 0.75092173 0.5321874 0.77698201 0.33626699 0.49260965 0.83014095 0.26115462 0.39051142
		 0.76280516 0.51539218 0.79902375 0.601165 -0.012714809 0.83693743 0.53933322 -0.093034491
		 0.52749586 0.73531413 0.42551297 0.52749586 0.73531413 0.42551297 0.83693743 0.53933322
		 -0.093034491 0.81502652 0.5479936 -0.18824147 0.5321874 0.77698201 0.33626699 0.79902375
		 0.601165 -0.012714809 0.84990072 0.10686328 -0.51599318 0.81985718 -0.0054239687
		 -0.57254243 0.83693743 0.53933322 -0.093034491 0.81985718 -0.0054239687 -0.57254243
		 0.75573927 -0.015311649 -0.6546936 0.81502652 0.5479936 -0.18824147 0.83693743 0.53933322
		 -0.093034491 -0.43131766 0.17529024 0.88500756 0.07912939 0.59405613 0.80052227 0.06295345
		 0.6573838 0.75092173 -0.45261461 0.2332669 0.86065471 -0.43131766 0.17529024 0.88500756
		 -0.49480259 0.13024603 0.85918939 -0.035564434 0.58031082 0.81361818 0.07912939 0.59405613
		 0.80052227 -0.66273105 0.056259077 0.74674124 -0.16020672 0.57876736 0.7996012 -0.035564434
		 0.58031082 0.81361818 -0.49480259 0.13024603 0.85918939 -0.16020672 0.57876736 0.7996012
		 -0.66273105 0.056259077 0.74674124 -0.69708121 0.062035289 0.71430343 -0.13947964
		 0.59253263 0.79337919 -0.85602289 0.49114478 0.16125004 -0.063711412 0.85385913 0.51659024
		 -0.12684438 0.68683654 0.71565783 -0.75964254 0.26990905 0.59168601 -0.72892725 0.68290865
		 0.047966491 -0.18359837 0.92193884 0.34105778 -0.063711412 0.85385913 0.51659024
		 -0.85602289 0.49114478 0.16125004 0.67228329 0.69543147 0.25379166 0.66323942 0.66619104
		 0.34103224 0.29604897 0.73710418 0.60748041 0.35515979 0.81181824 0.46347889 0.87585407
		 0.47836044 -0.063646443 0.87553054 0.47134078 -0.10622707 0.66323942 0.66619104 0.34103224
		 0.67228329 0.69543147 0.25379166 0.68389267 0.71880543 0.12493821 0.67228329 0.69543147
		 0.25379166 0.35515979 0.81181824 0.46347889 0.29386708 0.84860939 0.43989116 -0.20990564
		 -0.9592489 0.18915913 -0.43436584 -0.899441 0.048292469 -0.43055511 -0.71306932 0.55331224
		 -0.12723514 -0.71536982 0.68706423 -0.49702561 -0.80091453 -0.33391833 -0.67369443
		 -0.70476931 -0.22234216 -0.97908223 -0.033869602 -0.20062619 -0.92186826 -0.2231265
		 -0.31681776 -0.92186826 -0.2231265 -0.31681776 -0.97908223 -0.033869602 -0.20062619
		 -0.72892725 0.68290865 0.047966491 -0.85602289 0.49114478 0.16125004 0.25458962 0.73050922
		 0.63367218 -0.12577114 0.62559909 0.76993984 -0.12684438 0.68683654 0.71565783 0.29604897
		 0.73710418 0.60748041 0.6442076 0.68827224 0.33358341 0.25458962 0.73050922 0.63367218
		 0.29604897 0.73710418 0.60748041 0.66323942 0.66619104 0.34103224 0.9050355 0.36953548
		 -0.2106045 0.6442076 0.68827224 0.33358341 0.66323942 0.66619104 0.34103224 0.87553054
		 0.47134078 -0.10622707 -0.12577114 0.62559909 0.76993984 -0.7105841 0.072161473 0.69990212
		 -0.75964254 0.26990905 0.59168601 -0.12684438 0.68683654 0.71565783 0.86065692 0.48524258
		 -0.15430267 0.87585407 0.47836044 -0.063646443 0.67228329 0.69543147 0.25379166 0.68389267
		 0.71880543 0.12493821 0.57278293 0.78455311 0.23747875 0.68389267 0.71880543 0.12493821
		 0.29386708 0.84860939 0.43989116 0.31252739 0.84012288 0.44330594 0.86065692 0.48524258
		 -0.15430267 0.68389267 0.71880543 0.12493821 0.8044064 0.59242666 -0.044283494 0.85352832
		 0.51104409 -0.10160398 0.29386708 0.84860939 0.43989116 0.12590358 0.86831361 0.47977054
		 0.17646889 0.80398375 0.5678634 0.31252739 0.84012288 0.44330594 -0.67369443 -0.70476931
		 -0.22234216 -0.49702561 -0.80091453 -0.33391833 -0.15838483 -0.96803313 -0.19448929
		 -0.23555067 -0.97071159 0.047274053 -0.7120083 -0.63429981 0.30117765 -0.75246221
		 -0.65081668 0.10118455 -0.74148929 -0.66489923 -0.090014562 -0.56233323 -0.81206858
		 0.15596776 -0.60839796 -0.78750253 -0.098446622 -0.52346605 -0.84271938 0.12572698
		 -0.56233323 -0.81206858 0.15596776 -0.74148929 -0.66489923 -0.090014562 -0.65395361
		 -0.75649816 0.0074283471 -0.71099168 -0.68712229 0.14951195 -0.52346605 -0.84271938
		 0.12572698 -0.60839796 -0.78750253 -0.098446622;
	setAttr ".n[6806:6971]" -type "float3"  -0.81070411 -0.57722789 0.097810082 -0.66786075
		 -0.70670128 0.23352793 -0.71099168 -0.68712229 0.14951195 -0.65395361 -0.75649816
		 0.0074283471 -0.80346358 -0.56529033 0.18679684 -0.57000256 -0.81468236 0.10672277
		 -0.66786075 -0.70670128 0.23352793 -0.81070411 -0.57722789 0.097810082 -0.43436584
		 -0.899441 0.048292469 -0.75246221 -0.65081668 0.10118455 -0.70446438 -0.47153485
		 0.5304572 -0.43055511 -0.71306932 0.55331224 -0.15838483 -0.96803313 -0.19448929
		 -0.49702561 -0.80091453 -0.33391833 -0.4146823 -0.88499218 -0.21172476 -0.41411552
		 -0.90836352 -0.05817239 -0.49702561 -0.80091453 -0.33391833 -0.92186826 -0.2231265
		 -0.31681776 -0.75062972 -0.56900537 -0.33583906 -0.4146823 -0.88499218 -0.21172476
		 -0.72892725 0.68290865 0.047966491 -0.55959368 0.8268013 0.057048012 -0.028420271
		 0.96452916 0.26244205 -0.18359837 0.92193884 0.34105778 -0.52200037 0.82458961 0.21809989
		 -0.053529255 0.9517327 0.30222416 -0.028420271 0.96452916 0.26244205 -0.55959368
		 0.8268013 0.057048012 -0.09178786 0.84566623 0.52576005 -0.053529255 0.9517327 0.30222416
		 -0.52200037 0.82458961 0.21809989 -0.59807551 0.69754571 0.39463356 -0.65071446 0.67030948
		 0.35672945 -0.000133422 0.83807838 0.54554987 -0.09178786 0.84566623 0.52576005 -0.59807551
		 0.69754571 0.39463356 0.051627666 0.80777752 0.58722228 0.033193111 0.87422353 0.4843877
		 -0.64869225 0.7000047 0.29865 -0.60961485 0.68266821 0.40290672 -0.56755137 0.59665346
		 0.56735361 -0.038023803 0.69123185 0.721632 0.051627666 0.80777752 0.58722228 -0.60961485
		 0.68266821 0.40290672 -0.93344218 0.35698858 -0.035282198 -0.52200037 0.82458961
		 0.21809989 -0.55959368 0.8268013 0.057048012 -0.98754674 0.02346495 -0.15556599 -0.90075123
		 0.33318853 0.27862638 -0.59807551 0.69754571 0.39463356 -0.52200037 0.82458961 0.21809989
		 -0.93344218 0.35698858 -0.035282198 -0.99657124 0.06361679 0.052902386 -0.65071446
		 0.67030948 0.35672945 -0.59807551 0.69754571 0.39463356 -0.90075123 0.33318853 0.27862638
		 -0.64869225 0.7000047 0.29865 -0.65071446 0.67030948 0.35672945 -0.99657124 0.06361679
		 0.052902386 -0.97746146 0.21077269 -0.0119966 -0.97844893 0.16976821 0.11754329 -0.56755137
		 0.59665346 0.56735361 -0.60961485 0.68266821 0.40290672 -0.97589171 0.21704224 -0.022978285
		 -0.93344218 0.35698858 -0.035282198 -0.98754674 0.02346495 -0.15556599 -0.99657124
		 0.06361679 0.052902386 -0.90075123 0.33318853 0.27862638 -0.98754674 0.02346495 -0.15556599
		 -0.75557005 -0.64385331 -0.12069304 -0.76013321 -0.60522163 -0.23644082 -0.99657124
		 0.06361679 0.052902386 -0.19421916 -0.97568482 0.10157757 -0.076955743 -0.96252632
		 -0.26004028 -0.76013321 -0.60522163 -0.23644082 -0.75557005 -0.64385331 -0.12069304
		 0.33030704 -0.78381544 0.5258618 0.57123172 -0.82013917 0.032649677 -0.076955743
		 -0.96252632 -0.26004028 -0.19421916 -0.97568482 0.10157757 -0.65071446 0.67030948
		 0.35672945 -0.64869225 0.7000047 0.29865 0.033193111 0.87422353 0.4843877 -0.000133422
		 0.83807838 0.54554987 -0.99657124 0.06361679 0.052902386 -0.76013321 -0.60522163
		 -0.23644082 -0.80558944 -0.50102061 -0.31623408 -0.97746146 0.21077269 -0.0119966
		 -0.74911678 -0.54948753 -0.36998305 -0.97844893 0.16976821 0.11754329 -0.97589171
		 0.21704224 -0.022978285 -0.7764796 -0.47369149 -0.41556689 -0.76013321 -0.60522163
		 -0.23644082 -0.076955743 -0.96252632 -0.26004028 -0.10573646 -0.91879261 -0.38031566
		 -0.80558944 -0.50102061 -0.31623408 -0.010691656 -0.86316425 -0.50480998 -0.74911678
		 -0.54948753 -0.36998305 -0.7764796 -0.47369149 -0.41556689 -0.04625573 -0.88334411
		 -0.46643707 -0.6104759 0.26499048 0.74639082 0.033167742 0.32379216 0.94554669 -0.10098529
		 0.75190556 0.65149063 -0.56367719 0.65745389 0.50002235 -0.56755137 0.59665346 0.56735361
		 -0.97844893 0.16976821 0.11754329 -0.9780491 0.12931664 0.16339262 -0.56367719 0.65745389
		 0.50002235 0.078002706 -0.61568278 0.7841239 0.033167742 0.32379216 0.94554669 -0.6104759
		 0.26499048 0.74639082 -0.41123328 -0.63622928 0.65276301 0.22027841 -0.92284715 0.31595975
		 0.078002706 -0.61568278 0.7841239 -0.41123328 -0.63622928 0.65276301 -0.037271246
		 -0.96658605 0.25361827 -0.67369443 -0.70476931 -0.22234216 -0.75557005 -0.64385331
		 -0.12069304 -0.98754674 0.02346495 -0.15556599 -0.97908223 -0.033869602 -0.20062619
		 -0.75557005 -0.64385331 -0.12069304 -0.67369443 -0.70476931 -0.22234216 -0.23555067
		 -0.97071159 0.047274053 -0.19421916 -0.97568482 0.10157757 -0.076955743 -0.96252632
		 -0.26004028 0.57123172 -0.82013917 0.032649677 0.65341175 -0.74029475 -0.15816696
		 -0.10573646 -0.91879261 -0.38031566 0.65183777 -0.69558018 -0.30211881 -0.010691656
		 -0.86316425 -0.50480998 -0.04625573 -0.88334411 -0.46643707 0.62625939 -0.72787464
		 -0.27928063 -0.60961485 0.68266821 0.40290672 -0.64869225 0.7000047 0.29865 -0.97746146
		 0.21077269 -0.0119966 -0.97589171 0.21704224 -0.022978285 -0.97746146 0.21077269
		 -0.0119966 -0.80558944 -0.50102061 -0.31623408 -0.7764796 -0.47369149 -0.41556689
		 -0.97589171 0.21704224 -0.022978285 -0.80558944 -0.50102061 -0.31623408 -0.10573646
		 -0.91879261 -0.38031566 -0.04625573 -0.88334411 -0.46643707 -0.7764796 -0.47369149
		 -0.41556689 -0.04625573 -0.88334411 -0.46643707 -0.10573646 -0.91879261 -0.38031566
		 0.65341175 -0.74029475 -0.15816696 0.62625939 -0.72787464 -0.27928063 -0.97844893
		 0.16976821 0.11754329 -0.74911678 -0.54948753 -0.36998305 -0.7222749 -0.65102804
		 -0.2334127 -0.9780491 0.12931664 0.16339262 -0.98237467 -0.036771942 0.18326999 -0.61166948
		 -0.78850675 -0.064168215 -0.43921188 -0.88310647 0.16497253 -0.70297199 -0.65054864
		 0.28743139 -0.030824969 -0.99677902 -0.074036114 -0.61166948 -0.78850675 -0.064168215
		 -0.7222749 -0.65102804 -0.2334127 -0.027114145 -0.94150203 -0.33591485 -0.030824969
		 -0.99677902 -0.074036114 -0.037271246 -0.96658605 0.25361827 -0.43921188 -0.88310647
		 0.16497253 -0.61166948 -0.78850675 -0.064168215 -0.037271246 -0.96658605 0.25361827
		 -0.030824969 -0.99677902 -0.074036114;
	setAttr ".n[6972:7137]" -type "float3"  0.4515132 -0.89139622 0.039352041 0.22027841
		 -0.92284715 0.31595975 0.65183777 -0.69558018 -0.30211881 0.59106594 -0.78921658
		 -0.16666795 -0.027114145 -0.94150203 -0.33591485 -0.010691656 -0.86316425 -0.50480998
		 -0.72892725 0.68290865 0.047966491 -0.97908223 -0.033869602 -0.20062619 -0.98754674
		 0.02346495 -0.15556599 -0.55959368 0.8268013 0.057048012 0.38547263 0.83165938 0.39969176
		 0.39750522 0.71905839 0.57003915 -0.028420271 0.96452916 0.26244205 -0.053529255
		 0.9517327 0.30222416 0.43211818 0.70101428 0.56732076 0.38547263 0.83165938 0.39969176
		 -0.053529255 0.9517327 0.30222416 -0.09178786 0.84566623 0.52576005 0.66328329 0.53030801
		 0.52804232 0.43211818 0.70101428 0.56732076 -0.09178786 0.84566623 0.52576005 -0.000133422
		 0.83807838 0.54554987 0.033193111 0.87422353 0.4843877 0.65206438 0.59807539 0.46595913
		 0.66328329 0.53030801 0.52804232 -0.000133422 0.83807838 0.54554987 0.62130803 0.54674327
		 0.56129152 0.69404501 0.55491954 0.45865658 0.051627666 0.80777752 0.58722228 -0.038023803
		 0.69123185 0.721632 0.38547263 0.83165938 0.39969176 0.43211818 0.70101428 0.56732076
		 0.66328329 0.53030801 0.52804232 0.39750522 0.71905839 0.57003915 0.39750522 0.71905839
		 0.57003915 0.66328329 0.53030801 0.52804232 0.93818265 -0.053738527 0.34194368 0.5718596
		 0.07143636 0.81723523 0.33030704 -0.78381544 0.5258618 0.5718596 0.07143636 0.81723523
		 0.93818265 -0.053738527 0.34194368 0.57123172 -0.82013917 0.032649677 0.66328329
		 0.53030801 0.52804232 0.65206438 0.59807539 0.46595913 0.98087358 -0.049581155 0.18822509
		 0.93818265 -0.053738527 0.34194368 0.98190641 -0.083762221 0.16983418 0.9930256 -0.059469979
		 0.10180098 0.69404501 0.55491954 0.45865658 0.62130803 0.54674327 0.56129152 0.93818265
		 -0.053738527 0.34194368 0.98087358 -0.049581155 0.18822509 0.65341175 -0.74029475
		 -0.15816696 0.57123172 -0.82013917 0.032649677 0.65183777 -0.69558018 -0.30211881
		 0.62625939 -0.72787464 -0.27928063 0.9930256 -0.059469979 0.10180098 0.98190641 -0.083762221
		 0.16983418 0.60707295 0.50930309 0.60997772 0.62130803 0.54674327 0.56129152 -0.038023803
		 0.69123185 0.721632 -0.10098529 0.75190556 0.65149063 -0.12723514 -0.71536982 0.68706423
		 -0.06561093 -0.034012642 0.99726546 0.5718596 0.07143636 0.81723523 0.33030704 -0.78381544
		 0.5258618 0.051627666 0.80777752 0.58722228 0.69404501 0.55491954 0.45865658 0.65206438
		 0.59807539 0.46595913 0.033193111 0.87422353 0.4843877 0.65206438 0.59807539 0.46595913
		 0.69404501 0.55491954 0.45865658 0.9930256 -0.059469979 0.10180098 0.98087358 -0.049581155
		 0.18822509 0.98087358 -0.049581155 0.18822509 0.9930256 -0.059469979 0.10180098 0.62625939
		 -0.72787464 -0.27928063 0.65341175 -0.74029475 -0.15816696 0.93642849 -0.20259692
		 0.28645447 0.98190641 -0.083762221 0.16983418 0.62130803 0.54674327 0.56129152 0.60707295
		 0.50930309 0.60997772 0.82406133 -0.40124223 0.39990944 0.5887779 0.4506017 0.67104298
		 0.57110572 -0.31293213 0.75888848 0.49764496 -0.71790266 0.48679081 0.4515132 -0.89139622
		 0.039352041 0.59106594 -0.78921658 -0.16666795 0.93642849 -0.20259692 0.28645447
		 0.82406133 -0.40124223 0.39990944 0.4515132 -0.89139622 0.039352041 0.82406133 -0.40124223
		 0.39990944 0.49764496 -0.71790266 0.48679081 0.22027841 -0.92284715 0.31595975 0.12590358
		 0.86831361 0.47977054 -0.18359837 0.92193884 0.34105778 -0.028420271 0.96452916 0.26244205
		 0.39750522 0.71905839 0.57003915 -0.70297199 -0.65054864 0.28743139 -0.43921188 -0.88310647
		 0.16497253 -0.037271246 -0.96658605 0.25361827 -0.41123328 -0.63622928 0.65276301
		 0.22027841 -0.92284715 0.31595975 0.49764496 -0.71790266 0.48679081 0.57110572 -0.31293213
		 0.75888848 0.078002706 -0.61568278 0.7841239 -0.6104759 0.26499048 0.74639082 -0.98237467
		 -0.036771942 0.18326999 -0.70297199 -0.65054864 0.28743139 -0.41123328 -0.63622928
		 0.65276301 0.033167742 0.32379216 0.94554669 0.078002706 -0.61568278 0.7841239 0.57110572
		 -0.31293213 0.75888848 0.5887779 0.4506017 0.67104298 -0.56367719 0.65745389 0.50002235
		 -0.10098529 0.75190556 0.65149063 -0.038023803 0.69123185 0.721632 -0.56755137 0.59665346
		 0.56735361 -0.56367719 0.65745389 0.50002235 -0.9780491 0.12931664 0.16339262 -0.98237467
		 -0.036771942 0.18326999 -0.6104759 0.26499048 0.74639082 -0.9780491 0.12931664 0.16339262
		 -0.7222749 -0.65102804 -0.2334127 -0.61166948 -0.78850675 -0.064168215 -0.98237467
		 -0.036771942 0.18326999 -0.027114145 -0.94150203 -0.33591485 -0.7222749 -0.65102804
		 -0.2334127 -0.74911678 -0.54948753 -0.36998305 -0.010691656 -0.86316425 -0.50480998
		 -0.027114145 -0.94150203 -0.33591485 0.59106594 -0.78921658 -0.16666795 0.4515132
		 -0.89139622 0.039352041 -0.030824969 -0.99677902 -0.074036114 0.5887779 0.4506017
		 0.67104298 0.60707295 0.50930309 0.60997772 -0.10098529 0.75190556 0.65149063 0.033167742
		 0.32379216 0.94554669 0.82406133 -0.40124223 0.39990944 0.93642849 -0.20259692 0.28645447
		 0.60707295 0.50930309 0.60997772 0.5887779 0.4506017 0.67104298 0.98190641 -0.083762221
		 0.16983418 0.93642849 -0.20259692 0.28645447 0.59106594 -0.78921658 -0.16666795 0.65183777
		 -0.69558018 -0.30211881 0.17646889 0.80398375 0.5678634 0.12590358 0.86831361 0.47977054
		 0.39750522 0.71905839 0.57003915 0.12139197 0.59663588 0.79327774 0.33030704 -0.78381544
		 0.5258618 -0.19421916 -0.97568482 0.10157757 -0.23555067 -0.97071159 0.047274053
		 -0.12723514 -0.71536982 0.68706423 0.5718596 0.07143636 0.81723523 -0.06561093 -0.034012642
		 0.99726546 0.12139197 0.59663588 0.79327774 0.39750522 0.71905839 0.57003915 -0.62861419
		 -0.76641792 -0.13209009 -0.74148929 -0.66489923 -0.090014562 -0.75246221 -0.65081668
		 0.10118455 -0.43436584 -0.899441 0.048292469 -0.94774455 -0.22282483 -0.22831868
		 -0.75062972 -0.56900537 -0.33583906 -0.92186826 -0.2231265 -0.31681776 -0.85602289
		 0.49114478 0.16125004;
	setAttr ".n[7138:7303]" -type "float3"  -0.85602289 0.49114478 0.16125004 -0.75964254
		 0.26990905 0.59168601 -0.90969926 -0.40659085 0.08444602 -0.94774455 -0.22282483
		 -0.22831868 -0.81835306 -0.54788876 -0.17353998 -0.75062972 -0.56900537 -0.33583906
		 -0.94774455 -0.22282483 -0.22831868 -0.90969926 -0.40659085 0.08444602 -0.75964254
		 0.26990905 0.59168601 -0.7105841 0.072161473 0.69990212 -0.77446258 -0.58185381 0.24830194
		 -0.90969926 -0.40659085 0.08444602 -0.70416731 -0.70908225 -0.036753111 -0.81835306
		 -0.54788876 -0.17353998 -0.90969926 -0.40659085 0.08444602 -0.77446258 -0.58185381
		 0.24830194 -0.70141518 -0.71056521 0.055802077 -0.4146823 -0.88499218 -0.21172476
		 -0.75062972 -0.56900537 -0.33583906 -0.81835306 -0.54788876 -0.17353998 -0.25069663
		 -0.83881289 -0.483264 -0.38099548 -0.71458787 -0.58669126 -0.81835306 -0.54788876
		 -0.17353998 -0.70416731 -0.70908225 -0.036753111 -0.70141518 -0.71056521 0.055802077
		 -0.6634444 -0.68017644 0.3117716 -0.41411552 -0.90836352 -0.05817239 -0.4146823 -0.88499218
		 -0.21172476 -0.79021442 -0.43731102 -0.42932528 -0.68784297 -0.70697039 -0.16451396
		 -0.70141518 -0.71056521 0.055802077 -0.81835306 -0.54788876 -0.17353998 -0.81835306
		 -0.54788876 -0.17353998 -0.38099548 -0.71458787 -0.58669126 -0.36130413 -0.51147872
		 -0.77964664 -0.79021442 -0.43731102 -0.42932528 -0.70427418 -0.69557667 0.14202456
		 -0.6634444 -0.68017644 0.3117716 -0.70141518 -0.71056521 0.055802077 -0.68784297
		 -0.70697039 -0.16451396 -0.41411552 -0.90836352 -0.05817239 -0.6634444 -0.68017644
		 0.3117716 -0.79203606 -0.51224643 0.33208802 -0.68277025 -0.72515655 0.08929009 -0.77892894
		 -0.56250083 0.27724087 -0.79203606 -0.51224643 0.33208802 -0.76448768 -0.61972874
		 0.17746788 -0.68609446 -0.71630847 0.12718701 -0.6634444 -0.68017644 0.3117716 -0.70427418
		 -0.69557667 0.14202456 -0.76448768 -0.61972874 0.17746788 -0.79203606 -0.51224643
		 0.33208802 -0.27665529 -0.63282382 -0.72318453 -0.68784297 -0.70697039 -0.16451396
		 -0.79021442 -0.43731102 -0.42932528 -0.36130413 -0.51147872 -0.77964664 -0.31006396
		 -0.71704268 -0.6242677 -0.70427418 -0.69557667 0.14202456 -0.68784297 -0.70697039
		 -0.16451396 -0.27665529 -0.63282382 -0.72318453 -0.49771249 -0.76275235 -0.41290569
		 -0.76448768 -0.61972874 0.17746788 -0.70427418 -0.69557667 0.14202456 -0.31006396
		 -0.71704268 -0.6242677 -0.76741129 -0.51529783 0.38150764 -0.7713173 -0.54637015
		 0.32641888 -0.69708121 0.062035289 0.71430343 -0.66273105 0.056259077 0.74674124
		 -0.7713173 -0.54637015 0.32641888 -0.76741129 -0.51529783 0.38150764 -0.62147373
		 -0.7833336 0.012603183 -0.63477916 -0.77267861 0.0048113721 -0.63477916 -0.77267861
		 0.0048113721 -0.62147373 -0.7833336 0.012603183 -0.1877709 -0.85196656 -0.48876891
		 -0.22877716 -0.83804077 -0.49532682 -0.66273105 0.056259077 0.74674124 -0.49480259
		 0.13024603 0.85918939 -0.728567 -0.42572734 0.53660637 -0.76741129 -0.51529783 0.38150764
		 -0.49480259 0.13024603 0.85918939 -0.43131766 0.17529024 0.88500756 -0.69014931 -0.37939239
		 0.61624295 -0.728567 -0.42572734 0.53660637 -0.48038939 0.28306112 0.83012193 -0.73787379
		 -0.24852404 0.6275174 -0.71999359 -0.30705795 0.62235409 -0.45261461 0.2332669 0.86065471
		 -0.61388928 -0.78340858 0.097010002 -0.62147373 -0.7833336 0.012603183 -0.76741129
		 -0.51529783 0.38150764 -0.728567 -0.42572734 0.53660637 -0.728567 -0.42572734 0.53660637
		 -0.69014931 -0.37939239 0.61624295 -0.59533852 -0.78250414 0.18237151 -0.61388928
		 -0.78340858 0.097010002 -0.70978773 -0.67975223 0.18476541 -0.65460777 -0.7297188
		 0.19748199 -0.71999359 -0.30705795 0.62235409 -0.73787379 -0.24852404 0.6275174 -0.1877709
		 -0.85196656 -0.48876891 -0.62147373 -0.7833336 0.012603183 -0.61388928 -0.78340858
		 0.097010002 -0.21904075 -0.88865745 -0.40287608 -0.21904075 -0.88865745 -0.40287608
		 -0.61388928 -0.78340858 0.097010002 -0.59533852 -0.78250414 0.18237151 -0.20978805
		 -0.92136049 -0.32723671 -0.4352175 -0.82418507 -0.36235994 -0.29175732 -0.8989917
		 -0.32663679 -0.65460777 -0.7297188 0.19748199 -0.70978773 -0.67975223 0.18476541
		 -0.43436584 -0.899441 0.048292469 -0.20990564 -0.9592489 0.18915913 -0.15838483 -0.96803313
		 -0.19448929 -0.41411552 -0.90836352 -0.05817239 -0.23555067 -0.97071159 0.047274053
		 -0.15838483 -0.96803313 -0.19448929 -0.20990564 -0.9592489 0.18915913 -0.12723514
		 -0.71536982 0.68706423 0.78756183 0.58347881 0.19823936 0.75840324 0.62950879 0.16894722
		 0.79374272 0.15029302 -0.58939332 0.83518124 0.14045596 -0.53173721 0.78958249 0.60787159
		 0.083974294 0.78756183 0.58347881 0.19823936 0.83518124 0.14045596 -0.53173721 0.82918751
		 0.22943735 -0.50971222 0.81917304 0.55109841 0.15889031 0.86383998 0.12430806 -0.48818842
		 0.79374272 0.15029302 -0.58939332 0.75840324 0.62950879 0.16894722 0.94850421 -0.17634623
		 -0.26313838 0.86383998 0.12430806 -0.48818842 0.81917304 0.55109841 0.15889031 0.88879085
		 0.25165701 0.38303998 0.83539659 0.175256 0.52095866 0.9148584 -0.29848507 -0.27192059
		 0.94850421 -0.17634623 -0.26313838 0.88879085 0.25165701 0.38303998 0.93393862 -0.23688072
		 -0.26766798 0.92850822 -0.25962022 -0.26546165 0.83134437 0.23995724 0.50128543 0.88342136
		 0.23284322 0.40663341 0.8866846 0.17999959 0.42589968 0.9338088 -0.24900194 -0.25690293
		 0.93393862 -0.23688072 -0.26766798 0.88342136 0.23284322 0.40663341 0.8990491 0.12124781
		 0.42072523 0.93323636 -0.29064056 -0.21118219 0.9338088 -0.24900194 -0.25690293 0.8866846
		 0.17999959 0.42589968 0.78756183 0.58347881 0.19823936 0.78958249 0.60787159 0.083974294
		 0.33398214 0.66495895 0.66804606 0.24560122 0.64212674 0.72619092 0.15894811 0.60860944
		 0.77738667 0.75840324 0.62950879 0.16894722 0.78756183 0.58347881 0.19823936 0.24560122
		 0.64212674 0.72619092 0.44118169 0.66373414 0.60399973 0.81917304 0.55109841 0.15889031
		 0.75840324 0.62950879 0.16894722 0.15894811 0.60860944 0.77738667 0.41235808 0.48768148
		 0.76949829 0.88879085 0.25165701 0.38303998;
	setAttr ".n[7304:7469]" -type "float3"  0.81917304 0.55109841 0.15889031 0.44118169
		 0.66373414 0.60399973 0.17113723 0.45586658 0.87344015 0.83539659 0.175256 0.52095866
		 0.88879085 0.25165701 0.38303998 0.41235808 0.48768148 0.76949829 0.83134437 0.23995724
		 0.50128543 0.83539659 0.175256 0.52095866 0.17113723 0.45586658 0.87344015 0.22675157
		 0.4732787 0.85122913 0.33092663 0.46200931 0.82282132 0.8866846 0.17999959 0.42589968
		 0.88342136 0.23284322 0.40663341 0.29976067 0.51845944 0.80083913 0.33434561 0.41705948
		 0.84514755 0.8990491 0.12124781 0.42072523 0.8866846 0.17999959 0.42589968 0.33092663
		 0.46200931 0.82282132 0.44118169 0.66373414 0.60399973 0.15894811 0.60860944 0.77738667
		 0.17113723 0.45586658 0.87344015 0.41235808 0.48768148 0.76949829 0.15894811 0.60860944
		 0.77738667 -0.55541593 0.17883162 0.81211597 -0.544312 0.35025787 0.76226234 0.17113723
		 0.45586658 0.87344015 -0.90565431 -0.248252 0.34374589 -0.96653748 0.057290774 0.2500461
		 -0.544312 0.35025787 0.76226234 -0.55541593 0.17883162 0.81211597 -0.84062415 -0.53286225
		 -0.096999444 -0.91134101 -0.28657919 -0.29551643 -0.96653748 0.057290774 0.2500461
		 -0.90565431 -0.248252 0.34374589 0.83539659 0.175256 0.52095866 0.83134437 0.23995724
		 0.50128543 0.92850822 -0.25962022 -0.26546165 0.9148584 -0.29848507 -0.27192059 0.17113723
		 0.45586658 0.87344015 -0.544312 0.35025787 0.76226234 -0.44455793 0.38272139 0.80987197
		 0.22675157 0.4732787 0.85122913 -0.40053314 0.46463042 0.78974158 0.33092663 0.46200931
		 0.82282132 0.29976067 0.51845944 0.80083913 -0.4779104 0.45052782 0.75407314 -0.38239059
		 0.40322077 0.83137864 0.33434561 0.41705948 0.84514755 0.33092663 0.46200931 0.82282132
		 -0.40053314 0.46463042 0.78974158 -0.544312 0.35025787 0.76226234 -0.96653748 0.057290774
		 0.2500461 -0.92641568 0.036055986 0.37477192 -0.44455793 0.38272139 0.80987197 -0.94453341
		 0.21454114 0.24865389 -0.40053314 0.46463042 0.78974158 -0.4779104 0.45052782 0.75407314
		 -0.94317114 0.11497727 0.31178266 -0.92701524 0.11090194 0.35825056 -0.38239059 0.40322077
		 0.83137864 -0.40053314 0.46463042 0.78974158 -0.94453341 0.21454114 0.24865389 0.70138168
		 -0.4070881 0.58510083 0.64742935 -0.74629837 0.15451226 0.93323636 -0.29064056 -0.21118219
		 0.8990491 0.12124781 0.42072523 0.8990491 0.12124781 0.42072523 0.33434561 0.41705948
		 0.84514755 0.38042149 0.13187206 0.91536289 0.70138168 -0.4070881 0.58510083 -0.12750787
		 -0.93792766 0.32254216 0.64742935 -0.74629837 0.15451226 0.70138168 -0.4070881 0.58510083
		 -0.055222016 -0.68746769 0.72411233 -0.64787304 -0.73548925 0.19828291 -0.12750787
		 -0.93792766 0.32254216 -0.055222016 -0.68746769 0.72411233 -0.66067487 -0.48642102
		 0.57175457 0.15894811 0.60860944 0.77738667 0.24560122 0.64212674 0.72619092 -0.45890218
		 0.31679043 0.83009195 -0.55541593 0.17883162 0.81211597 -0.8128491 -0.28493428 0.50802439
		 -0.90565431 -0.248252 0.34374589 -0.55541593 0.17883162 0.81211597 -0.45890218 0.31679043
		 0.83009195 -0.74761111 -0.64830381 -0.144152 -0.84062415 -0.53286225 -0.096999444
		 -0.90565431 -0.248252 0.34374589 -0.8128491 -0.28493428 0.50802439 -0.42284715 -0.77682143
		 0.46663558 -0.50808501 -0.8341502 -0.21457654 -0.74761111 -0.64830381 -0.144152 -0.8128491
		 -0.28493428 0.50802439 0.23736061 0.19751215 0.95113033 -0.42284715 -0.77682143 0.46663558
		 -0.8128491 -0.28493428 0.50802439 -0.45890218 0.31679043 0.83009195 -0.57000256 -0.81468236
		 0.10672277 -0.56430304 -0.79920834 0.2069494 -0.50808501 -0.8341502 -0.21457654 -0.42284715
		 -0.77682143 0.46663558 -0.0071081631 -0.96934664 0.24559426 -0.66786075 -0.70670128
		 0.23352793 -0.57000256 -0.81468236 0.10672277 -0.42284715 -0.77682143 0.46663558
		 -0.42284715 -0.77682143 0.46663558 0.23736061 0.19751215 0.95113033 0.62685585 -0.77377427
		 -0.091242023 -0.0071081631 -0.96934664 0.24559426 0.866602 0.059005883 -0.49549901
		 0.88160151 0.46046224 0.10369798 0.78958249 0.60787159 0.083974294 0.82918751 0.22943735
		 -0.50971222 0.866602 0.059005883 -0.49549901 0.92823577 0.12440369 -0.35057387 0.88359571
		 0.46758986 0.02486591 0.88160151 0.46046224 0.10369798 -0.96653748 0.057290774 0.2500461
		 -0.91134101 -0.28657919 -0.29551643 -0.9104479 -0.33232617 -0.24625999 -0.92641568
		 0.036055986 0.37477192 -0.93341357 -0.15884335 -0.32172644 -0.94453341 0.21454114
		 0.24865389 -0.94317114 0.11497727 0.31178266 -0.93004113 -0.25470018 -0.2648609 0.88342136
		 0.23284322 0.40663341 0.83134437 0.23995724 0.50128543 0.22675157 0.4732787 0.85122913
		 0.29976067 0.51845944 0.80083913 0.22675157 0.4732787 0.85122913 -0.44455793 0.38272139
		 0.80987197 -0.4779104 0.45052782 0.75407314 0.29976067 0.51845944 0.80083913 -0.44455793
		 0.38272139 0.80987197 -0.92641568 0.036055986 0.37477192 -0.94317114 0.11497727 0.31178266
		 -0.4779104 0.45052782 0.75407314 -0.94317114 0.11497727 0.31178266 -0.92641568 0.036055986
		 0.37477192 -0.9104479 -0.33232617 -0.24625999 -0.93004113 -0.25470018 -0.2648609
		 0.33434561 0.41705948 0.84514755 -0.38239059 0.40322077 0.83137864 -0.44944376 0.16141045
		 0.87860513 0.38042149 0.13187206 0.91536289 0.38042149 0.13187206 0.91536289 -0.44944376
		 0.16141045 0.87860513 -0.480414 -0.19805345 0.85438704 -0.10888465 -0.27464074 0.95536202
		 -0.89574224 -0.08269798 0.43681449 -0.44944376 0.16141045 0.87860513 -0.38239059
		 0.40322077 0.83137864 -0.92701524 0.11090194 0.35825056 -0.89574224 -0.08269798 0.43681449
		 -0.66067487 -0.48642102 0.57175457 -0.480414 -0.19805345 0.85438704 -0.44944376 0.16141045
		 0.87860513 -0.66067487 -0.48642102 0.57175457 -0.89574224 -0.08269798 0.43681449
		 -0.87849379 -0.46566549 -0.10679089 -0.64787304 -0.73548925 0.19828291 -0.94453341
		 0.21454114 0.24865389 -0.93341357 -0.15884335 -0.32172644 -0.92423904 -0.28040147
		 -0.25914702 -0.92701524 0.11090194 0.35825056;
	setAttr ".n[7470:7635]" -type "float3"  -0.92423904 -0.28040147 -0.25914702 -0.87849379
		 -0.46566549 -0.10679089 -0.89574224 -0.08269798 0.43681449 -0.92701524 0.11090194
		 0.35825056 0.78958249 0.60787159 0.083974294 0.88160151 0.46046224 0.10369798 0.97387511
		 0.22698069 0.0068579861 0.33398214 0.66495895 0.66804606 0.33398214 0.66495895 0.66804606
		 0.23736061 0.19751215 0.95113033 -0.45890218 0.31679043 0.83009195 0.24560122 0.64212674
		 0.72619092 0.23736061 0.19751215 0.95113033 0.33398214 0.66495895 0.66804606 0.97387511
		 0.22698069 0.0068579861 0.62685585 -0.77377427 -0.091242023 0.88160151 0.46046224
		 0.10369798 0.88359571 0.46758986 0.02486591 0.94019783 0.31537092 0.12872137 0.97387511
		 0.22698069 0.0068579861 0.92823577 0.12440369 -0.35057387 0.866602 0.059005883 -0.49549901
		 0.9954682 0.035112102 -0.088375546 0.98207545 0.1848519 -0.036845263 0.83518124 0.14045596
		 -0.53173721 0.37931231 -0.34991619 -0.85655171 0.46391657 -0.31665075 -0.82735348
		 0.82918751 0.22943735 -0.50971222 0.25775066 -0.42517635 -0.86763453 0.37931231 -0.34991619
		 -0.85655171 0.83518124 0.14045596 -0.53173721 0.79374272 0.15029302 -0.58939332 0.48036328
		 -0.25751922 -0.83841217 0.25775066 -0.42517635 -0.86763453 0.79374272 0.15029302
		 -0.58939332 0.86383998 0.12430806 -0.48818842 0.52885425 -0.46929634 -0.70715922
		 0.48036328 -0.25751922 -0.83841217 0.86383998 0.12430806 -0.48818842 0.94850421 -0.17634623
		 -0.26313838 0.28591582 -0.5556283 -0.78072363 0.52885425 -0.46929634 -0.70715922
		 0.94850421 -0.17634623 -0.26313838 0.9148584 -0.29848507 -0.27192059 0.92850822 -0.25962022
		 -0.26546165 0.33644116 -0.54561114 -0.76753885 0.28591582 -0.5556283 -0.78072363
		 0.9148584 -0.29848507 -0.27192059 0.41485813 -0.53040433 -0.73929965 0.41655958 -0.51050889
		 -0.75223583 0.93393862 -0.23688072 -0.26766798 0.9338088 -0.24900194 -0.25690293
		 0.41480356 -0.56755459 -0.71121013 0.41485813 -0.53040433 -0.73929965 0.9338088 -0.24900194
		 -0.25690293 0.93323636 -0.29064056 -0.21118219 0.48036328 -0.25751922 -0.83841217
		 0.52885425 -0.46929634 -0.70715922 0.28591582 -0.5556283 -0.78072363 0.25775066 -0.42517635
		 -0.86763453 0.25775066 -0.42517635 -0.86763453 0.28591582 -0.5556283 -0.78072363
		 -0.4281989 -0.55453831 -0.71353555 -0.37956831 -0.67763013 -0.62987721 -0.84062415
		 -0.53286225 -0.096999444 -0.37956831 -0.67763013 -0.62987721 -0.4281989 -0.55453831
		 -0.71353555 -0.91134101 -0.28657919 -0.29551643 0.28591582 -0.5556283 -0.78072363
		 0.33644116 -0.54561114 -0.76753885 -0.41208437 -0.55849284 -0.71991128 -0.4281989
		 -0.55453831 -0.71353555 -0.37032694 -0.5189963 -0.77039003 -0.43494782 -0.50313991
		 -0.74677348 0.41655958 -0.51050889 -0.75223583 0.41485813 -0.53040433 -0.73929965
		 -0.35088724 -0.59596449 -0.72229111 -0.37032694 -0.5189963 -0.77039003 0.41485813
		 -0.53040433 -0.73929965 0.41480356 -0.56755459 -0.71121013 -0.4281989 -0.55453831
		 -0.71353555 -0.41208437 -0.55849284 -0.71991128 -0.9104479 -0.33232617 -0.24625999
		 -0.91134101 -0.28657919 -0.29551643 -0.93341357 -0.15884335 -0.32172644 -0.93004113
		 -0.25470018 -0.2648609 -0.43494782 -0.50313991 -0.74677348 -0.37032694 -0.5189963
		 -0.77039003 -0.92423904 -0.28040147 -0.25914702 -0.93341357 -0.15884335 -0.32172644
		 -0.37032694 -0.5189963 -0.77039003 -0.35088724 -0.59596449 -0.72229111 0.47933963
		 -0.72995907 -0.48723018 0.41480356 -0.56755459 -0.71121013 0.93323636 -0.29064056
		 -0.21118219 0.64742935 -0.74629837 0.15451226 0.25775066 -0.42517635 -0.86763453
		 -0.37956831 -0.67763013 -0.62987721 -0.25211972 -0.62291586 -0.74054813 0.37931231
		 -0.34991619 -0.85655171 -0.74761111 -0.64830381 -0.144152 -0.25211972 -0.62291586
		 -0.74054813 -0.37956831 -0.67763013 -0.62987721 -0.84062415 -0.53286225 -0.096999444
		 -0.090038612 -0.66345346 -0.74278027 -0.25211972 -0.62291586 -0.74054813 -0.74761111
		 -0.64830381 -0.144152 -0.50808501 -0.8341502 -0.21457654 0.085227795 -0.97698826
		 -0.19552524 -0.50808501 -0.8341502 -0.21457654 -0.56430304 -0.79920834 0.2069494
		 -0.48527235 -0.82636034 0.28572598 -0.50808501 -0.8341502 -0.21457654 0.085227795
		 -0.97698826 -0.19552524 0.075580709 -0.66543061 -0.74262351 -0.090038612 -0.66345346
		 -0.74278027 0.93393862 -0.23688072 -0.26766798 0.41655958 -0.51050889 -0.75223583
		 0.33644116 -0.54561114 -0.76753885 0.92850822 -0.25962022 -0.26546165 0.33644116
		 -0.54561114 -0.76753885 0.41655958 -0.51050889 -0.75223583 -0.43494782 -0.50313991
		 -0.74677348 -0.41208437 -0.55849284 -0.71991128 -0.41208437 -0.55849284 -0.71991128
		 -0.43494782 -0.50313991 -0.74677348 -0.93004113 -0.25470018 -0.2648609 -0.9104479
		 -0.33232617 -0.24625999 -0.37194544 -0.77527219 -0.51049936 -0.35088724 -0.59596449
		 -0.72229111 0.41480356 -0.56755459 -0.71121013 0.47933963 -0.72995907 -0.48723018
		 -0.37194544 -0.77527219 -0.51049936 0.47933963 -0.72995907 -0.48723018 -0.0032793612
		 -0.99085778 -0.13487087 -0.4326846 -0.89821947 -0.077367835 -0.87849379 -0.46566549
		 -0.10679089 -0.92423904 -0.28040147 -0.25914702 -0.35088724 -0.59596449 -0.72229111
		 -0.37194544 -0.77527219 -0.51049936 -0.87849379 -0.46566549 -0.10679089 -0.37194544
		 -0.77527219 -0.51049936 -0.4326846 -0.89821947 -0.077367835 -0.64787304 -0.73548925
		 0.19828291 0.82918751 0.22943735 -0.50971222 0.46391657 -0.31665075 -0.82735348 0.9954682
		 0.035112102 -0.088375546 0.866602 0.059005883 -0.49549901 0.46391657 -0.31665075
		 -0.82735348 0.37931231 -0.34991619 -0.85655171 -0.25211972 -0.62291586 -0.74054813
		 -0.090038612 -0.66345346 -0.74278027 0.46391657 -0.31665075 -0.82735348 -0.090038612
		 -0.66345346 -0.74278027 0.075580709 -0.66543061 -0.74262351 0.9954682 0.035112102
		 -0.088375546 -0.10888465 -0.27464074 0.95536202 -0.480414 -0.19805345 0.85438704
		 -0.66067487 -0.48642102 0.57175457 -0.055222016 -0.68746769 0.72411233 -0.64787304
		 -0.73548925 0.19828291 -0.4326846 -0.89821947 -0.077367835 -0.0032793612 -0.99085778
		 -0.13487087 -0.12750787 -0.93792766 0.32254216 0.70138168 -0.4070881 0.58510083 0.38042149
		 0.13187206 0.91536289;
	setAttr ".n[7636:7801]" -type "float3"  -0.10888465 -0.27464074 0.95536202 -0.055222016
		 -0.68746769 0.72411233 0.64742935 -0.74629837 0.15451226 -0.12750787 -0.93792766
		 0.32254216 -0.0032793612 -0.99085778 -0.13487087 0.47933963 -0.72995907 -0.48723018
		 0.89271289 0.43219024 -0.12757459 0.86065692 0.48524258 -0.15430267 0.94019783 0.31537092
		 0.12872137 0.88359571 0.46758986 0.02486591 0.88359571 0.46758986 0.02486591 0.92823577
		 0.12440369 -0.35057387 0.8996985 0.31864926 -0.29833758 0.89271289 0.43219024 -0.12757459
		 0.92823577 0.12440369 -0.35057387 0.98207545 0.1848519 -0.036845263 0.84146577 0.27791324
		 -0.46335685 0.8996985 0.31864926 -0.29833758 0.84146577 0.27791324 -0.46335685 0.86065692
		 0.48524258 -0.15430267 0.89271289 0.43219024 -0.12757459 0.8996985 0.31864926 -0.29833758
		 0.85895276 0.15372297 -0.48843563 0.87585407 0.47836044 -0.063646443 0.86065692 0.48524258
		 -0.15430267 0.84146577 0.27791324 -0.46335685 -0.69098592 -0.65669298 0.30214688
		 -0.77892894 -0.56250083 0.27724087 -0.48527235 -0.82636034 0.28572598 -0.56430304
		 -0.79920834 0.2069494 -0.69098592 -0.65669298 0.30214688 -0.56430304 -0.79920834
		 0.2069494 -0.57000256 -0.81468236 0.10672277 -0.80346358 -0.56529033 0.18679684 -0.76448768
		 -0.61972874 0.17746788 -0.49771249 -0.76275235 -0.41290569 -0.46011052 -0.84017962
		 -0.28704795 -0.68609446 -0.71630847 0.12718701 -0.60795581 -0.77953684 0.15070534
		 -0.48527235 -0.82636034 0.28572598 -0.77892894 -0.56250083 0.27724087 -0.68609446
		 -0.71630847 0.12718701 -0.077942096 -0.73521638 0.67333639 0.085227795 -0.97698826
		 -0.19552524 -0.48527235 -0.82636034 0.28572598 -0.60795581 -0.77953684 0.15070534
		 0.87585407 0.47836044 -0.063646443 0.85895276 0.15372297 -0.48843563 0.78363675 0.20944592
		 -0.58484691 0.87553054 0.47134078 -0.10622707 0.59821445 -0.32758087 -0.73132086
		 0.9050355 0.36953548 -0.2106045 0.87553054 0.47134078 -0.10622707 0.78363675 0.20944592
		 -0.58484691 0.59821445 -0.32758087 -0.73132086 0.54310113 -0.38542634 -0.74598104
		 0.8797946 0.33771536 -0.33452922 0.9050355 0.36953548 -0.2106045 0.43290487 -0.52604932
		 -0.73202837 0.84990072 0.10686328 -0.51599318 0.85932577 0.28158754 -0.42692825 0.5131523
		 -0.39719379 -0.76086253 0.39880985 -0.59999162 -0.69351333 0.81985718 -0.0054239687
		 -0.57254243 0.84990072 0.10686328 -0.51599318 0.43290487 -0.52604932 -0.73202837
		 0.39880985 -0.59999162 -0.69351333 0.32166538 -0.61210638 -0.72239679 0.75573927
		 -0.015311649 -0.6546936 0.81985718 -0.0054239687 -0.57254243 0.91312474 0.4036544
		 0.057151824 0.85719734 0.49695596 0.13508327 0.78116012 0.12353923 -0.61198604 0.82588929
		 0.16663699 -0.53864557 0.91323876 0.39546052 0.098009787 0.83203799 -0.0062999628
		 -0.55468285 0.78116012 0.12353923 -0.61198604 0.85719734 0.49695596 0.13508327 0.85825765
		 -0.16612417 -0.48558894 0.83203799 -0.0062999628 -0.55468285 0.91323876 0.39546052
		 0.098009787 0.9610188 0.16911848 0.21872775 0.93972379 0.078848392 0.33271936 0.83393121
		 -0.22491394 -0.50395674 0.85825765 -0.16612417 -0.48558894 0.9610188 0.16911848 0.21872775
		 0.89711857 -0.11407461 -0.42680821 0.88037217 -0.17610513 -0.44037697 0.92338234
		 0.17241824 0.34298256 0.94169867 0.24791969 0.22746317 0.95432442 0.17496593 0.24218142
		 0.90511209 -0.14663741 -0.39908591 0.89711857 -0.11407461 -0.42680821 0.94169867
		 0.24791969 0.22746317 0.96740848 0.090171114 0.23662212 0.91154033 -0.18408164 -0.36770669
		 0.90511209 -0.14663741 -0.39908591 0.95432442 0.17496593 0.24218142 0.85719734 0.49695596
		 0.13508327 0.91312474 0.4036544 0.057151824 0.9954682 0.035112102 -0.088375546 0.42847162
		 0.44106817 0.78858793 0.58092678 0.50100845 0.64149404 0.91323876 0.39546052 0.098009787
		 0.85719734 0.49695596 0.13508327 0.42847162 0.44106817 0.78858793 0.59315073 0.3312054
		 0.7338087 0.9610188 0.16911848 0.21872775 0.91323876 0.39546052 0.098009787 0.58092678
		 0.50100845 0.64149404 0.37682152 0.34329686 0.86032134 0.93972379 0.078848392 0.33271936
		 0.9610188 0.16911848 0.21872775 0.59315073 0.3312054 0.7338087 0.92338234 0.17241824
		 0.34298256 0.93972379 0.078848392 0.33271936 0.37682152 0.34329686 0.86032134 0.4740777
		 0.37390915 0.79714632 0.51940691 0.40309229 0.75348061 0.95432442 0.17496593 0.24218142
		 0.94169867 0.24791969 0.22746317 0.49584681 0.4344219 0.75193983 0.52723199 0.3438206
		 0.77705455 0.96740848 0.090171114 0.23662212 0.95432442 0.17496593 0.24218142 0.51940691
		 0.40309229 0.75348061 0.58092678 0.50100845 0.64149404 0.42847162 0.44106817 0.78858793
		 0.37682152 0.34329686 0.86032134 0.59315073 0.3312054 0.7338087 0.42847162 0.44106817
		 0.78858793 -0.20374143 0.10836183 0.97300935 -0.27718452 0.26483318 0.9235974 0.37682152
		 0.34329686 0.86032134 -0.78464252 -0.33405972 0.52224541 -0.84596741 -0.040185627
		 0.53171819 -0.27718452 0.26483318 0.9235974 -0.20374143 0.10836183 0.97300935 -0.8726964
		 -0.47757888 -0.10158437 -0.93740886 -0.32670501 -0.12053388 -0.84596741 -0.040185627
		 0.53171819 -0.78464252 -0.33405972 0.52224541 0.93972379 0.078848392 0.33271936 0.92338234
		 0.17241824 0.34298256 0.88037217 -0.17610513 -0.44037697 0.83393121 -0.22491394 -0.50395674
		 0.37682152 0.34329686 0.86032134 -0.27718452 0.26483318 0.9235974 -0.1918548 0.29755315
		 0.9352293 0.4740777 0.37390915 0.79714632 -0.20669551 0.38573381 0.89915872 0.51940691
		 0.40309229 0.75348061 0.49584681 0.4344219 0.75193983 -0.24678022 0.37077874 0.89533383
		 -0.19560465 0.33532846 0.92157131 0.52723199 0.3438206 0.77705455 0.51940691 0.40309229
		 0.75348061 -0.20669551 0.38573381 0.89915872 -0.27718452 0.26483318 0.9235974 -0.84596741
		 -0.040185627 0.53171819 -0.79016864 0.011545192 0.61278075 -0.1918548 0.29755315
		 0.9352293 -0.85493821 0.14714551 0.49742225 -0.20669551 0.38573381 0.89915872 -0.24678022
		 0.37077874 0.89533383 -0.81676811 0.047404837 0.57501531;
	setAttr ".n[7802:7967]" -type "float3"  -0.83215547 0.099363185 0.54556781 -0.19560465
		 0.33532846 0.92157131 -0.20669551 0.38573381 0.89915872 -0.85493821 0.14714551 0.49742225
		 0.82178766 -0.44059095 0.36130971 0.67137086 -0.73612124 -0.085945837 0.91154033
		 -0.18408164 -0.36770669 0.96740848 0.090171114 0.23662212 0.96740848 0.090171114
		 0.23662212 0.52723199 0.3438206 0.77705455 0.59343916 0.026415247 0.80444527 0.82178766
		 -0.44059095 0.36130971 -0.095089957 -0.97831428 0.1840082 0.67137086 -0.73612124
		 -0.085945837 0.82178766 -0.44059095 0.36130971 0.11002501 -0.78681993 0.60729641
		 -0.6263535 -0.76157808 0.16637333 -0.095089957 -0.97831428 0.1840082 0.11002501 -0.78681993
		 0.60729641 -0.54102314 -0.62496167 0.56277603 -0.61688673 -0.74960631 -0.23987742
		 -0.8726964 -0.47757888 -0.10158437 -0.78464252 -0.33405972 0.52224541 -0.60795581
		 -0.77953684 0.15070534 -0.78464252 -0.33405972 0.52224541 -0.20374143 0.10836183
		 0.97300935 -0.077942096 -0.73521638 0.67333639 -0.60795581 -0.77953684 0.15070534
		 0.77747893 0.012338074 -0.62878793 0.94205141 0.33247936 -0.044683993 0.91312474
		 0.4036544 0.057151824 0.82588929 0.16663699 -0.53864557 0.77747893 0.012338074 -0.62878793
		 0.67067575 0.22528206 -0.70671213 0.84117389 0.3449657 -0.41644341 0.94205141 0.33247936
		 -0.044683993 -0.84596741 -0.040185627 0.53171819 -0.93740886 -0.32670501 -0.12053388
		 -0.94862813 -0.30495986 -0.084286012 -0.79016864 0.011545192 0.61278075 -0.97917563
		 -0.17569625 -0.10171492 -0.85493821 0.14714551 0.49742225 -0.81676811 0.047404837
		 0.57501531 -0.96087056 -0.26663861 -0.075043783 0.94169867 0.24791969 0.22746317
		 0.92338234 0.17241824 0.34298256 0.4740777 0.37390915 0.79714632 0.49584681 0.4344219
		 0.75193983 0.4740777 0.37390915 0.79714632 -0.1918548 0.29755315 0.9352293 -0.24678022
		 0.37077874 0.89533383 0.49584681 0.4344219 0.75193983 -0.1918548 0.29755315 0.9352293
		 -0.79016864 0.011545192 0.61278075 -0.81676811 0.047404837 0.57501531 -0.24678022
		 0.37077874 0.89533383 -0.81676811 0.047404837 0.57501531 -0.79016864 0.011545192
		 0.61278075 -0.94862813 -0.30495986 -0.084286012 -0.96087056 -0.26663861 -0.075043783
		 0.52723199 0.3438206 0.77705455 -0.19560465 0.33532846 0.92157131 -0.24337335 0.071158804
		 0.96731889 0.59343916 0.026415247 0.80444527 0.59343916 0.026415247 0.80444527 -0.24337335
		 0.071158804 0.96731889 -0.28975907 -0.36271578 0.88570702 0.11396149 -0.41273886
		 0.90369213 -0.81748956 -0.17208461 0.54963416 -0.24337335 0.071158804 0.96731889
		 -0.19560465 0.33532846 0.92157131 -0.83215547 0.099363185 0.54556781 -0.81748956
		 -0.17208461 0.54963416 -0.54102314 -0.62496167 0.56277603 -0.28975907 -0.36271578
		 0.88570702 -0.24337335 0.071158804 0.96731889 -0.54102314 -0.62496167 0.56277603
		 -0.81748956 -0.17208461 0.54963416 -0.86188638 -0.50643575 -0.025974594 -0.6263535
		 -0.76157808 0.16637333 -0.85493821 0.14714551 0.49742225 -0.97917563 -0.17569625
		 -0.10171492 -0.96317351 -0.26024666 -0.067590848 -0.83215547 0.099363185 0.54556781
		 -0.96317351 -0.26024666 -0.067590848 -0.86188638 -0.50643575 -0.025974594 -0.81748956
		 -0.17208461 0.54963416 -0.83215547 0.099363185 0.54556781 0.91312474 0.4036544 0.057151824
		 0.94205141 0.33247936 -0.044683993 0.98207545 0.1848519 -0.036845263 0.9954682 0.035112102
		 -0.088375546 -0.20374143 0.10836183 0.97300935 0.42847162 0.44106817 0.78858793 0.9954682
		 0.035112102 -0.088375546 -0.077942096 -0.73521638 0.67333639 0.94205141 0.33247936
		 -0.044683993 0.84117389 0.3449657 -0.41644341 0.84146577 0.27791324 -0.46335685 0.98207545
		 0.1848519 -0.036845263 0.67067575 0.22528206 -0.70671213 0.77747893 0.012338074 -0.62878793
		 0.36192918 -0.35200948 -0.86318976 0.38843215 -0.24327092 -0.88878554 0.82588929
		 0.16663699 -0.53864557 0.78116012 0.12353923 -0.61198604 0.20914418 -0.31021646 -0.92737502
		 0.31056163 -0.32932299 -0.89168257 0.47948632 -0.25390083 -0.84001625 0.20914418
		 -0.31021646 -0.92737502 0.78116012 0.12353923 -0.61198604 0.83203799 -0.0062999628
		 -0.55468285 0.53272754 -0.39209163 -0.74997705 0.47948632 -0.25390083 -0.84001625
		 0.83203799 -0.0062999628 -0.55468285 0.85825765 -0.16612417 -0.48558894 0.20164545
		 -0.44903627 -0.87046283 0.53272754 -0.39209163 -0.74997705 0.85825765 -0.16612417
		 -0.48558894 0.83393121 -0.22491394 -0.50395674 0.88037217 -0.17610513 -0.44037697
		 0.30797532 -0.39864111 -0.86384982 0.20164545 -0.44903627 -0.87046283 0.83393121
		 -0.22491394 -0.50395674 0.36189824 -0.3848038 -0.84909111 0.33994669 -0.34861794
		 -0.87344247 0.89711857 -0.11407461 -0.42680821 0.90511209 -0.14663741 -0.39908591
		 0.35248467 -0.48386335 -0.8010186 0.36189824 -0.3848038 -0.84909111 0.90511209 -0.14663741
		 -0.39908591 0.91154033 -0.18408164 -0.36770669 0.47948632 -0.25390083 -0.84001625
		 0.53272754 -0.39209163 -0.74997705 0.20164545 -0.44903627 -0.87046283 0.20914418
		 -0.31021646 -0.92737502 0.20914418 -0.31021646 -0.92737502 0.20164545 -0.44903627
		 -0.87046283 -0.4898977 -0.49702224 -0.71621865 -0.44012973 -0.55294275 -0.70748866
		 -0.8726964 -0.47757888 -0.10158437 -0.44012973 -0.55294275 -0.70748866 -0.4898977
		 -0.49702224 -0.71621865 -0.93740886 -0.32670501 -0.12053388 0.20164545 -0.44903627
		 -0.87046283 0.30797532 -0.39864111 -0.86384982 -0.48168162 -0.47558564 -0.73607141
		 -0.4898977 -0.49702224 -0.71621865 -0.50445652 -0.45035678 -0.73668337 -0.51849073
		 -0.44144589 -0.73232025 0.33994669 -0.34861794 -0.87344247 0.36189824 -0.3848038
		 -0.84909111 -0.49144647 -0.5492267 -0.67589229 -0.50445652 -0.45035678 -0.73668337
		 0.36189824 -0.3848038 -0.84909111 0.35248467 -0.48386335 -0.8010186 -0.4898977 -0.49702224
		 -0.71621865 -0.48168162 -0.47558564 -0.73607141 -0.94862813 -0.30495986 -0.084286012
		 -0.93740886 -0.32670501 -0.12053388 -0.97917563 -0.17569625 -0.10171492 -0.96087056
		 -0.26663861 -0.075043783 -0.51849073 -0.44144589 -0.73232025 -0.50445652 -0.45035678
		 -0.73668337 -0.96317351 -0.26024666 -0.067590848 -0.97917563 -0.17569625 -0.10171492;
	setAttr ".n[7968:8133]" -type "float3"  -0.50445652 -0.45035678 -0.73668337 -0.49144647
		 -0.5492267 -0.67589229 0.33951825 -0.67707843 -0.65291053 0.35248467 -0.48386335
		 -0.8010186 0.91154033 -0.18408164 -0.36770669 0.67137086 -0.73612124 -0.085945837
		 -0.36933547 -0.64723879 -0.66683829 -0.44012973 -0.55294275 -0.70748866 -0.8726964
		 -0.47757888 -0.10158437 -0.61688673 -0.74960631 -0.23987742 -0.61688673 -0.74960631
		 -0.23987742 -0.46011052 -0.84017962 -0.28704795 -0.089615151 -0.7037822 -0.70474094
		 -0.36933547 -0.64723879 -0.66683829 0.89711857 -0.11407461 -0.42680821 0.33994669
		 -0.34861794 -0.87344247 0.30797532 -0.39864111 -0.86384982 0.88037217 -0.17610513
		 -0.44037697 0.30797532 -0.39864111 -0.86384982 0.33994669 -0.34861794 -0.87344247
		 -0.51849073 -0.44144589 -0.73232025 -0.48168162 -0.47558564 -0.73607141 -0.48168162
		 -0.47558564 -0.73607141 -0.51849073 -0.44144589 -0.73232025 -0.96087056 -0.26663861
		 -0.075043783 -0.94862813 -0.30495986 -0.084286012 -0.46731102 -0.73489898 -0.49147117
		 -0.49144647 -0.5492267 -0.67589229 0.35248467 -0.48386335 -0.8010186 0.33951825 -0.67707843
		 -0.65291053 -0.46731102 -0.73489898 -0.49147117 0.33951825 -0.67707843 -0.65291053
		 -0.079727091 -0.95012003 -0.30152208 -0.47219634 -0.8737964 -0.11623424 -0.86188638
		 -0.50643575 -0.025974594 -0.96317351 -0.26024666 -0.067590848 -0.49144647 -0.5492267
		 -0.67589229 -0.46731102 -0.73489898 -0.49147117 -0.86188638 -0.50643575 -0.025974594
		 -0.46731102 -0.73489898 -0.49147117 -0.47219634 -0.8737964 -0.11623424 -0.6263535
		 -0.76157808 0.16637333 0.82588929 0.16663699 -0.53864557 0.31056163 -0.32932299 -0.89168257
		 0.36192918 -0.35200948 -0.86318976 0.77747893 0.012338074 -0.62878793 0.20914418
		 -0.31021646 -0.92737502 -0.44012973 -0.55294275 -0.70748866 -0.36933547 -0.64723879
		 -0.66683829 0.31056163 -0.32932299 -0.89168257 0.31056163 -0.32932299 -0.89168257
		 -0.36933547 -0.64723879 -0.66683829 -0.089615151 -0.7037822 -0.70474094 0.36192918
		 -0.35200948 -0.86318976 0.11396149 -0.41273886 0.90369213 -0.28975907 -0.36271578
		 0.88570702 -0.54102314 -0.62496167 0.56277603 0.11002501 -0.78681993 0.60729641 -0.6263535
		 -0.76157808 0.16637333 -0.47219634 -0.8737964 -0.11623424 -0.079727091 -0.95012003
		 -0.30152208 -0.095089957 -0.97831428 0.1840082 0.82178766 -0.44059095 0.36130971
		 0.59343916 0.026415247 0.80444527 0.11396149 -0.41273886 0.90369213 0.11002501 -0.78681993
		 0.60729641 0.67137086 -0.73612124 -0.085945837 -0.095089957 -0.97831428 0.1840082
		 -0.079727091 -0.95012003 -0.30152208 0.33951825 -0.67707843 -0.65291053 0.085227795
		 -0.97698826 -0.19552524 -0.077942096 -0.73521638 0.67333639 0.9954682 0.035112102
		 -0.088375546 0.075580709 -0.66543061 -0.74262351 -0.46011052 -0.84017962 -0.28704795
		 -0.61688673 -0.74960631 -0.23987742 -0.60795581 -0.77953684 0.15070534 -0.68609446
		 -0.71630847 0.12718701 -0.22415878 -0.51006478 -0.83041358 -0.089615151 -0.7037822
		 -0.70474094 -0.46011052 -0.84017962 -0.28704795 -0.49771249 -0.76275235 -0.41290569
		 0.38843215 -0.24327092 -0.88878554 0.36192918 -0.35200948 -0.86318976 -0.089615151
		 -0.7037822 -0.70474094 -0.22415878 -0.51006478 -0.83041358 0.38843215 -0.24327092
		 -0.88878554 -0.22415878 -0.51006478 -0.83041358 -0.49771249 -0.76275235 -0.41290569
		 -0.31006396 -0.71704268 -0.6242677 0.41398811 -0.24658813 -0.87624663 0.38843215
		 -0.24327092 -0.88878554 -0.31006396 -0.71704268 -0.6242677 -0.27665529 -0.63282382
		 -0.72318453 -0.27665529 -0.63282382 -0.72318453 -0.36130413 -0.51147872 -0.77964664
		 0.28243515 -0.22850995 -0.93167245 0.41398811 -0.24658813 -0.87624663 -0.36130413
		 -0.51147872 -0.77964664 -0.38099548 -0.71458787 -0.58669126 0.083243512 -0.37956405
		 -0.92141289 0.28243515 -0.22850995 -0.93167245 -0.38099548 -0.71458787 -0.58669126
		 -0.25069663 -0.83881289 -0.483264 0.59821445 -0.32758087 -0.73132086 0.083243512
		 -0.37956405 -0.92141289 0.5131523 -0.39719379 -0.76086253 0.54310113 -0.38542634
		 -0.74598104 -0.22877716 -0.83804077 -0.49532682 -0.1877709 -0.85196656 -0.48876891
		 0.84117389 0.3449657 -0.41644341 0.67067575 0.22528206 -0.70671213 0.38843215 -0.24327092
		 -0.88878554 0.84146577 0.27791324 -0.46335685 0.84146577 0.27791324 -0.46335685 0.38843215
		 -0.24327092 -0.88878554 0.41398811 -0.24658813 -0.87624663 0.85895276 0.15372297
		 -0.48843563 0.28243515 -0.22850995 -0.93167245 0.78363675 0.20944592 -0.58484691
		 0.85895276 0.15372297 -0.48843563 0.41398811 -0.24658813 -0.87624663 0.78363675 0.20944592
		 -0.58484691 0.28243515 -0.22850995 -0.93167245 0.083243512 -0.37956405 -0.92141289
		 0.59821445 -0.32758087 -0.73132086 0.43290487 -0.52604932 -0.73202837 0.5131523 -0.39719379
		 -0.76086253 -0.1877709 -0.85196656 -0.48876891 -0.21904075 -0.88865745 -0.40287608
		 0.39880985 -0.59999162 -0.69351333 0.43290487 -0.52604932 -0.73202837 -0.21904075
		 -0.88865745 -0.40287608 -0.20978805 -0.92136049 -0.32723671 0.32166538 -0.61210638
		 -0.72239679 0.39880985 -0.59999162 -0.69351333 -0.20978805 -0.92136049 -0.32723671
		 -0.29175732 -0.8989917 -0.32663679 -0.60839796 -0.78750253 -0.098446622 -0.74148929
		 -0.66489923 -0.090014562 -0.81070411 -0.57722789 0.097810082 -0.65395361 -0.75649816
		 0.0074283471 -0.81070411 -0.57722789 0.097810082 -0.74148929 -0.66489923 -0.090014562
		 -0.62861419 -0.76641792 -0.13209009 -0.68277025 -0.72515655 0.08929009 -0.62861419
		 -0.76641792 -0.13209009 -0.43436584 -0.899441 0.048292469 -0.41411552 -0.90836352
		 -0.05817239 -0.68277025 -0.72515655 0.08929009 -0.80346358 -0.56529033 0.18679684
		 -0.81070411 -0.57722789 0.097810082 -0.77892894 -0.56250083 0.27724087 -0.69098592
		 -0.65669298 0.30214688 -0.79203606 -0.51224643 0.33208802 -0.77892894 -0.56250083
		 0.27724087 -0.81070411 -0.57722789 0.097810082 -0.68277025 -0.72515655 0.08929009
		 3.1003468e-31 -0.33369347 -0.94268161 -0.086300254 -0.34910104 -0.93310273 -0.0022999856
		 -0.094799407 -0.99549371 2.1078109e-31 -0.074899331 -0.99719107 2.1078109e-31 -0.074899331
		 -0.99719107 -0.0022999856 -0.094799407 -0.99549371 0.007000078 0.23400259 -0.97221076
		 7.6483322e-32 0.2070083 -0.9783392;
	setAttr ".n[8134:8299]" -type "float3"  -0.0051631173 -0.99995279 -0.0082326112
		 -0.0061595892 -0.99994361 -0.0086532729 -0.0052988213 -0.99995059 -0.0084103178 -0.0051256404
		 -0.99995458 -0.0080361618 -0.005280083 -0.99995154 -0.0083120931 -0.0051256404 -0.99995458
		 -0.0080361618 -0.0052988213 -0.99995059 -0.0084103178 -0.0027312883 -0.99994189 -0.010427156
		 -0.002894806 -0.99994892 -0.009683378 -0.0020709108 -0.99996972 -0.0074991775 -0.0024541502
		 -0.99997711 -0.0063062562 -0.0051631173 -0.99995279 -0.0082326112 -0.0051256404 -0.99995458
		 -0.0080361618 -0.0051023667 -0.9999513 -0.0084478017 -0.0047236588 -0.99994713 -0.009130856
		 -0.0047236588 -0.99994713 -0.009130856 -0.0051023667 -0.9999513 -0.0084478017 -0.0040315269
		 -0.99994415 -0.009771903 -0.0035875218 -0.99993104 -0.011179974 -0.97641623 0.1761304
		 0.12485767 -0.92489171 0.14120457 0.35303903 -0.88526213 0.34527177 0.31160611 -0.95080382
		 0.25175917 0.18052545 -0.0024541502 -0.99997711 -0.0063062562 -0.0020709108 -0.99996972
		 -0.0074991775 -0.0019481943 -0.99999142 -0.0036541678 -0.0030933195 -0.99999505 -0.00058530358
		 -0.95080382 0.25175917 0.18052545 -0.97751892 0.13079089 0.16538006 -0.9936769 0.019113965
		 0.11063869 -0.97641623 0.1761304 0.12485767 -0.0035875218 -0.99993104 -0.011179974
		 -0.0040315269 -0.99994415 -0.009771903 -0.002894806 -0.99994892 -0.009683378 -0.0027312883
		 -0.99994189 -0.010427156 -0.95080382 0.25175917 0.18052545 -0.88526213 0.34527177
		 0.31160611 -0.434387 0.83855706 0.32883126 -0.53236699 0.78217679 0.32370484 0.89867032
		 0.40616813 0.16558705 0.3094188 0.92032397 0.23929863 0.55417442 0.49530336 0.66900319
		 -0.57398272 0.39125851 0.71934736 -0.57644552 0.70451689 0.41396433 0.58543015 0.77636701
		 0.23350756 0.66766101 0.53948265 0.51301777 0.48753822 0.86710811 0.10212727 0.58543015
		 0.77636701 0.23350756 -0.57644552 0.70451689 0.41396433 -0.53236699 0.78217679 0.32370484
		 -0.53236699 0.78217679 0.32370484 -0.434387 0.83855706 0.32883126 0.3094188 0.92032397
		 0.23929863 0.48753822 0.86710811 0.10212727 -0.36480856 0.51017195 0.77887052 -0.434387
		 0.83855706 0.32883126 -0.88526213 0.34527177 0.31160611 0.58543015 0.77636701 0.23350756
		 0.94254464 0.13443002 -0.30584019 0.66766101 0.53948265 0.51301777 -0.57398272 0.39125851
		 0.71934736 -0.97751892 0.13079089 0.16538006 -0.57644552 0.70451689 0.41396433 -0.5981366
		 -0.80050784 0.037681013 -0.55178046 -0.60593754 0.57304281 -0.55821168 -0.60529476
		 0.56746632 -0.60353267 -0.79567349 0.051497828 -0.31398255 -0.86529255 -0.39074773
		 -0.45080885 -0.7853595 -0.42424262 -0.60353267 -0.79567349 0.051497828 -0.48064852
		 -0.87167841 0.095675252 -0.45080885 -0.7853595 -0.42424262 -0.43968263 -0.78845447
		 -0.43013805 -0.5981366 -0.80050784 0.037681013 -0.60353267 -0.79567349 0.051497828
		 -0.43968263 -0.78845447 -0.43013805 -0.47810301 -0.75249583 -0.45295426 -0.62402529
		 -0.78083962 0.029697869 -0.5981366 -0.80050784 0.037681013 -0.55178046 -0.60593754
		 0.57304281 -0.5981366 -0.80050784 0.037681013 -0.62402529 -0.78083962 0.029697869
		 -0.49585685 -0.62284672 0.60513461 -0.60353267 -0.79567349 0.051497828 -0.55821168
		 -0.60529476 0.56746632 -0.26110694 -0.78453553 0.56242973 -0.48064852 -0.87167841
		 0.095675252 -0.55821168 -0.60529476 0.56746632 -0.13816568 -0.034166675 0.98981965
		 0.11591226 -0.13383104 0.98420203 -0.26110694 -0.78453553 0.56242973 0.40294564 0.39638895
		 0.82493067 0.47456229 0.57693011 0.66478741 0.4167873 0.2968958 0.85915148 -0.49585685
		 -0.62284672 0.60513461 -0.62402529 -0.78083962 0.029697869 -0.62537003 -0.76984924
		 0.12745389 -0.39747962 -0.60546583 0.68950784 -0.56872541 -0.39922762 0.71914446
		 -0.68904471 -0.69202161 0.2152289 -0.71363068 -0.67302579 0.19433884 -0.71424484
		 -0.25048891 0.65353626 0.13460508 0.47001773 -0.87233299 3.9086739e-31 0.44060141
		 -0.89770287 2.8303257e-31 0.51368672 -0.85797781 0.30651689 0.6277346 -0.71553946
		 4.51134e-31 -0.10189946 -0.99479473 4.4089596e-31 0.15219244 -0.98835087 0.05720222
		 0.15190589 -0.98673832 -0.034598812 -0.06529776 -0.99726582 4.2607274e-31 -0.17910545
		 -0.98382986 4.51134e-31 -0.10189946 -0.99479473 -0.034598812 -0.06529776 -0.99726582
		 -0.13899764 -0.16889714 -0.97578347 3.6981976e-31 -0.32129315 -0.94697976 4.2607274e-31
		 -0.17910545 -0.98382986 -0.13899764 -0.16889714 -0.97578347 -0.11929494 -0.31798652
		 -0.9405601 -0.90162665 -0.41451889 -0.12346425 0.065855324 -0.99235016 -0.10442319
		 0.023221843 -0.8373394 -0.5461899 -0.48608923 -0.5257569 -0.69806659 -0.48608923
		 -0.5257569 -0.69806659 0.023221843 -0.8373394 -0.5461899 0 -0.21109267 -0.97746605
		 -0.25826362 -0.11724153 -0.95893395 0.064407177 -0.9828552 0.17276396 -0.66030598
		 -0.74056137 0.12475899 0.28146896 -0.95564556 0.086699732 0.022717681 -0.99738091
		 0.068667106 1.7142713e-31 -0.14240129 0.98980904 -3.7396443e-32 0.18259773 0.98318774
		 0.37801212 0.2367076 0.89502871 0.61050266 -0.077600345 0.78820348 -1.5874734e-32
		 -0.83002937 0.55771971 1.7142713e-31 -0.14240129 0.98980904 0.61050266 -0.077600345
		 0.78820348 0.69428146 -0.63168311 0.3448908 0.50511533 -0.692321 0.51531559 -2.9111362e-31
		 -0.71802157 0.6960209 -1.5874734e-32 -0.83002937 0.55771971 0.69428146 -0.63168311
		 0.3448908 0.52379495 -0.16909836 0.83489197 -4.355215e-31 -0.1999992 0.97979605 -2.9111362e-31
		 -0.71802157 0.6960209 0.50511533 -0.692321 0.51531559 0.41950935 -0.086501926 0.90362012
		 -4.46161e-31 -0.091797933 0.99577767 -4.355215e-31 -0.1999992 0.97979605 0.52379495
		 -0.16909836 0.83489197 -3.6160665e-31 -0.54259598 0.83999377 -4.46161e-31 -0.091797933
		 0.99577767 0.41950935 -0.086501926 0.90362012 0.62519383 -0.095599063 0.77459246
		 0.63370931 -0.43080634 0.64250946 -3.8230687e-31 -0.47310364 0.88100678 -3.6160665e-31
		 -0.54259598 0.83999377 0.62519383 -0.095599063 0.77459246 -4.4127292e-31 0.28540233
		 0.95840782 -3.8230687e-31 -0.47310364 0.88100678 0.63370931 -0.43080634 0.64250946
		 0.70289284 0.16749831 0.69129294 0.59520602 0.33370337 -0.7310074 7.7856201e-33 0.28270227
		 -0.95920771 3.3873972e-31 0.17029871 -0.98539251 0.69828618 0.11459773 -0.706586;
	setAttr ".n[8300:8465]" -type "float3"  0.69828618 0.11459773 -0.706586 3.3873972e-31
		 0.17029871 -0.98539251 4.4423093e-31 -0.18980424 -0.98182195 0.6630832 -0.24739374
		 -0.70648211 0.59520602 0.33370337 -0.7310074 0.30651689 0.6277346 -0.71553946 2.8303257e-31
		 0.51368672 -0.85797781 7.7856201e-33 0.28270227 -0.95920771 4.4423093e-31 -0.18980424
		 -0.98182195 4.2811363e-31 -0.38699275 -0.92208278 0.51749533 -0.47069579 -0.71459365
		 0.6630832 -0.24739374 -0.70648211 0.58272141 0.71192616 -0.3919144 2.060553e-31 0.85591829
		 -0.51711106 -7.1239472e-32 0.9961291 0.087902561 0.54620945 0.83091444 0.10600184
		 0.26310477 -0.017000308 0.96461749 -4.5206198e-31 0.081497833 0.99667352 -4.4662282e-31
		 0.22399764 0.97458971 0.59488416 0.070898108 0.80067867 -7.1239472e-32 0.9961291
		 0.087902561 -3.282355e-31 0.73690087 0.67600083 0.44392321 0.65653431 0.60983187
		 0.54620945 0.83091444 0.10600184 -4.2874097e-31 0.38298172 0.92375594 -4.4647043e-31
		 0.22610091 0.97410387 0.29161295 0.078103475 0.95334238 0.29870921 0.36101115 0.88342726
		 0.5255959 0.78660709 0.32403439 0.45320502 0.85075408 0.26612535 0.66800362 0.65865916
		 -0.34632254 0.69540644 0.62270492 -0.35867605 0.12621643 0.56168783 0.8176651 -0.026274331
		 0.70194322 0.71174806 0.45320502 0.85075408 0.26612535 0.5255959 0.78660709 0.32403439
		 0.69540644 0.62270492 -0.35867605 0.66800362 0.65865916 -0.34632254 0.58364099 0.097870916
		 -0.80609208 0.49771592 0.12467155 -0.85833317 0.49771592 0.12467155 -0.85833317 0.58364099
		 0.097870916 -0.80609208 0.059926622 -0.53692955 -0.84149593 -0.073915131 -0.47653967
		 -0.87604022 -0.073915131 -0.47653967 -0.87604022 0.059926622 -0.53692955 -0.84149593
		 -0.52104437 -0.76307279 -0.38240382 -0.5268997 -0.74955654 -0.40067652 -0.5268997
		 -0.74955654 -0.40067652 -0.52104437 -0.76307279 -0.38240382 -0.71363068 -0.67302579
		 0.19433884 -0.68904471 -0.69202161 0.2152289 -0.71424484 -0.25048891 0.65353626 -0.49249578
		 0.25000304 0.83363444 -0.2847977 0.079814009 0.95525914 -0.56872541 -0.39922762 0.71914446
		 -0.49249578 0.25000304 0.83363444 -0.026274331 0.70194322 0.71174806 0.12621643 0.56168783
		 0.8176651 -0.2847977 0.079814009 0.95525914 -0.73787379 -0.24852404 0.6275174 -0.71424484
		 -0.25048891 0.65353626 -0.71363068 -0.67302579 0.19433884 -0.70978773 -0.67975223
		 0.18476541 0.59532833 0.71663904 0.36333546 0.72136879 0.59324557 -0.35733292 0.72677469
		 0.58908564 -0.35323739 0.59925628 0.71727109 0.35554758 0.31309777 0.41739789 0.85308194
		 0.59532833 0.71663904 0.36333546 0.59925628 0.71727109 0.35554758 0.32738921 0.4427706
		 0.83472776 0.31309777 0.41739789 0.85308194 -0.029958107 -0.10209316 0.99432361 -0.2847977
		 0.079814009 0.95525914 0.12621643 0.56168783 0.8176651 -0.39747962 -0.60546583 0.68950784
		 -0.029958107 -0.10209316 0.99432361 -0.060939182 -0.08874689 0.99418831 -0.49585685
		 -0.62284672 0.60513461 0.36406884 0.18191236 -0.91343409 0.72136879 0.59324557 -0.35733292
		 0.69540644 0.62270492 -0.35867605 0.49771592 0.12467155 -0.85833317 -0.073915131
		 -0.47653967 -0.87604022 -0.22080809 -0.39123678 -0.89340782 0.36406884 0.18191236
		 -0.91343409 0.49771592 0.12467155 -0.85833317 -0.5268997 -0.74955654 -0.40067652
		 -0.51863486 -0.72983956 -0.44536743 -0.22080809 -0.39123678 -0.89340782 -0.073915131
		 -0.47653967 -0.87604022 -0.47810301 -0.75249583 -0.45295426 -0.51863486 -0.72983956
		 -0.44536743 -0.62537003 -0.76984924 0.12745389 -0.62402529 -0.78083962 0.029697869
		 -0.56872541 -0.39922762 0.71914446 -0.39747962 -0.60546583 0.68950784 -0.62537003
		 -0.76984924 0.12745389 -0.68904471 -0.69202161 0.2152289 0.25458962 0.73050922 0.63367218
		 0.26933798 0.73662877 0.62035084 -0.13947964 0.59253263 0.79337919 -0.12577114 0.62559909
		 0.76993984 0.6442076 0.68827224 0.33358341 0.67227614 0.70000482 0.24091083 0.26933798
		 0.73662877 0.62035084 0.25458962 0.73050922 0.63367218 0.9050355 0.36953548 -0.2106045
		 0.8797946 0.33771536 -0.33452922 0.67227614 0.70000482 0.24091083 0.6442076 0.68827224
		 0.33358341 -0.13947964 0.59253263 0.79337919 -0.69708121 0.062035289 0.71430343 -0.7105841
		 0.072161473 0.69990212 -0.12577114 0.62559909 0.76993984 -0.7105841 0.072161473 0.69990212
		 -0.69708121 0.062035289 0.71430343 -0.7713173 -0.54637015 0.32641888 -0.77446258
		 -0.58185381 0.24830194 -0.77446258 -0.58185381 0.24830194 -0.7713173 -0.54637015
		 0.32641888 -0.63477916 -0.77267861 0.0048113721 -0.70416731 -0.70908225 -0.036753111
		 -0.63477916 -0.77267861 0.0048113721 -0.22877716 -0.83804077 -0.49532682 -0.25069663
		 -0.83881289 -0.483264 -0.70416731 -0.70908225 -0.036753111 0.85932577 0.28158754
		 -0.42692825 0.8797946 0.33771536 -0.33452922 0.54310113 -0.38542634 -0.74598104 0.5131523
		 -0.39719379 -0.76086253 -0.25069663 -0.83881289 -0.483264 -0.22877716 -0.83804077
		 -0.49532682 0.54310113 -0.38542634 -0.74598104 0.59821445 -0.32758087 -0.73132086
		 -0.18571277 -0.29102764 0.93851674 -0.29982322 -0.32588488 0.89660752 0.5709337 -0.029624289
		 0.82046151 0.5527041 -0.0269653 0.83294117 -0.3462781 -0.37178048 0.86131918 -0.32633033
		 -0.48081717 0.81383252 0.5949167 -0.19772346 0.77908891 0.56431538 -0.085835226 0.82108492
		 0.5527041 -0.0269653 0.83294117 0.5709337 -0.029624289 0.82046151 0.96498388 0.1028379
		 0.24130988 0.95392299 0.070522994 0.291646 0.96498388 0.1028379 0.24130988 0.90644121
		 0.078830749 -0.41490969 0.9205389 0.060591687 -0.38592324 0.95392299 0.070522994
		 0.291646 -0.29982322 -0.32588488 0.89660752 -0.69681114 -0.53718913 0.47527054 -0.76565176
		 -0.45055738 0.45910287 -0.3462781 -0.37178048 0.86131918 -0.32633033 -0.48081717
		 0.81383252 -0.78724629 -0.42164713 0.44995216 -0.78834164 -0.38052818 0.48344153
		 -0.31540078 -0.48824739 0.8137179 -0.69681114 -0.53718913 0.47527054 -0.90686637
		 -0.41576007 0.068825223 -0.93260807 -0.34399024 0.1091463 -0.76565176 -0.45055738
		 0.45910287 -0.78834164 -0.38052818 0.48344153 -0.78724629 -0.42164713 0.44995216;
	setAttr ".n[8466:8631]" -type "float3"  -0.94759876 -0.30575076 0.092590973 -0.97008216
		 -0.20757894 0.1259032 0.5949167 -0.19772346 0.77908891 0.97405678 0.13348249 0.18274507
		 0.96412778 0.1487034 0.21987478 0.56431538 -0.085835226 0.82108492 0.97405678 0.13348249
		 0.18274507 0.84468126 0.351475 -0.40370649 0.87435818 0.25727826 -0.41146776 0.96412778
		 0.1487034 0.21987478 -0.93260807 -0.34399024 0.1091463 -0.90686637 -0.41576007 0.068825223
		 -0.82299757 -0.30218834 -0.48099601 -0.84792596 -0.17223759 -0.50135392 -0.97008216
		 -0.20757894 0.1259032 -0.94759876 -0.30575076 0.092590973 -0.8608461 -0.07246317
		 -0.50367951 -0.89358443 0.09639895 -0.43842226 -0.84792596 -0.17223759 -0.50135392
		 -0.82299757 -0.30218834 -0.48099601 -0.36481735 -0.16695185 -0.91598874 -0.3932611
		 0.061313409 -0.91738015 -0.89358443 0.09639895 -0.43842226 -0.8608461 -0.07246317
		 -0.50367951 -0.4227908 0.22028978 -0.87904513 -0.43209514 0.3750689 -0.82013237 -0.3932611
		 0.061313409 -0.91738015 -0.36481735 -0.16695185 -0.91598874 0.3578946 -0.032407094
		 -0.93319947 0.3280381 0.22554117 -0.91734517 0.3280381 0.22554117 -0.91734517 0.3578946
		 -0.032407094 -0.93319947 0.90644121 0.078830749 -0.41490969 0.87435818 0.25727826
		 -0.41146776 -0.43209514 0.3750689 -0.82013237 -0.4227908 0.22028978 -0.87904513 0.29653949
		 0.384956 -0.8739984 0.28668019 0.50036585 -0.81697518 0.29653949 0.384956 -0.8739984
		 0.84468126 0.351475 -0.40370649 0.83358616 0.41434222 -0.36531448 0.28668019 0.50036585
		 -0.81697518 -0.31540078 -0.48824739 0.8137179 -0.3396621 -0.41684505 0.84313101 0.57493573
		 -0.22132933 0.78769422 0.60047066 -0.23568347 0.76412582 0.57493573 -0.22132933 0.78769422
		 0.95159292 0.19342515 0.23886736 0.96734607 0.15644096 0.19941875 0.60047066 -0.23568347
		 0.76412582 0.95159292 0.19342515 0.23886736 0.81177026 0.45544517 -0.36551166 0.83358616
		 0.41434222 -0.36531448 0.96734607 0.15644096 0.19941875 0.81177026 0.45544517 -0.36551166
		 0.27292261 0.55083627 -0.78872848 0.28668019 0.50036585 -0.81697518 0.83358616 0.41434222
		 -0.36531448 0.27292261 0.55083627 -0.78872848 -0.39817408 0.45184442 -0.79830694
		 -0.43209514 0.3750689 -0.82013237 0.28668019 0.50036585 -0.81697518 -0.3084558 -0.36788291
		 0.87722129 -0.3396621 -0.41684505 0.84313101 -0.77491081 -0.28009462 0.56662178 -0.75445467
		 -0.27875489 0.59421706 -0.97008216 -0.20757894 0.1259032 -0.97734499 -0.082925998
		 0.19473059 -0.77491081 -0.28009462 0.56662178 -0.78834164 -0.38052818 0.48344153
		 -0.89358443 0.09639895 -0.43842226 -0.89671952 0.21814053 -0.38510877 -0.97734499
		 -0.082925998 0.19473059 -0.97008216 -0.20757894 0.1259032 -0.8979286 0.12159485 -0.42301181
		 -0.89671952 0.21814053 -0.38510877 -0.39817408 0.45184442 -0.79830694 -0.36541149
		 0.36447895 -0.85652179 0.52749586 0.73531413 0.42551297 0.5321874 0.77698201 0.33626699
		 0.06295345 0.6573838 0.75092173 0.07912939 0.59405613 0.80052227 0.49260965 0.83014095
		 0.26115462 0.5321874 0.77698201 0.33626699 0.81502652 0.5479936 -0.18824147 0.73114026
		 0.61045218 -0.30460152 0.73114026 0.61045218 -0.30460152 0.81502652 0.5479936 -0.18824147
		 0.75573927 -0.015311649 -0.6546936 0.66314608 0.042993903 -0.74725419 -0.48038939
		 0.28306112 0.83012193 -0.45261461 0.2332669 0.86065471 0.06295345 0.6573838 0.75092173
		 0.029495526 0.70927632 0.70431322 -0.45261461 0.2332669 0.86065471 -0.71999359 -0.30705795
		 0.62235409 -0.69014931 -0.37939239 0.61624295 -0.43131766 0.17529024 0.88500756 -0.69014931
		 -0.37939239 0.61624295 -0.71999359 -0.30705795 0.62235409 -0.65460777 -0.7297188
		 0.19748199 -0.59533852 -0.78250414 0.18237151 -0.59533852 -0.78250414 0.18237151
		 -0.65460777 -0.7297188 0.19748199 -0.29175732 -0.8989917 -0.32663679 -0.20978805
		 -0.92136049 -0.32723671 0.66314608 0.042993903 -0.74725419 0.75573927 -0.015311649
		 -0.6546936 0.32166538 -0.61210638 -0.72239679 0.19366869 -0.5775705 -0.79303515 0.19366869
		 -0.5775705 -0.79303515 0.32166538 -0.61210638 -0.72239679 -0.29175732 -0.8989917
		 -0.32663679 -0.4352175 -0.82418507 -0.36235994 -0.031700462 0.46940681 0.88241279
		 -4.2446758e-31 0.4092167 0.9124372 -4.3854088e-31 0.30859762 0.95119268 0.010100369
		 0.31561154 0.94883472 0.36296853 0.26184171 0.8942554 0.24486378 0.47585368 0.84475148
		 -0.031700462 0.46940681 0.88241279 0.010100369 0.31561154 0.94883472 0.54566103 0.26344305
		 0.79551983 0.4082489 0.50404078 0.76110166 0.24486378 0.47585368 0.84475148 0.36296853
		 0.26184171 0.8942554 0.53543878 0.25534123 0.80505043 0.38610753 0.52093506 0.7612803
		 0.4082489 0.50404078 0.76110166 0.54566103 0.26344305 0.79551983 0.11776043 0.91123992
		 0.39468253 0.26085058 0.85234368 0.45328495 0.36629164 0.93015426 -0.025365956 0.19056705
		 0.9807846 -0.04178191 0.55832207 0.62422949 -0.54645586 0.32872993 0.72517133 -0.60503155
		 0.36629164 0.93015426 -0.025365956 0.55471742 0.83013701 0.056224085 0.13145663 0.7881192
		 -0.60132134 0.32872993 0.72517133 -0.60503155 0.20667364 0.23739164 -0.94917399 0.11089709
		 0.35474825 -0.92836171 0.70191431 0.64479095 0.3025904 0.69459206 0.69980007 0.16679855
		 0.47456229 0.57693011 0.66478741 0.40294564 0.39638895 0.82493067 0.72877419 0.54872632
		 -0.40961882 0.70439792 0.53678125 -0.46442381 0.69459206 0.69980007 0.16679855 0.70191431
		 0.64479095 0.3025904 0.7273342 -0.61298949 0.30859163 0.44095433 -0.79927808 0.40830609
		 0.48408279 -0.24684057 0.8394841 0.69513375 -0.21996875 0.6843996 0.55832207 0.62422949
		 -0.54645586 0.70439792 0.53678125 -0.46442381 0.37075049 0.068899617 -0.92617327
		 0.31047499 0.1207783 -0.94287747 0.37075049 0.068899617 -0.92617327 0.1638279 -0.44406921
		 -0.88088757 0.26613355 -0.33161101 -0.90510058 0.31047499 0.1207783 -0.94287747 0.1638279
		 -0.44406921 -0.88088757 0.25372469 -0.92386836 -0.2865153 0.68455672 -0.65727168
		 -0.3152397 0.26613355 -0.33161101 -0.90510058;
	setAttr ".n[8632:8797]" -type "float3"  -0.26110694 -0.78453553 0.56242973 0.44095433
		 -0.79927808 0.40830609 0.28696766 -0.95348018 0.092331544 -0.48064852 -0.87167841
		 0.095675252 -0.48064852 -0.87167841 0.095675252 0.28696766 -0.95348018 0.092331544
		 0.25372469 -0.92386836 -0.2865153 -0.31398255 -0.86529255 -0.39074773 0.9109897 0.13055919
		 -0.39121875 0.86692625 0.26612204 -0.42144737 0.96275431 0.21120836 -0.16880499 0.96278977
		 0.19492759 -0.18718728 0.86692625 0.26612204 -0.42144737 0.76117927 0.3259843 -0.56066066
		 0.87893564 0.16410667 -0.44781819 0.96275431 0.21120836 -0.16880499 0.54597092 0.24928674
		 -0.79985738 0.56944501 0.3883467 -0.72451311 0.13149731 0.39509192 -0.90918142 0.14249533
		 0.26389137 -0.95396876 0.14249533 0.26389137 -0.95396876 0.13149731 0.39509192 -0.90918142
		 -0.071498141 0.35879064 -0.93067575 0.007000078 0.23400259 -0.97221076 0.007000078
		 0.23400259 -0.97221076 -0.071498141 0.35879064 -0.93067575 0 0.31718758 -0.94836283
		 7.6483322e-32 0.2070083 -0.9783392 0.54597092 0.24928674 -0.79985738 0.87893564 0.16410667
		 -0.44781819 0.76117927 0.3259843 -0.56066066 0.56944501 0.3883467 -0.72451311 0.11776043
		 0.91123992 0.39468253 0.12180056 0.79396039 0.59564382 0.22050552 0.67848957 0.70073479
		 0.26085058 0.85234368 0.45328495 0.48408279 -0.24684057 0.8394841 0.4167873 0.2968958
		 0.85915148 0.53543878 0.25534123 0.80505043 0.69513375 -0.21996875 0.6843996 0.4167873
		 0.2968958 0.85915148 0.34430754 0.53299296 0.77289766 0.38610753 0.52093506 0.7612803
		 0.53543878 0.25534123 0.80505043 0.34430754 0.53299296 0.77289766 0.22050552 0.67848957
		 0.70073479 0.28220338 0.66368747 0.69273382 0.38610753 0.52093506 0.7612803 0.28220338
		 0.66368747 0.69273382 0.22050552 0.67848957 0.70073479 0.12180056 0.79396039 0.59564382
		 0.21355014 0.77590001 0.59361231 0.11591226 -0.13383104 0.98420203 0.40294564 0.39638895
		 0.82493067 0.4167873 0.2968958 0.85915148 0.48408279 -0.24684057 0.8394841 0.11089709
		 0.35474825 -0.92836171 0.20667364 0.23739164 -0.94917399 0.27767256 -0.032995611
		 -0.960109 0.16306761 0.014305179 -0.98651117 0.11089709 0.35474825 -0.92836171 0.16306761
		 0.014305179 -0.98651117 0.29632211 0.1196974 -0.94755775 0.26088765 0.40396416 -0.87678421
		 0.26088765 0.40396416 -0.87678421 0.29632211 0.1196974 -0.94755775 0.2198386 0.14594504
		 -0.96455741 0.26921371 0.44061965 -0.8563751 0.26921371 0.44061965 -0.8563751 0.2198386
		 0.14594504 -0.96455741 0.05720222 0.15190589 -0.98673832 0.13460508 0.47001773 -0.87233299
		 0.05720222 0.15190589 -0.98673832 4.4089596e-31 0.15219244 -0.98835087 3.9086739e-31
		 0.44060141 -0.89770287 0.13460508 0.47001773 -0.87233299 0.26613355 -0.33161101 -0.90510058
		 0.27767256 -0.032995611 -0.960109 0.20667364 0.23739164 -0.94917399 0.31047499 0.1207783
		 -0.94287747 0.99689865 0.026499964 -0.074099906 0.98137528 -0.17519557 -0.078798011
		 0.95580167 -0.1089002 0.27310047 0.95218527 0.048199255 0.30169532 0.98816454 0.14649475
		 -0.045498367 0.99689865 0.026499964 -0.074099906 0.95218527 0.048199255 0.30169532
		 0.90818101 0.1475969 0.39169177 0.98137528 -0.17519557 -0.078798011 0.95668036 -0.28245223
		 -0.070593253 0.93040913 -0.25791103 0.26042417 0.95580167 -0.1089002 0.27310047 -0.22291064
		 -0.37908113 0.89811379 -0.27832159 -0.27618712 0.91992271 0.61165935 -0.12066827
		 0.7818644 0.59477949 -0.26175749 0.76007915 -0.37027872 -0.088158868 0.92472792 -0.27832159
		 -0.27618712 0.91992271 -0.88252485 -0.26240259 0.3902497 -0.93804783 -0.11968083
		 0.32518116 -0.9614231 -0.26209345 -0.083502583 -0.97424936 -0.195852 -0.1117147 -0.88252485
		 -0.26240259 0.3902497 -0.83915627 -0.3324627 0.43044782 0.59477949 -0.26175749 0.76007915
		 0.61165935 -0.12066827 0.7818644 0.9801873 -0.0048305509 0.19801389 0.97001088 -0.10392281
		 0.21972461 0.97001088 -0.10392281 0.21972461 0.9801873 -0.0048305509 0.19801389 0.93209487
		 0.062544793 -0.35677347 0.9166345 0.046878409 -0.39696798 0.9166345 0.046878409 -0.39696798
		 0.93209487 0.062544793 -0.35677347 0.43226913 0.13908102 -0.89095449 0.40923053 0.12206911
		 -0.90422869 0.43226913 0.13908102 -0.89095449 -0.35465392 0.079758182 -0.9315896
		 -0.29243246 0.035169277 -0.95563924 0.40923053 0.12206911 -0.90422869 -0.35465392
		 0.079758182 -0.9315896 -0.85189235 -0.083785012 -0.51697147 -0.80026996 -0.13889292
		 -0.58333242 -0.29243246 0.035169277 -0.95563924 -0.85189235 -0.083785012 -0.51697147
		 -0.97424936 -0.195852 -0.1117147 -0.9614231 -0.26209345 -0.083502583 -0.80026996
		 -0.13889292 -0.58333242 0.53147876 -0.28083152 0.79916453 -0.26720563 -0.38109946
		 0.88507873 -0.24026057 -0.41030449 0.87973011 0.55936986 -0.31215551 0.76789606 0.97378248
		 -0.02084114 0.22652456 0.53147876 -0.28083152 0.79916453 0.55936986 -0.31215551 0.76789606
		 0.97057813 -0.10185367 0.21818312 0.88381851 0.20229083 -0.42183325 0.97378248 -0.02084114
		 0.22652456 0.97057813 -0.10185367 0.21818312 0.91017115 0.098829448 -0.40227008 0.35712254
		 0.31620738 -0.87890637 0.88381851 0.20229083 -0.42183325 0.91017115 0.098829448 -0.40227008
		 0.39791468 0.19357757 -0.89676732 -0.32415485 0.23983458 -0.9150973 0.35712254 0.31620738
		 -0.87890637 0.39791468 0.19357757 -0.89676732 -0.29669958 0.095955841 -0.95013779
		 -0.26720563 -0.38109946 0.88507873 -0.77106577 -0.32045752 0.55024046 -0.79120588
		 -0.36170584 0.49311477 -0.24026057 -0.41030449 0.87973011 -0.77106577 -0.32045752
		 0.55024046 -0.96109098 -0.25010389 0.11726962 -0.95128441 -0.30771556 0.019212808
		 -0.79120588 -0.36170584 0.49311477 -0.96109098 -0.25010389 0.11726962 -0.85796392
		 0.00081280933 -0.51370925 -0.81992054 -0.13025288 -0.55746257 -0.95128441 -0.30771556
		 0.019212808 -0.85796392 0.00081280933 -0.51370925 -0.32415485 0.23983458 -0.9150973
		 -0.29669958 0.095955841 -0.95013779 -0.81992054 -0.13025288 -0.55746257 0.92984575
		 0.207353 0.30395985 0.96275431 0.21120836 -0.16880499;
	setAttr ".n[8798:8799]" -type "float3"  0.98816454 0.14649475 -0.045498367 0.90818101
		 0.1475969 0.39169177;
	setAttr -s 2206 -ch 8800 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -2 6
		mu 0 4 4 13 2 1
		f 4 7 8 9 -1
		mu 0 4 0 14 15 1
		f 4 -10 10 11 -7
		mu 0 4 1 16 17 4
		f 4 12 13 14 15
		mu 0 4 18 19 5 20
		f 4 16 -13 17 18
		mu 0 4 21 22 23 24
		f 4 19 -19 20 21
		mu 0 4 25 26 27 28
		f 4 22 -14 23 24
		mu 0 4 6 5 29 30
		f 4 25 -24 -17 26
		mu 0 4 31 32 33 34
		f 4 27 -25 28 29
		mu 0 4 35 6 36 37
		f 4 30 31 -30 32
		mu 0 4 38 39 40 41
		f 4 33 -27 -20 34
		mu 0 4 42 43 44 45
		f 4 -29 -26 35 36
		mu 0 4 46 47 48 49
		f 4 37 38 -36 -34
		mu 0 4 50 51 52 53
		f 4 39 40 41 -4
		mu 0 4 3 54 55 0
		f 4 42 -41 43 44
		mu 0 4 56 57 58 59
		f 4 45 46 47 48
		mu 0 4 60 61 62 63
		f 4 49 50 51 -49
		mu 0 4 64 65 66 67
		f 4 -37 52 53 -33
		mu 0 4 68 69 70 71
		f 4 54 55 56 57
		mu 0 4 72 73 74 75
		f 4 -58 -53 -39 58
		mu 0 4 76 77 78 79
		f 4 59 -46 60 61
		mu 0 4 80 81 82 83
		f 4 62 -62 63 64
		mu 0 4 84 85 86 87
		f 4 -61 -52 65 66
		mu 0 4 88 89 90 91
		f 4 67 68 69 70
		mu 0 4 92 93 94 95
		f 4 71 72 -11 73
		mu 0 4 96 97 98 99
		f 4 74 -72 75 76
		mu 0 4 100 101 102 103
		f 4 77 78 79 80
		mu 0 4 104 105 106 107
		f 4 81 -81 82 83
		mu 0 4 108 109 110 111
		f 4 -84 84 85 86
		mu 0 4 112 113 114 115
		f 4 87 88 -86 89
		mu 0 4 116 117 118 119
		f 4 90 -74 -9 91
		mu 0 4 120 121 122 123
		f 4 -42 92 93 -8
		mu 0 4 0 124 125 126
		f 4 94 -93 -43 95
		mu 0 4 127 128 129 130
		f 4 96 97 98 99
		mu 0 4 131 132 133 134
		f 4 100 101 102 103
		mu 0 4 135 136 137 138
		f 4 104 105 106 107
		mu 0 4 139 140 141 142
		f 4 108 109 110 111
		mu 0 4 143 144 145 146
		f 4 112 113 -109 114
		mu 0 4 147 148 149 150
		f 4 115 -76 -91 116
		mu 0 4 151 152 153 154
		f 4 117 -80 118 119
		mu 0 4 155 156 157 158
		f 4 -118 120 121 -83
		mu 0 4 159 160 161 162
		f 4 122 -121 123 124
		mu 0 4 163 164 165 166
		f 3 125 126 127
		mu 0 3 167 168 169
		f 4 -124 -120 128 129
		mu 0 4 170 171 172 173
		f 4 130 131 132 133
		mu 0 4 174 175 176 177
		f 4 134 -77 135 -79
		mu 0 4 178 179 180 181
		f 4 -116 136 -119 -136
		mu 0 4 182 183 184 185
		f 4 137 138 -129 -137
		mu 0 4 186 187 188 189
		f 4 -128 139 -131 140
		mu 0 4 190 191 192 193
		f 4 141 -92 -94 142
		mu 0 4 194 195 196 197
		f 4 -138 -117 -142 143
		mu 0 4 198 199 200 201
		f 4 -133 144 145 146
		mu 0 4 202 203 204 205
		f 4 -55 147 148 149
		mu 0 4 206 207 208 209
		f 4 150 -70 -149 151
		mu 0 4 210 211 212 213
		f 4 152 153 -98 154
		mu 0 4 214 215 216 217
		f 4 155 156 157 -155
		mu 0 4 218 219 220 221
		f 4 158 159 -105 160
		mu 0 4 222 223 224 225
		f 4 161 162 163 164
		mu 0 4 226 227 228 229
		f 4 165 -164 166 167
		mu 0 4 230 231 232 233
		f 4 168 169 170 171
		mu 0 4 234 235 236 237
		f 4 -170 172 173 -168
		mu 0 4 238 239 240 241
		f 4 174 175 176 -172
		mu 0 4 242 243 244 245
		f 4 177 178 179 180
		mu 0 4 246 247 248 249
		f 4 -176 181 182 183
		mu 0 4 250 251 252 253
		f 4 184 185 -177 -184
		mu 0 4 254 255 256 257
		f 4 -186 186 187 -169
		mu 0 4 258 259 260 261
		f 4 188 189 -173 -188
		mu 0 4 262 263 264 265
		f 4 190 -174 191 192
		mu 0 4 266 267 268 269
		f 4 193 -192 -190 194
		mu 0 4 270 271 272 273
		f 4 -191 195 196 -166
		mu 0 4 274 275 276 277
		f 4 -22 197 198 199
		mu 0 4 278 279 280 281
		f 4 -35 -200 -162 200
		mu 0 4 282 283 284 285
		f 4 201 -165 -197 202
		mu 0 4 286 287 288 289
		f 4 203 204 -202 205
		mu 0 4 290 291 292 293
		f 4 -204 206 -148 -59
		mu 0 4 294 295 296 297
		f 4 -207 207 208 -152
		mu 0 4 298 299 300 301
		f 4 209 -208 -206 210
		mu 0 4 302 303 304 305
		f 4 211 -211 -203 212
		mu 0 4 306 307 308 309
		f 4 213 -213 -196 214
		mu 0 4 310 311 312 313
		f 4 215 -215 -193 216
		mu 0 4 314 315 316 317
		f 4 217 218 219 -210
		mu 0 4 318 319 320 321
		f 4 -122 220 221 -85
		mu 0 4 322 323 324 325
		f 4 222 223 224 225
		mu 0 4 326 327 328 329
		f 4 226 -223 -221 227
		mu 0 4 330 331 332 333
		f 4 228 -228 -123 229
		mu 0 4 334 335 336 337
		f 4 230 231 232 233
		mu 0 4 338 339 340 341
		f 4 234 -234 -225 235
		mu 0 4 342 343 344 345
		f 4 236 -230 237 238
		mu 0 4 346 347 348 349
		f 4 239 240 241 242
		mu 0 4 350 351 352 353
		f 4 243 244 -243 245
		mu 0 4 354 355 356 357
		f 4 -242 246 247 248
		mu 0 4 358 359 360 361
		f 4 -246 -249 249 250
		mu 0 4 362 363 364 365
		f 4 251 252 253 -153
		mu 0 4 366 367 368 369
		f 4 254 255 256 257
		mu 0 4 370 371 372 373
		f 4 258 259 260 261
		mu 0 4 374 375 376 377
		f 3 -201 -205 -38
		mu 0 3 378 379 380
		f 4 262 -195 263 264
		mu 0 4 381 382 383 384
		f 4 265 266 -265 267
		mu 0 4 385 386 387 388
		f 4 268 -266 269 270
		mu 0 4 389 390 391 392
		f 4 271 272 -268 -264
		mu 0 4 393 394 395 396
		f 4 -273 273 274 -270
		mu 0 4 397 398 399 400
		f 4 -275 275 276 -271
		mu 0 4 401 402 403 404
		f 4 -277 277 278 -269
		mu 0 4 405 406 407 408
		f 4 -279 279 -263 -267
		mu 0 4 409 410 411 412
		f 4 280 -217 281 282
		mu 0 4 413 414 415 416
		f 4 283 284 285 286
		mu 0 4 417 418 419 420
		f 4 287 288 -284 289
		mu 0 4 421 422 423 424
		f 4 290 -288 291 292
		mu 0 4 425 426 427 428
		f 3 -194 293 -282
		mu 0 3 429 430 431
		f 4 -283 294 295 -287
		mu 0 4 432 433 434 435
		f 4 -296 296 297 -290
		mu 0 4 436 437 438 439
		f 4 -294 -280 298 -295
		mu 0 4 440 441 442 443
		f 4 -299 -278 299 -297
		mu 0 4 444 445 446 447
		f 4 -298 300 301 -292
		mu 0 4 448 449 450 451
		f 4 302 -301 -300 303
		mu 0 4 452 453 454 455
		f 4 304 -304 -276 305
		mu 0 4 456 457 458 459
		f 4 -305 306 307 -303
		mu 0 4 460 461 462 463
		f 4 -308 308 309 -302
		mu 0 4 464 465 466 467
		f 4 310 -183 311 312
		mu 0 4 468 469 470 471
		f 4 -180 313 314 -313
		mu 0 4 472 473 474 475
		f 4 315 -314 316 317
		mu 0 4 476 477 478 479
		f 4 -179 318 319 -317
		mu 0 4 480 481 482 483
		f 4 320 321 322 -319
		mu 0 4 484 485 486 487
		f 4 323 -316 324 325
		mu 0 4 488 489 490 491
		f 4 326 327 -187 328
		mu 0 4 492 493 494 495
		f 4 -185 -311 329 -329
		mu 0 4 496 497 498 499
		f 4 -330 -315 -324 330
		mu 0 4 500 501 502 503
		f 4 -331 331 332 -327
		mu 0 4 504 505 506 507
		f 4 -332 -326 333 334
		mu 0 4 508 509 510 511
		f 4 335 336 -335 337
		mu 0 4 512 513 514 515
		f 4 338 -272 -189 -328
		mu 0 4 516 517 518 519
		f 4 339 -339 340 341
		mu 0 4 520 521 522 523
		f 4 -341 -333 -337 342
		mu 0 4 524 525 526 527
		f 4 343 -306 -274 -340
		mu 0 4 528 529 530 531
		f 4 344 345 -336 346
		mu 0 4 532 533 534 535
		f 4 347 348 -345 349
		mu 0 4 536 537 538 539
		f 4 350 351 352 -348
		mu 0 4 540 541 542 543
		f 4 353 -350 354 355
		mu 0 4 544 545 546 547
		f 4 -354 356 -320 -351
		mu 0 4 548 549 550 551
		f 4 -355 -347 -338 357
		mu 0 4 552 553 554 555
		f 4 358 -356 359 -325
		mu 0 4 556 557 558 559
		f 4 -344 360 361 -307
		mu 0 4 560 561 562 563
		f 4 -362 362 363 -309
		mu 0 4 564 565 566 567
		f 4 -346 364 365 -343
		mu 0 4 568 569 570 571
		f 4 -361 -342 -366 366
		mu 0 4 572 573 574 575
		f 4 367 -365 -349 368
		mu 0 4 576 577 578 579
		f 4 -368 369 -363 -367
		mu 0 4 580 581 582 583
		f 4 370 371 372 -353
		mu 0 4 584 585 586 587
		f 4 373 374 375 -370
		mu 0 4 588 589 590 591
		f 3 -357 -359 -318
		mu 0 3 592 593 594
		f 3 -360 -358 -334
		mu 0 3 595 596 597
		f 4 -97 376 -102 -156
		mu 0 4 598 599 600 601
		f 4 377 378 -157 -101
		mu 0 4 602 603 604 605
		f 4 -262 -252 -158 379
		mu 0 4 606 607 608 609
		f 4 380 -380 -379 381
		mu 0 4 610 611 612 613
		f 4 -381 382 383 -259
		mu 0 4 614 615 616 617
		f 4 384 385 386 -382
		mu 0 4 618 619 620 621
		f 4 387 388 389 390
		mu 0 4 622 623 624 625
		f 4 391 392 393 394
		mu 0 4 626 627 628 629
		f 4 395 -392 396 397
		mu 0 4 630 631 632 633
		f 4 398 -398 399 400
		mu 0 4 634 635 636 637
		f 4 401 402 403 404
		mu 0 4 638 639 640 641
		f 4 405 -111 406 407
		mu 0 4 642 643 644 645
		f 4 408 409 410 -408
		mu 0 4 646 647 648 649
		f 4 411 412 413 -410
		mu 0 4 650 651 652 653
		f 4 414 415 416 -413
		mu 0 4 654 655 656 657
		f 4 417 418 419 420
		mu 0 4 658 659 660 661
		f 4 -420 421 -113 422
		mu 0 4 662 663 664 665
		f 4 423 -395 -103 424
		mu 0 4 666 667 668 669
		f 4 425 -425 -377 426
		mu 0 4 670 671 672 673
		f 4 427 -427 -100 428
		mu 0 4 674 675 676 677
		f 4 -429 429 430 431
		mu 0 4 678 679 680 681
		f 4 432 433 434 435
		mu 0 4 682 683 684 685
		f 4 436 437 -151 438
		mu 0 4 686 687 688 689
		f 4 -439 -209 -220 439
		mu 0 4 690 691 692 693
		f 4 440 441 442 443
		mu 0 4 694 695 696 697
		f 4 -424 444 445 -397
		mu 0 4 698 699 700 701
		f 4 446 -445 -426 447
		mu 0 4 702 703 704 705
		f 4 448 -448 -428 449
		mu 0 4 706 707 708 709
		f 4 -432 450 451 -450
		mu 0 4 710 711 712 713
		f 4 -446 452 453 -400
		mu 0 4 714 715 716 717
		f 4 454 -453 -447 455
		mu 0 4 718 719 720 721
		f 4 456 -456 -449 457
		mu 0 4 722 723 724 725
		f 4 -452 458 459 -458
		mu 0 4 726 727 728 729
		f 4 460 461 462 -442
		mu 0 4 730 731 732 733
		f 4 463 464 465 466
		mu 0 4 734 735 736 737
		f 4 467 -465 468 -462
		mu 0 4 738 739 740 741
		f 4 -466 469 470 471
		mu 0 4 742 743 744 745
		f 4 472 -470 -468 473
		mu 0 4 746 747 748 749
		f 4 474 -474 -461 475
		mu 0 4 750 751 752 753
		f 4 476 -476 -441 477
		mu 0 4 754 755 756 757
		f 4 478 479 -143 480
		mu 0 4 758 759 760 761
		f 4 481 -481 -95 482
		mu 0 4 762 763 764 765
		f 4 -483 483 484 485
		mu 0 4 766 767 768 769
		f 4 486 487 488 -486
		mu 0 4 770 771 772 773
		f 4 489 -482 -489 -471
		mu 0 4 774 775 776 777
		f 4 -146 -479 -490 490
		mu 0 4 778 779 780 781
		f 4 491 492 493 -477
		mu 0 4 782 783 784 785
		f 4 -494 494 495 -475
		mu 0 4 786 787 788 789
		f 4 -496 496 -491 -473
		mu 0 4 790 791 792 793
		f 4 497 -147 -497 498
		mu 0 4 794 795 796 797
		f 4 499 -499 -495 500
		mu 0 4 798 799 800 801
		f 4 501 -501 -493 502
		mu 0 4 802 803 804 805
		f 4 503 -503 504 505
		mu 0 4 806 807 808 809
		f 4 506 -141 507 508
		mu 0 4 810 811 812 813
		f 4 -509 509 510 511
		mu 0 4 814 815 816 817
		f 4 512 513 514 515
		mu 0 4 818 819 820 821
		f 4 -515 516 517 518
		mu 0 4 822 823 824 825
		f 4 -511 519 520 521
		mu 0 4 826 827 828 829
		f 4 522 523 524 525
		mu 0 4 830 831 832 833
		f 4 526 -245 -523 527
		mu 0 4 834 835 836 837
		f 4 528 529 530 531
		mu 0 4 838 839 840 841
		f 4 532 -237 -532 533
		mu 0 4 842 843 844 845
		f 4 534 535 536 537
		mu 0 4 846 847 848 849
		f 4 538 -538 539 540
		mu 0 4 850 851 852 853
		f 4 541 542 543 -534
		mu 0 4 854 855 856 857
		f 4 544 545 -543 546
		mu 0 4 858 859 860 861
		f 4 547 548 -545 549
		mu 0 4 862 863 864 865
		f 4 -533 550 551 -229
		mu 0 4 866 867 868 869
		f 4 552 -551 -544 553
		mu 0 4 870 871 872 873
		f 4 554 -554 -546 555
		mu 0 4 874 875 876 877
		f 4 -556 -549 556 557
		mu 0 4 878 879 880 881
		f 4 -552 558 559 -227
		mu 0 4 882 883 884 885
		f 4 560 -559 -553 561
		mu 0 4 886 887 888 889
		f 4 -562 -555 562 563
		mu 0 4 890 891 892 893
		f 4 -563 -558 564 565
		mu 0 4 894 895 896 897
		f 4 566 -502 567 -520
		mu 0 4 898 899 900 901
		f 4 -510 568 -500 -567
		mu 0 4 902 903 904 905
		f 4 -508 -134 -498 -569
		mu 0 4 906 907 908 909
		f 4 -527 569 -530 -240
		mu 0 4 910 911 912 913
		f 4 -535 570 -547 571
		mu 0 4 914 915 916 917
		f 4 -571 -539 572 -550
		mu 0 4 918 919 920 921
		f 4 573 -233 574 -88
		mu 0 4 922 923 924 925
		f 4 -222 -226 -574 -90
		mu 0 4 926 927 928 929
		f 4 -560 575 576 -224
		mu 0 4 930 931 932 933
		f 4 577 578 -236 -577
		mu 0 4 934 935 936 937
		f 4 -561 579 580 -576
		mu 0 4 938 939 940 941
		f 4 -581 581 582 -578
		mu 0 4 942 943 944 945
		f 4 583 -580 -564 584
		mu 0 4 946 947 948 949
		f 4 -584 585 586 -582
		mu 0 4 950 951 952 953
		f 4 587 -585 -566 588
		mu 0 4 954 955 956 957
		f 4 -588 589 590 -586
		mu 0 4 958 959 960 961
		f 4 591 592 -235 593
		mu 0 4 962 963 964 965
		f 4 594 -594 -579 595
		mu 0 4 966 967 968 969
		f 4 596 -596 -583 597
		mu 0 4 970 971 972 973
		f 4 598 -598 -587 599
		mu 0 4 974 975 976 977
		f 4 600 -600 -591 601
		mu 0 4 978 979 980 981
		f 4 -592 602 603 604
		mu 0 4 982 983 984 985
		f 4 -599 605 -537 606
		mu 0 4 986 987 988 989
		f 4 -601 607 -540 -606
		mu 0 4 990 991 992 993
		f 4 608 -528 609 610
		mu 0 4 994 995 996 997
		f 4 611 -610 -526 -604
		mu 0 4 998 999 1000 1001
		f 4 -609 612 -531 -570
		mu 0 4 1002 1003 1004 1005
		f 4 613 614 615 -611
		mu 0 4 1006 1007 1008 1009
		f 4 -616 -572 -542 -613
		mu 0 4 1010 1011 1012 1013
		f 4 -524 -244 616 -514
		mu 0 4 1014 1015 1016 1017
		f 4 -617 -251 617 -517
		mu 0 4 1018 1019 1020 1021
		f 4 618 -603 -595 619
		mu 0 4 1022 1023 1024 1025
		f 4 620 -614 -612 -619
		mu 0 4 1026 1027 1028 1029
		f 4 -620 -597 -607 621
		mu 0 4 1030 1031 1032 1033
		f 4 622 -565 623 624
		mu 0 4 1034 1035 1036 1037
		f 4 625 626 627 628
		mu 0 4 1038 1039 1040 1041
		f 4 629 630 631 632
		mu 0 4 1042 1043 1044 1045
		f 4 633 634 635 636
		mu 0 4 1046 1047 1048 1049
		f 4 637 -634 638 639
		mu 0 4 1050 1051 1052 1053
		f 4 640 641 642 643
		mu 0 4 1054 1055 1056 1057
		f 4 644 645 646 647
		mu 0 4 1058 1059 1060 1061
		f 4 648 -645 649 650
		mu 0 4 1062 1063 1064 1065
		f 4 651 -624 -557 652
		mu 0 4 1066 1067 1068 1069
		f 4 653 -629 654 655
		mu 0 4 1070 1071 1072 1073
		f 4 656 657 658 -656
		mu 0 4 1074 1075 1076 1077
		f 4 -623 659 660 -589
		mu 0 4 1078 1079 1080 1081
		f 4 661 662 663 -660
		mu 0 4 1082 1083 1084 1085
		f 4 -661 664 665 -590
		mu 0 4 1086 1087 1088 1089
		f 4 666 667 668 669
		mu 0 4 1090 1091 1092 1093
		f 4 -664 670 671 -665
		mu 0 4 1094 1095 1096 1097
		f 4 672 -669 673 674
		mu 0 4 1098 1099 1100 1101
		f 4 -633 675 676 677
		mu 0 4 1102 1103 1104 1105
		f 4 -677 678 679 680
		mu 0 4 1106 1107 1108 1109
		f 4 -666 681 682 -602
		mu 0 4 1110 1111 1112 1113
		f 4 -682 -672 683 684
		mu 0 4 1114 1115 1116 1117
		f 4 685 -675 686 687
		mu 0 4 1118 1119 1120 1121
		f 4 -683 688 689 -608
		mu 0 4 1122 1123 1124 1125
		f 4 -689 -685 690 691
		mu 0 4 1126 1127 1128 1129
		f 4 692 -688 693 694
		mu 0 4 1130 1131 1132 1133
		f 4 -690 695 696 -541
		mu 0 4 1134 1135 1136 1137
		f 4 697 698 -573 -697
		mu 0 4 1138 1139 1140 1141
		f 4 -696 -692 699 700
		mu 0 4 1142 1143 1144 1145
		f 4 -701 701 702 -698
		mu 0 4 1146 1147 1148 1149
		f 4 703 -695 704 705
		mu 0 4 1150 1151 1152 1153
		f 4 -706 706 707 708
		mu 0 4 1154 1155 1156 1157
		f 4 -621 -622 -536 -615
		mu 0 4 1158 1159 1160 1161
		f 4 709 -653 -548 -699
		mu 0 4 1162 1163 1164 1165
		f 4 -637 710 711 712
		mu 0 4 1166 1167 1168 1169
		f 4 -712 713 714 715
		mu 0 4 1170 1171 1172 1173
		f 4 -715 716 717 718
		mu 0 4 1174 1175 1176 1177
		f 4 -713 719 720 -639
		mu 0 4 1178 1179 1180 1181
		f 4 721 -720 -716 722
		mu 0 4 1182 1183 1184 1185
		f 4 723 -723 -719 724
		mu 0 4 1186 1187 1188 1189
		f 4 -718 725 726 727
		mu 0 4 1190 1191 1192 1193
		f 4 -728 728 729 -725
		mu 0 4 1194 1195 1196 1197
		f 4 730 731 732 733
		mu 0 4 1198 1199 1200 1201
		f 4 734 735 736 737
		mu 0 4 1202 1203 1204 1205
		f 4 738 739 -638 740
		mu 0 4 1206 1207 1208 1209
		f 4 -739 741 742 -737
		mu 0 4 1210 1211 1212 1213
		f 4 743 744 -642 745
		mu 0 4 1214 1215 1216 1217
		f 4 -744 746 747 748
		mu 0 4 1218 1219 1220 1221
		f 4 -746 749 750 751
		mu 0 4 1222 1223 1224 1225
		f 4 752 753 754 755
		mu 0 4 1226 1227 1228 1229
		f 4 756 -738 757 758
		mu 0 4 1230 1231 1232 1233
		f 4 759 760 761 762
		mu 0 4 1234 1235 1236 1237
		f 4 763 764 -758 -743
		mu 0 4 1238 1239 1240 1241
		f 4 -765 765 -729 766
		mu 0 4 1242 1243 1244 1245
		f 4 767 768 -748 769
		mu 0 4 1246 1247 1248 1249
		f 4 770 771 -768 772
		mu 0 4 1250 1251 1252 1253
		f 4 -771 773 774 775
		mu 0 4 1254 1255 1256 1257
		f 4 -775 776 777 778
		mu 0 4 1258 1259 1260 1261
		f 4 -778 779 780 781
		mu 0 4 1262 1263 1264 1265
		f 4 782 -644 783 -781
		mu 0 4 1266 1267 1268 1269
		f 4 -648 784 785 786
		mu 0 4 1270 1271 1272 1273
		f 4 787 788 789 -786
		mu 0 4 1274 1275 1276 1277
		f 4 790 791 792 -789
		mu 0 4 1278 1279 1280 1281
		f 4 -792 793 794 795
		mu 0 4 1282 1283 1284 1285
		f 4 -795 796 797 798
		mu 0 4 1286 1287 1288 1289
		f 4 -798 799 -756 800
		mu 0 4 1290 1291 1292 1293
		f 4 801 802 -649 803
		mu 0 4 1294 1295 1296 1297
		f 4 804 -755 -802 805
		mu 0 4 1298 1299 1300 1301
		f 4 -805 806 807 -801
		mu 0 4 1302 1303 1304 1305
		f 4 -808 808 809 -799
		mu 0 4 1306 1307 1308 1309
		f 4 -810 810 811 -796
		mu 0 4 1310 1311 1312 1313
		f 4 -812 812 813 -793
		mu 0 4 1314 1315 1316 1317
		f 4 -814 814 815 -790
		mu 0 4 1318 1319 1320 1321
		f 4 816 -650 -787 -816
		mu 0 4 1322 1323 1324 1325
		f 4 -813 817 818 819
		mu 0 4 1326 1327 1328 1329
		f 4 820 821 -819 822
		mu 0 4 1330 1331 1332 1333
		f 4 -818 -811 823 824
		mu 0 4 1334 1335 1336 1337
		f 4 825 -824 -809 826
		mu 0 4 1338 1339 1340 1341
		f 4 827 -827 -807 828
		mu 0 4 1342 1343 1344 1345
		f 4 -825 829 830 -823
		mu 0 4 1346 1347 1348 1349
		f 4 831 -830 -826 832
		mu 0 4 1350 1351 1352 1353
		f 4 833 -833 -828 834
		mu 0 4 1354 1355 1356 1357
		f 4 835 836 837 838
		mu 0 4 1358 1359 1360 1361
		f 4 839 840 841 842
		mu 0 4 1362 1363 1364 1365
		f 4 843 844 845 846
		mu 0 4 1366 1367 1368 1369
		f 4 847 -829 -806 848
		mu 0 4 1370 1371 1372 1373
		f 4 -849 -804 849 850
		mu 0 4 1374 1375 1376 1377
		f 4 -848 851 852 -835
		mu 0 4 1378 1379 1380 1381
		f 4 -851 853 854 -852
		mu 0 4 1382 1383 1384 1385
		f 4 -847 855 856 857
		mu 0 4 1386 1387 1388 1389
		f 4 -820 858 859 -815
		mu 0 4 1390 1391 1392 1393
		f 4 -860 860 861 -817
		mu 0 4 1394 1395 1396 1397
		f 4 862 -859 -822 863
		mu 0 4 1398 1399 1400 1401
		f 4 864 865 -861 -863
		mu 0 4 1402 1403 1404 1405
		f 4 866 867 868 -842
		mu 0 4 1406 1407 1408 1409
		f 4 869 870 -845 871
		mu 0 4 1410 1411 1412 1413
		f 4 872 -869 -866 873
		mu 0 4 1414 1415 1416 1417
		f 4 -873 874 -870 -843
		mu 0 4 1418 1419 1420 1421
		f 4 875 876 877 -844
		mu 0 4 1422 1423 1424 1425
		f 4 878 879 880 881
		mu 0 4 7 8 1426 1427
		f 4 882 883 -879 884
		mu 0 4 1428 1429 8 7
		f 4 885 -881 886 887
		mu 0 4 1430 1431 1432 1433
		f 4 888 889 -888 890
		mu 0 4 1434 1435 1436 1437
		f 4 891 -889 892 893
		mu 0 4 1438 1439 1440 1441
		f 4 894 895 896 897
		mu 0 4 1442 1443 1444 1445
		f 4 898 -895 899 900
		mu 0 4 1446 1447 1448 1449
		f 4 901 -901 902 903
		mu 0 4 1450 1451 1452 1453
		f 4 904 905 906 -885
		mu 0 4 7 1454 1455 1456
		f 4 907 -905 -882 908
		mu 0 4 1457 1458 7 1459
		f 4 909 -909 -886 910
		mu 0 4 1460 1461 1462 1463
		f 4 911 -911 -890 912
		mu 0 4 1464 1465 1466 1467
		f 4 913 -913 -892 914
		mu 0 4 1468 1469 1470 1471
		f 4 915 916 -915 917
		mu 0 4 1472 1473 1474 1475
		f 4 918 919 -899 920
		mu 0 4 1476 1477 1478 1479
		f 4 921 -921 -902 922
		mu 0 4 1480 1481 1482 1483
		f 4 -912 -914 923 -910
		mu 0 4 1484 1485 1486 1487
		f 4 -924 924 925 926
		mu 0 4 1488 1489 1490 1491
		f 4 927 -926 928 929
		mu 0 4 1492 1493 1494 1495
		f 4 930 -930 931 932
		mu 0 4 1496 1497 1498 1499
		f 4 -894 933 -897 -918
		mu 0 4 1500 1501 1502 1503
		f 4 -917 934 935 -925
		mu 0 4 1504 1505 1506 1507
		f 4 936 937 -919 938
		mu 0 4 1508 1509 1510 1511
		f 4 939 -939 -922 940
		mu 0 4 1512 1513 1514 1515
		f 4 -936 941 942 -929
		mu 0 4 1516 1517 1518 1519
		f 4 943 944 -937 945
		mu 0 4 1520 1521 1522 1523
		f 4 946 -946 -940 947
		mu 0 4 1524 1525 1526 1527
		f 4 948 -904 949 950
		mu 0 4 1528 1529 1530 1531
		f 4 -949 951 952 -923
		mu 0 4 1532 1533 1534 1535
		f 4 953 954 -951 955
		mu 0 4 1536 1537 1538 1539
		f 4 956 957 -954 958
		mu 0 4 1540 1541 1542 1543
		f 4 -927 959 960 -908
		mu 0 4 1544 1545 1546 1547
		f 4 961 -960 -928 962
		mu 0 4 1548 1549 1550 1551
		f 4 963 -963 -931 964
		mu 0 4 1552 1553 1554 1555
		f 4 965 -964 966 967
		mu 0 4 1556 1557 1558 1559
		f 4 968 -962 -966 969
		mu 0 4 1560 1561 1562 1563
		f 4 970 -968 971 972
		mu 0 4 1564 1565 1566 1567
		f 4 973 -971 974 975
		mu 0 4 1568 1569 1570 1571
		f 4 -974 976 977 -970
		mu 0 4 1572 1573 1574 1575
		f 4 978 -883 979 980
		mu 0 4 1576 1577 1578 1579
		f 4 -981 981 982 983
		mu 0 4 1580 1581 1582 1583
		f 4 -943 984 985 -932
		mu 0 4 1584 1585 1586 1587
		f 4 986 987 -944 988
		mu 0 4 1588 1589 1590 1591
		f 4 -920 989 -916 -896
		mu 0 4 1592 1593 1594 1595
		f 4 -990 -938 990 -935
		mu 0 4 1596 1597 1598 1599
		f 4 -991 -945 991 -942
		mu 0 4 1600 1601 1602 1603
		f 4 -988 992 -985 -992
		mu 0 4 1604 1605 1606 1607
		f 4 -953 993 994 -941
		mu 0 4 1608 1609 1610 1611
		f 4 995 996 997 -994
		mu 0 4 1612 1613 1614 1615
		f 4 998 -948 -995 999
		mu 0 4 1616 1617 1618 1619
		f 4 -1000 -998 1000 1001
		mu 0 4 1620 1621 1622 1623
		f 4 -957 1002 1003 -1002
		mu 0 4 1624 1625 1626 1627
		f 4 -947 1004 1005 -989
		mu 0 4 1628 1629 1630 1631
		f 4 -1005 -999 -1004 1006
		mu 0 4 1632 1633 1634 1635
		f 4 -907 1007 1008 -980
		mu 0 4 1636 1637 1638 1639
		f 4 -906 -961 -969 1009
		mu 0 4 1640 1641 1642 1643
		f 4 -1010 -978 1010 -1008
		mu 0 4 1644 1645 1646 1647
		f 4 -1009 1011 1012 -982
		mu 0 4 1648 1649 1650 1651
		f 4 1013 1014 -983 1015
		mu 0 4 1652 1653 1654 1655
		f 4 1016 -1016 -1013 1017
		mu 0 4 1656 1657 1658 1659
		f 4 1018 1019 -1015 1020
		mu 0 4 1660 1661 1662 1663
		f 4 -1020 1021 1022 -984
		mu 0 4 1664 1665 1666 1667
		f 4 -884 1023 1024 1025
		mu 0 4 1668 1669 1670 1671
		f 4 1026 -880 -1026 1027
		mu 0 4 1672 1673 1674 1675
		f 4 1028 -887 -1027 1029
		mu 0 4 1676 1677 1678 1679
		f 4 1030 -891 -1029 1031
		mu 0 4 1680 1681 1682 1683
		f 4 1032 -893 -1031 1033
		mu 0 4 1684 1685 1686 1687
		f 4 -934 -1033 1034 1035
		mu 0 4 1688 1689 1690 1691
		f 4 1036 -900 1037 1038
		mu 0 4 1692 1693 1694 1695
		f 4 1039 -903 -1037 1040
		mu 0 4 1696 1697 1698 1699
		f 4 -1030 1041 -1034 -1032
		mu 0 4 1700 1701 1702 1703
		f 4 1042 1043 1044 -1042
		mu 0 4 1704 1705 1706 1707
		f 4 -933 1045 -1044 1046
		mu 0 4 1708 1709 1710 1711
		f 4 -1045 1047 1048 -1035
		mu 0 4 1712 1713 1714 1715
		f 4 1049 -1039 1050 1051
		mu 0 4 1716 1717 1718 1719
		f 4 1052 -1041 -1050 1053
		mu 0 4 1720 1721 1722 1723
		f 4 -1046 -986 1054 -1048
		mu 0 4 1724 1725 1726 1727
		f 4 1055 -1052 1056 -987
		mu 0 4 1728 1729 1730 1731
		f 4 1057 -1054 -1056 -1006
		mu 0 4 1732 1733 1734 1735
		f 4 1058 -950 -1040 1059
		mu 0 4 1736 1737 1738 1739
		f 4 -1028 1060 1061 -1043
		mu 0 4 1740 1741 1742 1743
		f 4 -965 -1047 -1062 1062
		mu 0 4 1744 1745 1746 1747
		f 4 1063 -967 -1063 1064
		mu 0 4 1748 1749 1750 1751
		f 4 1065 1066 -972 1067
		mu 0 4 1752 1753 1754 1755
		f 4 -1064 1068 1069 -1068
		mu 0 4 1756 1757 1758 1759
		f 4 -898 -1036 1070 -1038
		mu 0 4 1760 1761 1762 1763
		f 4 -1049 1071 -1051 -1071
		mu 0 4 1764 1765 1766 1767
		f 4 -1055 -993 -1057 -1072
		mu 0 4 1768 1769 1770 1771
		f 4 1072 -1060 -1053 1073
		mu 0 4 1772 1773 1774 1775
		f 4 1074 1075 1076 -1073
		mu 0 4 1776 1777 1778 1779
		f 4 1077 -1074 -1058 -1007
		mu 0 4 1780 1781 1782 1783
		f 4 -1003 1078 -1075 -1078
		mu 0 4 1784 1785 1786 1787
		f 4 -979 -1023 1079 -1024
		mu 0 4 1788 1789 1790 1791
		f 4 1080 -1065 -1061 -1025
		mu 0 4 1792 1793 1794 1795
		f 4 -1080 1081 -1069 -1081
		mu 0 4 1796 1797 1798 1799
		f 4 1082 -958 -1001 -997
		mu 0 4 1800 1801 1802 1803
		f 4 -959 1083 -1076 -1079
		mu 0 4 1804 1805 1806 1807
		f 4 -955 -1083 -996 -952
		mu 0 4 1808 1809 1810 1811
		f 4 -1059 -1077 -1084 -956
		mu 0 4 1812 1813 1814 1815
		f 4 1084 1085 1086 1087
		mu 0 4 1816 1817 1818 1819
		f 4 1088 1089 -1085 1090
		mu 0 4 1820 1821 1822 1823
		f 4 1091 -1087 1092 1093
		mu 0 4 1824 1825 1826 1827
		f 4 1094 1095 -1094 1096
		mu 0 4 1828 1829 1830 1831
		f 4 1097 -1095 1098 1099
		mu 0 4 1832 1833 1834 1835
		f 4 1100 1101 1102 1103
		mu 0 4 1836 1837 1838 1839
		f 4 1104 -1101 1105 1106
		mu 0 4 1840 1841 1842 1843
		f 4 1107 -1107 1108 1109
		mu 0 4 1844 1845 1846 1847
		f 4 1110 1111 1112 -1091
		mu 0 4 1848 1849 1850 1851
		f 4 1113 -1111 -1088 1114
		mu 0 4 1852 1853 1854 1855
		f 4 1115 -1115 -1092 1116
		mu 0 4 1856 1857 1858 1859
		f 4 1117 -1117 -1096 1118
		mu 0 4 1860 1861 1862 1863
		f 4 1119 -1119 -1098 1120
		mu 0 4 1864 1865 1866 1867
		f 4 1121 1122 -1121 1123
		mu 0 4 1868 1869 1870 1871
		f 4 1124 1125 -1105 1126
		mu 0 4 1872 1873 1874 1875
		f 4 1127 -1127 -1108 1128
		mu 0 4 1876 1877 1878 1879
		f 4 -1118 -1120 1129 -1116
		mu 0 4 1880 1881 1882 1883
		f 4 -1130 1130 1131 1132
		mu 0 4 1884 1885 1886 1887
		f 4 1133 -1132 1134 1135
		mu 0 4 1888 1889 1890 1891
		f 4 1136 -1136 1137 1138
		mu 0 4 1892 1893 1894 1895
		f 4 -1100 1139 -1103 -1124
		mu 0 4 1896 1897 1898 1899
		f 4 -1123 1140 1141 -1131
		mu 0 4 1900 1901 1902 1903
		f 4 1142 1143 -1125 1144
		mu 0 4 1904 1905 1906 1907
		f 4 1145 -1145 -1128 1146
		mu 0 4 1908 1909 1910 1911
		f 4 -1142 1147 1148 -1135
		mu 0 4 1912 1913 1914 1915
		f 4 1149 1150 -1143 1151
		mu 0 4 1916 1917 1918 1919
		f 4 1152 -1152 -1146 1153
		mu 0 4 1920 1921 1922 1923
		f 4 1154 -1110 1155 1156
		mu 0 4 1924 1925 1926 1927
		f 4 -1155 1157 1158 -1129
		mu 0 4 1928 1929 1930 1931
		f 4 1159 1160 -1157 1161
		mu 0 4 1932 1933 1934 1935
		f 4 1162 1163 -1160 1164
		mu 0 4 1936 1937 1938 1939
		f 4 -1133 1165 1166 -1114
		mu 0 4 1940 1941 1942 1943
		f 4 1167 -1166 -1134 1168
		mu 0 4 1944 1945 1946 1947
		f 4 1169 -1169 -1137 1170
		mu 0 4 1948 1949 1950 1951
		f 4 1171 -1170 1172 1173
		mu 0 4 1952 1953 1954 1955
		f 4 1174 -1168 -1172 1175
		mu 0 4 1956 1957 1958 1959
		f 4 1176 -1174 1177 1178
		mu 0 4 1960 1961 1962 1963
		f 4 -1177 1179 1180 -1176
		mu 0 4 1964 1965 1966 1967
		f 4 1181 -1089 1182 1183
		mu 0 4 1968 1969 1970 1971
		f 4 -1184 1184 1185 1186
		mu 0 4 1972 1973 1974 1975
		f 4 -1149 1187 1188 -1138
		mu 0 4 1976 1977 1978 1979
		f 4 1189 1190 -1150 1191
		mu 0 4 1980 1981 1982 1983;
	setAttr ".fc[500:999]"
		f 4 -1126 1192 -1122 -1102
		mu 0 4 1984 1985 1986 1987
		f 4 -1193 -1144 1193 -1141
		mu 0 4 1988 1989 1990 1991
		f 4 -1194 -1151 1194 -1148
		mu 0 4 1992 1993 1994 1995
		f 4 -1191 1195 -1188 -1195
		mu 0 4 1996 1997 1998 1999
		f 4 -1159 1196 1197 -1147
		mu 0 4 2000 2001 2002 2003
		f 4 1198 1199 1200 -1197
		mu 0 4 2004 2005 2006 2007
		f 4 1201 -1154 -1198 1202
		mu 0 4 2008 2009 2010 2011
		f 4 -1203 -1201 1203 1204
		mu 0 4 2012 2013 2014 2015
		f 4 -1163 1205 1206 -1205
		mu 0 4 2016 2017 2018 2019
		f 4 -1153 1207 1208 -1192
		mu 0 4 2020 2021 2022 2023
		f 4 -1208 -1202 -1207 1209
		mu 0 4 2024 2025 2026 2027
		f 4 -1113 1210 1211 -1183
		mu 0 4 2028 2029 2030 2031
		f 4 -1112 -1167 -1175 1212
		mu 0 4 2032 2033 2034 2035
		f 4 -1213 -1181 1213 -1211
		mu 0 4 2036 2037 2038 2039
		f 4 -1212 1214 1215 -1185
		mu 0 4 2040 2041 2042 2043
		f 4 1216 1217 -1186 1218
		mu 0 4 2044 2045 2046 2047
		f 4 1219 -1219 -1216 1220
		mu 0 4 2048 2049 2050 2051
		f 4 -1018 1221 -1218 1222
		mu 0 4 2052 2053 2054 2055
		f 4 -1222 -1012 1223 -1187
		mu 0 4 2056 2057 2058 2059
		f 4 -1090 1224 1225 1226
		mu 0 4 2060 2061 2062 2063
		f 4 1227 -1086 -1227 1228
		mu 0 4 2064 2065 2066 2067
		f 4 1229 -1093 -1228 1230
		mu 0 4 2068 2069 2070 2071
		f 4 1231 -1097 -1230 1232
		mu 0 4 2072 2073 2074 2075
		f 4 1233 -1099 -1232 1234
		mu 0 4 2076 2077 2078 2079
		f 4 -1140 -1234 1235 1236
		mu 0 4 2080 2081 2082 2083
		f 4 1237 -1106 1238 1239
		mu 0 4 2084 2085 2086 2087
		f 4 1240 -1109 -1238 1241
		mu 0 4 2088 2089 2090 2091
		f 4 -1231 1242 -1235 -1233
		mu 0 4 2092 2093 2094 2095
		f 4 1243 1244 1245 -1243
		mu 0 4 2096 2097 2098 2099
		f 4 -1139 1246 -1245 1247
		mu 0 4 2100 2101 2102 2103
		f 4 -1246 1248 1249 -1236
		mu 0 4 2104 2105 2106 2107
		f 4 1250 -1240 1251 1252
		mu 0 4 2108 2109 2110 2111
		f 4 1253 -1242 -1251 1254
		mu 0 4 2112 2113 2114 2115
		f 4 -1247 -1189 1255 -1249
		mu 0 4 2116 2117 2118 2119
		f 4 1256 -1253 1257 -1190
		mu 0 4 2120 2121 2122 2123
		f 4 1258 -1255 -1257 -1209
		mu 0 4 2124 2125 2126 2127
		f 4 1259 -1156 -1241 1260
		mu 0 4 2128 2129 2130 2131
		f 4 -1229 1261 1262 -1244
		mu 0 4 2132 2133 2134 2135
		f 4 -1171 -1248 -1263 1263
		mu 0 4 2136 2137 2138 2139
		f 4 1264 -1173 -1264 1265
		mu 0 4 2140 2141 2142 2143
		f 4 -976 1266 -1178 1267
		mu 0 4 2144 2145 2146 2147
		f 4 -1265 1268 -977 -1268
		mu 0 4 2148 2149 2150 2151
		f 4 -1104 -1237 1269 -1239
		mu 0 4 2152 2153 2154 2155
		f 4 -1250 1270 -1252 -1270
		mu 0 4 2156 2157 2158 2159
		f 4 -1256 -1196 -1258 -1271
		mu 0 4 2160 2161 2162 2163
		f 4 1271 -1261 -1254 1272
		mu 0 4 2164 2165 2166 2167
		f 4 1273 1274 1275 -1272
		mu 0 4 2168 2169 2170 2171
		f 4 -1273 -1259 -1210 1276
		mu 0 4 2172 2173 2174 2175
		f 4 -1206 1277 -1274 -1277
		mu 0 4 2176 2177 2178 2179
		f 4 -1182 -1224 1278 -1225
		mu 0 4 2180 2181 2182 2183
		f 4 1279 -1266 -1262 -1226
		mu 0 4 2184 2185 2186 2187
		f 4 -1279 -1011 -1269 -1280
		mu 0 4 2188 2189 2190 2191
		f 4 1280 -1164 -1204 -1200
		mu 0 4 2192 2193 2194 2195
		f 4 -1165 1281 -1275 -1278
		mu 0 4 2196 2197 2198 2199
		f 4 -1161 -1281 -1199 -1158
		mu 0 4 2200 2201 2202 2203
		f 4 -1260 -1276 -1282 -1162
		mu 0 4 2204 2205 2206 2207
		f 4 -1214 1282 1283 -1215
		mu 0 4 2208 2209 2210 2211
		f 4 1284 -1283 -1180 1285
		mu 0 4 2212 2213 2214 2215
		f 4 1286 -1286 -1179 1287
		mu 0 4 2216 2217 2218 2219
		f 4 1288 1289 -1285 1290
		mu 0 4 2220 2221 2222 2223
		f 4 1291 -1289 1292 1293
		mu 0 4 2224 2225 2226 2227
		f 4 1294 -1221 -1284 -1290
		mu 0 4 2228 2229 2230 2231
		f 4 -1292 1295 1296 -1295
		mu 0 4 2232 2233 2234 2235
		f 4 -1297 1297 1298 -1220
		mu 0 4 2236 2237 2238 2239
		f 4 1299 1300 1301 1302
		mu 0 4 2240 2241 2242 2243
		f 3 1303 1304 -1300
		mu 0 3 2244 2245 2246
		f 4 -1304 1305 1306 1307
		mu 0 4 2247 2248 2249 2250
		f 4 1308 1309 1310 1311
		mu 0 4 2251 2252 2253 2254
		f 4 1312 -1309 1313 1314
		mu 0 4 2255 2256 2257 2258
		f 4 1315 -1310 1316 1317
		mu 0 4 2259 2260 2261 2262
		f 4 1318 -1318 1319 1320
		mu 0 4 2263 2264 2265 2266
		f 4 1321 1322 -1317 -1313
		mu 0 4 2267 2268 2269 2270
		f 4 -1323 1323 1324 -1320
		mu 0 4 2271 2272 2273 2274
		f 4 1325 -1315 1326 1327
		mu 0 4 2275 2276 2277 2278
		f 4 -115 1328 1329 1330
		mu 0 4 2279 2280 2281 2282
		f 4 -1326 1331 1332 -1322
		mu 0 4 2283 2284 2285 2286
		f 4 1333 1334 1335 -1332
		mu 0 4 2287 2288 2289 2290
		f 4 -1333 1336 1337 -1324
		mu 0 4 2291 2292 2293 2294
		f 4 -1337 -1336 1338 1339
		mu 0 4 2295 2296 2297 2298
		f 4 1340 1341 1342 1343
		mu 0 4 2299 2300 2301 2302
		f 4 -1344 -1327 1344 1345
		mu 0 4 2303 2304 2305 2306
		f 4 1346 -1345 -1314 1347
		mu 0 4 2307 2308 2309 2310
		f 4 -1312 1348 1349 -1348
		mu 0 4 2311 2312 2313 2314
		f 4 1350 1351 -1306 1352
		mu 0 4 2315 2316 2317 2318
		f 4 1353 -1353 -1303 1354
		mu 0 4 2319 2320 2321 2322
		f 4 1355 -1308 1356 1357
		mu 0 4 2323 2324 2325 2326
		f 4 1358 -1358 1359 1360
		mu 0 4 2327 2328 2329 2330
		f 4 1361 -1305 -1356 1362
		mu 0 4 2331 2332 2333 2334
		f 4 1363 -1293 1364 1365
		mu 0 4 2335 2336 2337 2338
		f 4 1366 1367 1368 1369
		mu 0 4 2339 2340 2341 2342
		f 4 1370 -1354 1371 -1368
		mu 0 4 2343 2344 2345 2346
		f 4 1372 -1307 1373 1374
		mu 0 4 2347 2348 2349 2350
		f 4 1375 -1357 -1373 1376
		mu 0 4 2351 2352 2353 2354
		f 4 1377 -1360 -1376 1378
		mu 0 4 2355 2356 2357 2358
		f 4 -1374 -1352 1379 1380
		mu 0 4 2359 2360 2361 2362
		f 4 1381 -1363 -1359 1382
		mu 0 4 2363 2364 2365 2366
		f 4 -1217 1383 -1362 -1223
		mu 0 4 2367 2368 2369 2370
		f 4 -1021 -1014 -1017 -1382
		mu 0 4 2371 2372 2373 2374
		f 4 -1384 -1299 1384 -1301
		mu 0 4 2375 2376 2377 2378
		f 4 1385 1386 1387 -1370
		mu 0 4 2379 2380 2381 2382
		f 4 -1267 1388 1389 -1288
		mu 0 4 2383 2384 2385 2386
		f 4 1390 -1389 -975 1391
		mu 0 4 2387 2388 2389 2390
		f 4 1392 -1392 -973 1393
		mu 0 4 2391 2392 2393 2394
		f 4 1394 -1394 -1067 1395
		mu 0 4 2395 2396 2397 2398
		f 4 1396 -1396 1397 1398
		mu 0 4 2399 2400 2401 2402
		f 4 -1365 -1291 -1287 1399
		mu 0 4 2403 2404 2405 2406
		f 4 1400 1401 1402 -1388
		mu 0 4 2407 2408 2409 2410
		f 4 -1403 1403 1404 -1367
		mu 0 4 2411 2412 2413 2414
		f 4 -1355 1405 1406 1407
		mu 0 4 9 10 2415 2416
		f 4 1408 -1407 1409 1410
		mu 0 4 2417 2418 2419 2420
		f 4 1411 1412 -1411 1413
		mu 0 4 2421 2422 2423 2424
		f 4 1414 -1412 1415 1416
		mu 0 4 2425 2426 2427 2428
		f 4 1417 1418 1419 1420
		mu 0 4 2429 2430 2431 2432
		f 4 1421 -1418 1422 1423
		mu 0 4 2433 2434 2435 2436
		f 4 1424 1425 -1409 1426
		mu 0 4 2437 2438 2439 2440
		f 4 1427 -1427 -1413 1428
		mu 0 4 2441 2442 2443 2444
		f 4 1429 -1429 -1415 1430
		mu 0 4 2445 2446 2447 2448
		f 4 1431 1432 -1431 1433
		mu 0 4 2449 2450 2451 2452
		f 4 1434 1435 -1422 1436
		mu 0 4 2453 2454 2455 2456
		f 4 -1428 -1430 1437 -1425
		mu 0 4 2457 2458 2459 2460
		f 4 -1438 1438 1439 1440
		mu 0 4 2461 2462 2463 2464
		f 4 1441 -1440 1442 1443
		mu 0 4 2465 2466 2467 2468
		f 4 1444 -1444 1445 1446
		mu 0 4 2469 2470 2471 2472
		f 4 -1417 1447 -1420 -1434
		mu 0 4 2473 2474 2475 2476
		f 4 -1433 1448 1449 -1439
		mu 0 4 2477 2478 2479 2480
		f 4 1450 1451 -1435 1452
		mu 0 4 2481 2482 2483 2484
		f 4 -1450 1453 1454 -1443
		mu 0 4 2485 2486 2487 2488
		f 4 1455 1456 -1451 1457
		mu 0 4 2489 2490 2491 2492
		f 4 1458 1459 1460 1461
		mu 0 4 2493 2494 2495 2496
		f 4 1462 1463 1464 -1437
		mu 0 4 2497 2498 2499 2500
		f 4 1465 1466 -1462 1467
		mu 0 4 2501 2502 2503 2504
		f 4 1468 1469 -1466 1470
		mu 0 4 2505 2506 2507 2508
		f 4 -1369 1471 -1441 1472
		mu 0 4 2509 2510 2511 2512
		f 4 -1442 1473 -1386 -1473
		mu 0 4 2513 2514 2515 2516
		f 4 -1455 1474 1475 -1446
		mu 0 4 2517 2518 2519 2520
		f 4 1476 1477 -1456 1478
		mu 0 4 2521 2522 2523 2524
		f 4 -1436 1479 -1432 -1419
		mu 0 4 2525 2526 2527 2528
		f 4 -1480 -1452 1480 -1449
		mu 0 4 2529 2530 2531 2532
		f 4 -1481 -1457 1481 -1454
		mu 0 4 2533 2534 2535 2536
		f 4 -1478 1482 -1475 -1482
		mu 0 4 2537 2538 2539 2540
		f 4 -1465 1483 1484 -1453
		mu 0 4 2541 2542 2543 2544
		f 4 1485 1486 1487 1488
		mu 0 4 2545 2546 2547 2548
		f 4 1489 1490 1491 1492
		mu 0 4 2549 2550 2551 2552
		f 4 -1493 -1488 1493 1494
		mu 0 4 2553 2554 2555 2556
		f 4 -1469 1495 1496 -1495
		mu 0 4 2557 2558 2559 2560
		f 4 -1479 1497 1498 1499
		mu 0 4 2561 2562 2563 2564
		f 4 -1408 -1426 -1472 -1372
		mu 0 4 9 2565 2566 2567
		f 4 1500 -1410 1501 1502
		mu 0 4 2568 2569 2570 2571
		f 4 1503 -1414 -1501 1504
		mu 0 4 2572 2573 2574 2575
		f 4 1505 -1416 -1504 1506
		mu 0 4 2576 2577 2578 2579
		f 4 -1448 -1506 1507 1508
		mu 0 4 2580 2581 2582 2583
		f 4 1509 -1423 1510 1511
		mu 0 4 2584 2585 2586 2587
		f 4 -1503 1512 -1507 -1505
		mu 0 4 2588 2589 2590 2591
		f 4 1513 1514 1515 -1513
		mu 0 4 2592 2593 2594 2595
		f 4 -1447 1516 -1515 1517
		mu 0 4 2596 2597 2598 2599
		f 4 -1516 1518 1519 -1508
		mu 0 4 2600 2601 2602 2603
		f 4 1520 -1512 1521 1522
		mu 0 4 2604 2605 2606 2607
		f 4 -1517 -1476 1523 -1519
		mu 0 4 2608 2609 2610 2611
		f 4 1524 -1523 1525 -1477
		mu 0 4 2612 2613 2614 2615
		f 4 1526 1527 -1510 1528
		mu 0 4 2616 2617 2618 2619
		f 4 1529 -1518 1530 -1294
		mu 0 4 2620 2621 2622 2623
		f 4 -1421 -1509 1531 -1511
		mu 0 4 2624 2625 2626 2627
		f 4 -1520 1532 -1522 -1532
		mu 0 4 2628 2629 2630 2631
		f 4 -1524 -1483 -1526 -1533
		mu 0 4 2632 2633 2634 2635
		f 4 1533 -1529 -1521 1534
		mu 0 4 2636 2637 2638 2639
		f 4 1535 1536 1537 1538
		mu 0 4 2640 2641 2642 2643
		f 4 1539 1540 1541 1542
		mu 0 4 2644 2645 2646 2647
		f 4 -1496 1543 -1536 -1540
		mu 0 4 2648 2649 2650 2651
		f 4 1544 -1502 -1406 -1302
		mu 0 4 2652 2653 2654 2655
		f 4 1545 -1470 -1494 -1487
		mu 0 4 2656 2657 2658 2659
		f 4 -1471 1546 -1537 -1544
		mu 0 4 2660 2661 2662 2663
		f 4 -1467 -1546 -1486 1547
		mu 0 4 2664 2665 2666 2667
		f 4 1548 -1538 -1547 -1468
		mu 0 4 2668 2669 2670 2671
		f 4 -1463 -1424 -1528 -1460
		mu 0 4 2672 2673 2674 2675
		f 4 -1459 -1548 1549 -1464
		mu 0 4 2676 2677 2678 2679
		f 4 -1550 -1489 -1492 -1484
		mu 0 4 2680 2681 2682 2683
		f 4 -1498 -1458 -1485 -1491
		mu 0 4 2684 2685 2686 2687
		f 4 -1490 -1497 -1543 -1499
		mu 0 4 2688 2689 2690 2691
		f 4 -1549 -1461 -1527 1550
		mu 0 4 2692 2693 2694 2695
		f 4 -1539 -1551 -1534 -1541
		mu 0 4 2696 2697 2698 2699
		f 4 -1525 -1500 -1542 -1535
		mu 0 4 2700 2701 2702 2703
		f 4 -1298 1551 -1545 -1385
		mu 0 4 2704 2705 2706 2707
		f 4 -1530 1552 -1474 -1445
		mu 0 4 2708 2709 2710 2711
		f 4 -1514 -1552 -1296 -1531
		mu 0 4 2712 2713 2714 2715
		f 4 1553 -1400 -1390 1554
		mu 0 4 2716 2717 2718 2719
		f 4 1555 -1371 -1405 1556
		mu 0 4 2720 2721 2722 2723
		f 4 -1556 1557 1558 -1351
		mu 0 4 2724 2725 2726 2727
		f 4 1559 -1558 -1557 1560
		mu 0 4 2728 2729 2730 2731
		f 4 -1559 1561 1562 -1380
		mu 0 4 2732 2733 2734 2735
		f 4 1563 -1562 -1560 1564
		mu 0 4 2736 2737 2738 2739
		f 4 1565 -1561 -1404 1566
		mu 0 4 2740 2741 2742 2743
		f 4 1567 -1565 1568 1569
		mu 0 4 2744 2745 2746 2747
		f 4 -1567 -1402 1570 1571
		mu 0 4 2748 2749 2750 2751
		f 4 1572 -1566 1573 1574
		mu 0 4 2752 2753 2754 2755
		f 4 -1573 1575 1576 -1569
		mu 0 4 2756 2757 2758 2759
		f 4 1577 -1574 -1572 1578
		mu 0 4 2760 2761 2762 2763
		f 4 1579 1580 1581 -1571
		mu 0 4 2764 2765 2766 2767
		f 4 1582 1583 1584 1585
		mu 0 4 2768 2769 2770 2771
		f 4 -1582 -1585 1586 -1579
		mu 0 4 2772 2773 2774 2775
		f 4 1587 -1576 -1575 1588
		mu 0 4 2776 2777 2778 2779
		f 4 1589 -1589 -1578 1590
		mu 0 4 2780 2781 2782 2783
		f 4 1591 -1591 -1587 1592
		mu 0 4 2784 2785 2786 2787
		f 4 1593 -1350 1594 1595
		mu 0 4 2788 2789 2790 2791
		f 4 1596 1597 1598 -1596
		mu 0 4 2792 2793 2794 2795
		f 4 1599 1600 1601 -1598
		mu 0 4 2796 2797 2798 2799
		f 4 -1594 1602 1603 -1347
		mu 0 4 2800 2801 2802 2803
		f 4 -1604 1604 1605 -1346
		mu 0 4 2804 2805 2806 2807
		f 4 1606 1607 1608 -421
		mu 0 4 2808 2809 2810 2811
		f 4 1609 -1603 -1599 1610
		mu 0 4 2812 2813 2814 2815
		f 4 -1610 1611 1612 -1605
		mu 0 4 2816 2817 2818 2819
		f 4 1613 -1609 1614 1615
		mu 0 4 2820 2821 2822 2823
		f 4 1616 1617 -1611 -1602
		mu 0 4 2824 2825 2826 2827
		f 4 1618 1619 -1612 -1618
		mu 0 4 2828 2829 2830 2831
		f 4 -417 -1616 1620 1621
		mu 0 4 2832 2833 2834 2835
		f 4 1622 -1401 1623 -1366
		mu 0 4 2836 2837 2838 2839
		f 4 -1553 -1364 -1624 -1387
		mu 0 4 2840 2841 2842 2843
		f 4 1624 1625 1626 1627
		mu 0 4 2844 2845 2846 2847
		f 4 1628 1629 -1625 1630
		mu 0 4 2848 2849 2850 2851
		f 4 1631 -1627 1632 1633
		mu 0 4 2852 2853 2854 2855
		f 4 1634 1635 -1634 1636
		mu 0 4 2856 2857 2858 2859
		f 4 1637 -1635 1638 1639
		mu 0 4 2860 2861 2862 2863
		f 4 1640 1641 1642 1643
		mu 0 4 2864 2865 2866 2867
		f 4 1644 -1641 1645 1646
		mu 0 4 2868 2869 2870 2871
		f 4 1647 -1647 1648 1649
		mu 0 4 2872 2873 2874 2875
		f 4 1650 1651 1652 -1631
		mu 0 4 2876 2877 2878 2879
		f 4 1653 -1651 -1628 1654
		mu 0 4 2880 2881 2882 2883
		f 4 1655 -1655 -1632 1656
		mu 0 4 2884 2885 2886 2887
		f 4 1657 -1657 -1636 1658
		mu 0 4 2888 2889 2890 2891
		f 4 1659 -1659 -1638 1660
		mu 0 4 2892 2893 2894 2895
		f 4 1661 1662 -1661 1663
		mu 0 4 2896 2897 2898 2899
		f 4 1664 1665 -1645 1666
		mu 0 4 2900 2901 2902 2903
		f 4 1667 -1667 -1648 1668
		mu 0 4 2904 2905 2906 2907
		f 4 -1658 -1660 1669 -1656
		mu 0 4 2908 2909 2910 2911
		f 4 -1670 1670 1671 1672
		mu 0 4 2912 2913 2914 2915
		f 4 1673 -1672 1674 1675
		mu 0 4 2916 2917 2918 2919
		f 4 1676 -1676 1677 1678
		mu 0 4 2920 2921 2922 2923
		f 4 -1640 1679 -1643 -1664
		mu 0 4 2924 2925 2926 2927
		f 4 -1663 1680 1681 -1671
		mu 0 4 2928 2929 2930 2931
		f 4 1682 1683 -1665 1684
		mu 0 4 2932 2933 2934 2935
		f 4 1685 -1685 -1668 1686
		mu 0 4 2936 2937 2938 2939
		f 4 -1682 1687 1688 -1675
		mu 0 4 2940 2941 2942 2943
		f 4 1689 1690 -1683 1691
		mu 0 4 2944 2945 2946 2947
		f 4 1692 -1692 -1686 1693
		mu 0 4 2948 2949 2950 2951
		f 4 1694 -1650 1695 1696
		mu 0 4 2952 2953 2954 2955
		f 4 -1695 1697 1698 -1669
		mu 0 4 2956 2957 2958 2959
		f 4 1699 1700 -1697 1701
		mu 0 4 2960 2961 2962 2963
		f 4 1702 1703 -1700 1704
		mu 0 4 2964 2965 2966 2967
		f 4 -1673 1705 1706 -1654
		mu 0 4 2968 2969 2970 2971
		f 4 1707 -1706 -1674 1708
		mu 0 4 2972 2973 2974 2975
		f 4 1709 -1709 -1677 1710
		mu 0 4 2976 2977 2978 2979
		f 4 1711 -1710 1712 1713
		mu 0 4 2980 2981 2982 2983
		f 4 1714 -1708 -1712 1715
		mu 0 4 2984 2985 2986 2987
		f 4 1716 -1714 1717 1718
		mu 0 4 2988 2989 2990 2991
		f 4 1719 -1717 -1398 -1066
		mu 0 4 2992 2993 2994 2995
		f 4 -1720 -1070 1720 -1716
		mu 0 4 2996 2997 2998 2999
		f 4 1721 -1629 1722 1723
		mu 0 4 3000 3001 3002 3003
		f 4 -1724 1724 1725 1726
		mu 0 4 3004 3005 3006 3007
		f 4 -1689 1727 1728 -1678
		mu 0 4 3008 3009 3010 3011
		f 4 1729 1730 -1690 1731
		mu 0 4 3012 3013 3014 3015
		f 4 -1666 1732 -1662 -1642
		mu 0 4 3016 3017 3018 3019
		f 4 -1733 -1684 1733 -1681
		mu 0 4 3020 3021 3022 3023
		f 4 -1734 -1691 1734 -1688
		mu 0 4 3024 3025 3026 3027
		f 4 -1731 1735 -1728 -1735
		mu 0 4 3028 3029 3030 3031
		f 4 -1699 1736 1737 -1687
		mu 0 4 3032 3033 3034 3035
		f 4 1738 1739 1740 -1737
		mu 0 4 3036 3037 3038 3039
		f 4 1741 -1694 -1738 1742
		mu 0 4 3040 3041 3042 3043
		f 4 -1743 -1741 1743 1744
		mu 0 4 3044 3045 3046 3047
		f 4 -1703 1745 1746 -1745
		mu 0 4 3048 3049 3050 3051
		f 4 -1693 1747 1748 -1732
		mu 0 4 3052 3053 3054 3055
		f 4 -1748 -1742 -1747 1749
		mu 0 4 3056 3057 3058 3059
		f 4 -1653 1750 1751 -1723
		mu 0 4 3060 3061 3062 3063
		f 4 -1652 -1707 -1715 1752
		mu 0 4 3064 3065 3066 3067
		f 4 -1721 -1082 -1751 -1753
		mu 0 4 3068 3069 3070 3071
		f 4 -1752 -1022 1753 -1725
		mu 0 4 3072 3073 3074 3075
		f 4 1754 1755 1756 -1727
		mu 0 4 3076 3077 3078 3079
		f 4 -1630 1757 1758 1759
		mu 0 4 3080 3081 3082 3083
		f 4 1760 -1626 -1760 1761
		mu 0 4 3084 3085 3086 3087
		f 4 1762 -1633 -1761 1763
		mu 0 4 3088 3089 3090 3091
		f 4 1764 -1637 -1763 1765
		mu 0 4 3092 3093 3094 3095
		f 4 1766 -1639 -1765 1767
		mu 0 4 3096 3097 3098 3099
		f 4 -1680 -1767 1768 1769
		mu 0 4 3100 3101 3102 3103
		f 4 1770 -1646 1771 1772
		mu 0 4 3104 3105 3106 3107
		f 4 1773 -1649 -1771 1774
		mu 0 4 3108 3109 3110 3111
		f 4 -1764 1775 -1768 -1766
		mu 0 4 3112 3113 3114 3115
		f 4 1776 1777 1778 -1776
		mu 0 4 3116 3117 3118 3119
		f 4 -1679 1779 -1778 1780
		mu 0 4 3120 3121 3122 3123
		f 4 -1779 1781 1782 -1769
		mu 0 4 3124 3125 3126 3127
		f 4 1783 -1773 1784 1785
		mu 0 4 3128 3129 3130 3131
		f 4 1786 -1775 -1784 1787
		mu 0 4 3132 3133 3134 3135
		f 4 -1780 -1729 1788 -1782
		mu 0 4 3136 3137 3138 3139
		f 4 1789 -1786 1790 -1730
		mu 0 4 3140 3141 3142 3143
		f 4 1791 -1788 -1790 -1749
		mu 0 4 3144 3145 3146 3147
		f 4 1792 -1696 -1774 1793
		mu 0 4 3148 3149 3150 3151
		f 4 -1762 1794 1795 -1777
		mu 0 4 3152 3153 3154 3155
		f 4 -1711 -1781 -1796 1796
		mu 0 4 3156 3157 3158 3159
		f 4 1797 -1713 -1797 1798
		mu 0 4 3160 3161 3162 3163
		f 4 1799 1800 -1718 1801
		mu 0 4 3164 3165 3166 3167
		f 4 -1798 1802 1803 -1802
		mu 0 4 3168 3169 3170 3171
		f 4 -1644 -1770 1804 -1772
		mu 0 4 3172 3173 3174 3175
		f 4 -1783 1805 -1785 -1805
		mu 0 4 3176 3177 3178 3179
		f 4 -1789 -1736 -1791 -1806
		mu 0 4 3180 3181 3182 3183
		f 4 1806 -1794 -1787 1807
		mu 0 4 3184 3185 3186 3187
		f 4 1808 1809 1810 -1807
		mu 0 4 3188 3189 3190 3191
		f 4 1811 -1808 -1792 -1750
		mu 0 4 3192 3193 3194 3195
		f 4 -1746 1812 -1809 -1812
		mu 0 4 3196 3197 3198 3199
		f 4 -1722 -1757 1813 -1758
		mu 0 4 3200 3201 3202 3203
		f 4 1814 -1799 -1795 -1759
		mu 0 4 3204 3205 3206 3207
		f 4 -1814 1815 -1803 -1815
		mu 0 4 3208 3209 3210 3211
		f 4 1816 -1704 -1744 -1740
		mu 0 4 3212 3213 3214 3215
		f 4 -1705 1817 -1810 -1813
		mu 0 4 3216 3217 3218 3219
		f 4 -1701 -1817 -1739 -1698
		mu 0 4 3220 3221 3222 3223
		f 4 -1793 -1811 -1818 -1702
		mu 0 4 3224 3225 3226 3227
		f 4 1818 -1754 -1019 1819
		mu 0 4 3228 3229 3230 3231
		f 4 -1819 1820 1821 -1726
		mu 0 4 3232 3233 3234 3235
		f 4 -1822 1822 1823 -1755
		mu 0 4 3236 3237 3238 3239
		f 4 -1823 -1821 -1820 1824
		mu 0 4 3240 3241 3242 3243
		f 4 1825 -1825 -1383 1826
		mu 0 4 3244 3245 3246 3247
		f 4 1827 -1801 1828 1829
		mu 0 4 3248 3249 3250 3251
		f 4 1830 -1399 -1719 -1828
		mu 0 4 3252 3253 3254 3255
		f 4 -1584 1831 1832 -1593
		mu 0 4 3256 3257 3258 3259
		f 4 1833 -1583 -1829 1834
		mu 0 4 3260 3261 3262 3263
		f 4 1835 -1835 -1800 1836
		mu 0 4 3264 3265 3266 3267
		f 4 -1361 1837 1838 -1827
		mu 0 4 3268 3269 3270 3271
		f 4 1839 -1838 -1378 1840
		mu 0 4 3272 3273 3274 3275
		f 4 -1841 1841 1842 1843
		mu 0 4 3276 3277 3278 3279
		f 4 1844 1845 -1325 1846
		mu 0 4 3280 3281 3282 3283
		f 4 1847 -1847 -1338 1848
		mu 0 4 3284 3285 3286 3287
		f 4 -1849 -1340 1849 1850
		mu 0 4 3288 3289 3290 3291
		f 4 1851 1852 1853 1854
		mu 0 4 3292 3293 11 12
		f 4 1855 -1854 1856 1857
		mu 0 4 3294 12 11 3295
		f 4 1858 1859 -1858 1860
		mu 0 4 3296 3297 3298 3299
		f 4 1861 -1859 1862 1863
		mu 0 4 3300 3301 3302 3303
		f 4 1864 1865 1866 1867
		mu 0 4 3304 3305 3306 3307
		f 4 1868 -1865 1869 1870
		mu 0 4 3308 3309 3310 3311
		f 4 1871 -1871 1872 1873
		mu 0 4 3312 3313 3314 3315
		f 4 1874 1875 1876 -1855
		mu 0 4 12 3316 3317 3318
		f 4 1877 -1875 -1856 1878
		mu 0 4 3319 3320 12 3321
		f 4 1879 -1879 -1860 1880
		mu 0 4 3322 3323 3324 3325
		f 4 1881 -1881 -1862 1882
		mu 0 4 3326 3327 3328 3329
		f 4 1883 1884 -1883 1885
		mu 0 4 3330 3331 3332 3333
		f 4 1886 1887 -1869 1888
		mu 0 4 3334 3335 3336 3337
		f 4 1889 -1889 -1872 1890
		mu 0 4 3338 3339 3340 3341
		f 4 -1880 -1882 1891 -1878
		mu 0 4 3342 3343 3344 3345
		f 4 -1892 1892 1893 1894
		mu 0 4 3346 3347 3348 3349
		f 4 1895 -1894 1896 1897
		mu 0 4 3350 3351 3352 3353
		f 4 1898 -1898 1899 1900
		mu 0 4 3354 3355 3356 3357
		f 4 -1864 1901 -1867 -1886
		mu 0 4 3358 3359 3360 3361
		f 4 -1885 1902 1903 -1893
		mu 0 4 3362 3363 3364 3365
		f 4 1904 1905 -1887 1906
		mu 0 4 3366 3367 3368 3369
		f 4 1907 -1907 -1890 1908
		mu 0 4 3370 3371 3372 3373
		f 4 -1904 1909 1910 -1897
		mu 0 4 3374 3375 3376 3377
		f 4 1911 1912 -1905 1913
		mu 0 4 3378 3379 3380 3381
		f 4 1914 -1914 -1908 1915
		mu 0 4 3382 3383 3384 3385
		f 4 1916 -1874 1917 1918
		mu 0 4 3386 3387 3388 3389
		f 4 -1917 1919 1920 -1891
		mu 0 4 3390 3391 3392 3393
		f 4 1921 1922 -1919 1923
		mu 0 4 3394 3395 3396 3397
		f 4 1924 1925 -1922 1926
		mu 0 4 3398 3399 3400 3401
		f 4 1927 1928 -1899 1929
		mu 0 4 3402 3403 3404 3405
		f 4 -1929 -1836 1930 -1896
		mu 0 4 3406 3407 3408 3409
		f 4 1931 -1852 1932 1933
		mu 0 4 3410 3411 3412 3413
		f 4 -1934 1934 1935 1936
		mu 0 4 3414 3415 3416 3417
		f 4 -1911 1937 1938 -1900
		mu 0 4 3418 3419 3420 3421
		f 4 1939 1940 -1912 1941
		mu 0 4 3422 3423 3424 3425
		f 4 -1888 1942 -1884 -1866
		mu 0 4 3426 3427 3428 3429
		f 4 -1943 -1906 1943 -1903
		mu 0 4 3430 3431 3432 3433
		f 4 -1944 -1913 1944 -1910
		mu 0 4 3434 3435 3436 3437
		f 4 -1941 1945 -1938 -1945
		mu 0 4 3438 3439 3440 3441
		f 4 -1921 1946 1947 -1909
		mu 0 4 3442 3443 3444 3445
		f 4 1948 1949 1950 -1947
		mu 0 4 3446 3447 3448 3449
		f 4 1951 -1916 -1948 1952
		mu 0 4 3450 3451 3452 3453
		f 4 -1953 -1951 1953 1954
		mu 0 4 3454 3455 3456 3457
		f 4 -1925 1955 1956 -1955
		mu 0 4 3458 3459 3460 3461
		f 4 -1915 1957 1958 -1942
		mu 0 4 3462 3463 3464 3465
		f 4 -1958 -1952 -1957 1959
		mu 0 4 3466 3467 3468 3469
		f 4 -1877 -1756 1960 -1933
		mu 0 4 3470 3471 3472 3473
		f 4 -1931 1961 -1876 -1895
		mu 0 4 3474 3475 3476 3477
		f 4 -1961 -1824 1962 -1935
		mu 0 4 3478 3479 3480 3481
		f 4 1963 1964 1965 -1937
		mu 0 4 3482 3483 3484 3485
		f 4 1966 1967 1968 -1853
		mu 0 4 3486 3487 3488 3489
		f 4 1969 -1857 -1969 1970
		mu 0 4 3490 3491 3492 3493
		f 4 1971 -1861 -1970 1972
		mu 0 4 3494 3495 3496 3497
		f 4 1973 -1863 -1972 1974
		mu 0 4 3498 3499 3500 3501
		f 4 -1902 -1974 1975 1976
		mu 0 4 3502 3503 3504 3505
		f 4 1977 -1870 1978 1979
		mu 0 4 3506 3507 3508 3509
		f 4 1980 -1873 -1978 1981
		mu 0 4 3510 3511 3512 3513
		f 4 -1971 1982 -1975 -1973
		mu 0 4 3514 3515 3516 3517
		f 4 1983 1984 1985 -1983
		mu 0 4 3518 3519 3520 3521
		f 4 -1901 1986 -1985 1987
		mu 0 4 3522 3523 3524 3525
		f 4 -1986 1988 1989 -1976
		mu 0 4 3526 3527 3528 3529
		f 4 1990 -1980 1991 1992
		mu 0 4 3530 3531 3532 3533
		f 4 1993 -1982 -1991 1994
		mu 0 4 3534 3535 3536 3537
		f 4 -1987 -1939 1995 -1989
		mu 0 4 3538 3539 3540 3541
		f 4 1996 -1993 1997 -1940
		mu 0 4 3542 3543 3544 3545
		f 4 1998 -1995 -1997 -1959
		mu 0 4 3546 3547 3548 3549
		f 4 1999 -1918 -1981 2000
		mu 0 4 3550 3551 3552 3553
		f 4 2001 -1930 -1988 2002
		mu 0 4 3554 3555 3556 3557
		f 4 -2002 2003 2004 2005
		mu 0 4 3558 3559 3560 3561
		f 4 -1868 -1977 2006 -1979
		mu 0 4 3562 3563 3564 3565
		f 4 -1990 2007 -1992 -2007
		mu 0 4 3566 3567 3568 3569
		f 4 -1996 -1946 -1998 -2008
		mu 0 4 3570 3571 3572 3573
		f 4 2008 -2001 -1994 2009
		mu 0 4 3574 3575 3576 3577
		f 4 2010 2011 2012 -2009
		mu 0 4 3578 3579 3580 3581
		f 4 2013 -2010 -1999 -1960
		mu 0 4 3582 3583 3584 3585
		f 4 -1956 2014 -2011 -2014
		mu 0 4 3586 3587 3588 3589
		f 4 -1932 -1966 2015 -1967
		mu 0 4 3590 3591 3592 3593
		f 4 -1968 2016 -2003 -1984
		mu 0 4 3594 3595 3596 3597
		f 4 -2016 2017 -2004 -2017
		mu 0 4 3598 3599 3600 3601
		f 4 2018 -1926 -1954 -1950
		mu 0 4 3602 3603 3604 3605
		f 4 -1927 2019 -2012 -2015
		mu 0 4 3606 3607 3608 3609
		f 4 -1923 -2019 -1949 -1920
		mu 0 4 3610 3611 3612 3613
		f 4 -2000 -2013 -2020 -1924
		mu 0 4 3614 3615 3616 3617
		f 4 -1804 -1816 -1962 -1837
		mu 0 4 3618 3619 3620 3621
		f 4 -1832 -1834 -1928 -2006
		mu 0 4 3622 3623 3624 3625
		f 4 2020 -1833 -2005 2021
		mu 0 4 3626 3627 3628 3629
		f 4 2022 -2022 -2018 -1965
		mu 0 4 3630 3631 3632 3633
		f 4 2023 -1592 -2021 -2023
		mu 0 4 3634 3635 3636 3637
		f 4 2024 -1590 -2024 2025
		mu 0 4 3638 3639 3640 3641
		f 4 -2025 2026 2027 -1588
		mu 0 4 3642 3643 3644 3645
		f 4 -2028 2028 2029 -1577
		mu 0 4 3646 3647 3648 3649
		f 4 -2030 2030 2031 -1570
		mu 0 4 3650 3651 3652 3653
		f 4 2032 -1601 2033 2034
		mu 0 4 3654 3655 3656 3657
		f 4 -1963 2035 -1964 -1936
		mu 0 4 3658 3659 3660 3661
		f 4 -1826 2036 -2026 -2036
		mu 0 4 3662 3663 3664 3665
		f 4 -2027 -2037 -1839 2037
		mu 0 4 3666 3667 3668 3669
		f 4 -1840 -2031 -2029 -2038
		mu 0 4 3670 3671 3672 3673
		f 4 2038 -1617 -2033 -1845
		mu 0 4 3674 3675 3676 3677
		f 4 2039 -1619 -2039 -1848
		mu 0 4 3678 3679 3680 3681
		f 4 2040 2041 -2040 -1851
		mu 0 4 3682 3683 3684 3685
		f 4 -1393 -1395 2042 -1391
		mu 0 4 3686 3687 3688 3689
		f 4 2043 2044 -1555 -2043
		mu 0 4 3690 3691 3692 3693
		f 4 -2045 -1580 -1623 -1554
		mu 0 4 3694 3695 3696 3697
		f 4 -1831 -1830 2045 -1397
		mu 0 4 3698 3699 3700 3701
		f 4 -1581 -2044 -2046 -1586
		mu 0 4 3702 3703 3704 3705
		f 4 2046 2047 -568 -504
		mu 0 4 3706 3707 3708 3709
		f 4 2048 2049 -521 -2048
		mu 0 4 3710 3711 3712 3713
		f 4 -832 -834 2050 2051
		mu 0 4 3714 3715 3716 3717
		f 3 -831 -2052 -821
		mu 0 3 3718 3719 3720
		f 4 2052 2053 -875 2054
		mu 0 4 3721 3722 3723 3724
		f 4 -853 2055 -864 -2051
		mu 0 4 3725 3726 3727 3728
		f 4 -855 2056 -865 -2056
		mu 0 4 3729 3730 3731 3732
		f 4 2057 2058 -857 -2053
		mu 0 4 3733 3734 3735 3736
		f 4 -856 -846 -871 -2054
		mu 0 4 3737 3738 3739 3740
		f 4 -2058 2059 -854 -836
		mu 0 4 3741 3742 3743 3744
		f 4 -2060 -2055 -874 -2057
		mu 0 4 3745 3746 3747 3748
		f 4 -839 2060 2061 -2059
		mu 0 4 3749 3750 3751 3752
		f 3 -872 -878 -840
		mu 0 3 3753 3754 3755
		f 4 -651 2062 2063 2064
		mu 0 4 3756 3757 3758 3759
		f 4 2065 -838 -2064 -867
		mu 0 4 3760 3761 3762 3763
		f 4 -2066 -841 -877 -2061
		mu 0 4 3764 3765 3766 3767
		f 3 -858 -2062 -876
		mu 0 3 3768 3769 3770
		f 3 -2063 -862 -868
		mu 0 3 3771 3772 3773
		f 3 -2065 -837 -850
		mu 0 3 3774 3775 3776
		f 4 2066 2067 -260 2068
		mu 0 4 3777 3778 3779 3780
		f 4 2069 2070 2071 -457
		mu 0 4 3781 3782 3783 3784
		f 4 -2072 -2067 2072 -455
		mu 0 4 3785 3786 3787 3788
		f 4 -2073 2073 2074 -454
		mu 0 4 3789 3790 3791 3792
		f 4 -384 2075 -2074 -2069
		mu 0 4 3793 3794 3795 3796
		f 4 -2071 2076 2077 -2068
		mu 0 4 3797 3798 3799 3800
		f 4 -2078 -257 -253 -261
		mu 0 4 3801 3802 3803 3804
		f 3 2078 -47 2079
		mu 0 3 3805 3806 3807
		f 4 2080 2081 2082 -2076
		mu 0 4 3808 3809 3810 3811
		f 4 2083 2084 2085 2086
		mu 0 4 3812 3813 3814 3815
		f 4 -218 2087 2088 2089
		mu 0 4 3816 3817 3818 3819
		f 4 2090 -444 2091 2092
		mu 0 4 3820 3821 3822 3823
		f 4 2093 -478 -2091 2094
		mu 0 4 3824 3825 3826 3827
		f 4 -505 -492 -2094 2095
		mu 0 4 3828 3829 3830 3831
		f 4 -605 2096 2097 2098
		mu 0 4 3832 3833 3834 3835
		f 4 -525 -513 2099 -2097
		mu 0 4 3836 3837 3838 3839
		f 4 2100 -231 -593 -2099
		mu 0 4 3840 3841 3842 3843
		f 4 2101 -163 -199 2102
		mu 0 4 3844 3845 3846 3847
		f 4 2103 -167 -2102 2104
		mu 0 4 3848 3849 3850 3851
		f 4 -171 -2104 2105 2106
		mu 0 4 3852 3853 3854 3855
		f 4 -175 -2107 2107 2108
		mu 0 4 3856 3857 3858 3859
		f 4 -182 -2109 2109 2110
		mu 0 4 3860 3861 3862 3863
		f 4 2111 -312 -2111 2112
		mu 0 4 3864 3865 3866 3867
		f 4 -181 -2112 2113 2114
		mu 0 4 3868 3869 3870 3871
		f 4 -321 -178 -2115 2115
		mu 0 4 3872 3873 3874 3875
		f 4 -214 2116 2117 2118
		mu 0 4 3876 3877 3878 3879
		f 4 -216 2119 2120 -2117
		mu 0 4 3880 3881 3882 3883
		f 4 -2119 2121 -2088 -212
		mu 0 4 3884 3885 3886 3887
		f 4 -2120 -281 -286 2122
		mu 0 4 3888 3889 3890 3891
		f 4 -310 2123 2124 -293
		mu 0 4 3892 3893 3894 3895
		f 4 -352 -323 2125 -371
		mu 0 4 3896 3897 3898 3899
		f 4 -2124 -364 -376 2126
		mu 0 4 3900 3901 3902 3903
		f 4 -374 -369 -373 2127
		mu 0 4 3904 3905 3906 3907
		f 4 -108 2128 -110 2129
		mu 0 4 3908 3909 3910 3911
		f 4 -161 -2130 -114 2130
		mu 0 4 3912 3913 3914 3915
		f 4 2131 2132 -407 -2129
		mu 0 4 3916 3917 3918 3919
		f 4 2133 2134 -409 -2133
		mu 0 4 3920 3921 3922 3923
		f 4 2135 2136 -412 -2135
		mu 0 4 3924 3925 3926 3927
		f 4 -404 -2086 -415 -2137
		mu 0 4 3928 3929 3930 3931
		f 4 -2084 -391 2137 -419
		mu 0 4 3932 3933 3934 3935
		f 4 -2138 2138 -2131 -422
		mu 0 4 3936 3937 3938 3939
		f 4 -1614 -416 -2085 -418
		mu 0 4 3940 3941 3942 3943
		f 4 2139 -104 -394 -106
		mu 0 4 3944 3945 3946 3947
		f 4 -385 -378 -2140 -160
		mu 0 4 3948 3949 3950 3951
		f 4 -159 -2139 -390 -386
		mu 0 4 3952 3953 3954 3955
		f 4 -2081 -383 -387 -389
		mu 0 4 3956 3957 3958 3959
		f 4 2140 -2132 -107 -393
		mu 0 4 3960 3961 3962 3963
		f 4 -2134 -2141 -396 2141
		mu 0 4 3964 3965 3966 3967;
	setAttr ".fc[1000:1499]"
		f 4 -2136 -2142 -399 -405
		mu 0 4 3968 3969 3970 3971
		f 4 -2075 -2083 -402 -401
		mu 0 4 3972 3973 3974 3975
		f 4 -2087 -403 -2082 -388
		mu 0 4 3976 3977 3978 3979
		f 4 -1375 2142 -1311 2143
		mu 0 4 3980 3981 3982 3983
		f 4 -1377 -2144 -1316 2144
		mu 0 4 3984 3985 3986 3987
		f 4 -1379 -2145 -1319 -1842
		mu 0 4 3988 3989 3990 3991
		f 4 -2143 -1381 2145 -1349
		mu 0 4 3992 3993 3994 3995
		f 4 -1563 2146 -1595 -2146
		mu 0 4 3996 3997 3998 3999
		f 4 -1564 2147 -1597 -2147
		mu 0 4 4000 4001 4002 4003
		f 4 -2148 -1568 2148 -1600
		mu 0 4 4004 4005 4006 4007
		f 4 -1846 -2035 -1843 -1321
		mu 0 4 4008 4009 4010 4011
		f 4 -2032 -1844 -2034 -2149
		mu 0 4 4012 4013 4014 4015
		f 4 -625 2149 -628 -662
		mu 0 4 4016 4017 4018 4019
		f 4 -626 2150 -632 -667
		mu 0 4 4020 4021 4022 4023
		f 4 -652 2151 -655 -2150
		mu 0 4 4024 4025 4026 4027
		f 4 -2152 -710 -703 -657
		mu 0 4 4028 4029 4030 4031
		f 4 -627 -670 2152 -663
		mu 0 4 4032 4033 4034 4035
		f 4 -631 -731 2153 -668
		mu 0 4 4036 4037 4038 4039
		f 4 -2153 -673 2154 -671
		mu 0 4 4040 4041 4042 4043
		f 4 2155 2156 -674 -2154
		mu 0 4 4044 4045 4046 4047
		f 4 -2151 -654 2157 -676
		mu 0 4 4048 4049 4050 4051
		f 4 -2158 -659 -708 -679
		mu 0 4 4052 4053 4054 4055
		f 4 -686 2158 -684 -2155
		mu 0 4 4056 4057 4058 4059
		f 4 2159 2160 -687 -2157
		mu 0 4 4060 4061 4062 4063
		f 4 -693 2161 -691 -2159
		mu 0 4 4064 4065 4066 4067
		f 4 -762 2162 -694 -2161
		mu 0 4 4068 4069 4070 4071
		f 4 -704 2163 -700 -2162
		mu 0 4 4072 4073 4074 4075
		f 4 -709 -658 -702 -2164
		mu 0 4 4076 4077 4078 4079
		f 4 2164 2165 -705 -2163
		mu 0 4 4080 4081 4082 4083
		f 4 -2166 2166 -680 -707
		mu 0 4 4084 4085 4086 4087
		f 4 -630 2167 -636 -732
		mu 0 4 4088 4089 4090 4091
		f 4 -2168 -678 2168 -711
		mu 0 4 4092 4093 4094 4095
		f 4 -2169 -681 2169 -714
		mu 0 4 4096 4097 4098 4099
		f 4 -2170 -2167 2170 -717
		mu 0 4 4100 4101 4102 4103
		f 4 -2171 -2165 -761 -726
		mu 0 4 4104 4105 4106 4107
		f 4 -740 -736 -733 -635
		mu 0 4 4108 4109 4110 4111
		f 4 -2156 -734 -735 2171
		mu 0 4 4112 4113 4114 4115
		f 4 -2160 -2172 -757 -763
		mu 0 4 4116 4117 4118 4119
		f 4 -767 -727 -760 -759
		mu 0 4 4120 4121 4122 4123
		f 4 -1328 -1343 -1330 -1334
		mu 0 4 4124 4125 4126 4127
		f 4 -112 2172 -1335 -1329
		mu 0 4 4128 4129 4130 4131
		f 4 -406 2173 -1339 -2173
		mu 0 4 4132 4133 4134 4135
		f 4 -423 -1331 -1342 -1607
		mu 0 4 4136 4137 4138 4139
		f 4 -1341 -1606 2174 -1608
		mu 0 4 4140 4141 4142 4143
		f 4 -1613 2175 -1615 -2175
		mu 0 4 4144 4145 4146 4147
		f 4 -1620 -2042 -1621 -2176
		mu 0 4 4148 4149 4150 4151
		f 4 -411 2176 -1850 -2174
		mu 0 4 4152 4153 4154 4155
		f 4 -414 -1622 -2041 -2177
		mu 0 4 4156 4157 4158 4159
		f 4 2177 -6 2178 -15
		mu 0 4 5 2 4160 4161
		f 4 -3 -2178 -23 2179
		mu 0 4 3 2 5 6
		f 4 -40 -2180 -28 2180
		mu 0 4 4162 3 6 4163
		f 4 -44 -2181 -32 2181
		mu 0 4 4164 4165 4166 4167
		f 4 -150 -69 -66 2182
		mu 0 4 4168 4169 4170 4171
		f 4 -64 -67 -68 -434
		mu 0 4 4172 4173 4174 4175
		f 4 -438 2183 -435 -71
		mu 0 4 4176 4177 4178 4179
		f 4 -154 -2080 -60 2184
		mu 0 4 4180 4181 4182 4183
		f 4 -99 -2185 -63 -430
		mu 0 4 4184 4185 4186 4187
		f 4 -96 2185 -255 -484
		mu 0 4 4188 4189 4190 4191
		f 4 -433 2186 -431 -65
		mu 0 4 4192 4193 4194 4195
		f 4 -2187 2187 2188 -451
		mu 0 4 4196 4197 4198 4199
		f 4 -2189 -472 -488 -459
		mu 0 4 4200 4201 4202 4203
		f 4 -2077 2189 -485 -258
		mu 0 4 4204 4205 4206 4207
		f 4 -2070 -460 -487 -2190
		mu 0 4 4208 4209 4210 4211
		f 4 -529 -239 2190 -241
		mu 0 4 4212 4213 4214 4215
		f 4 -2191 -126 2191 -247
		mu 0 4 4216 4217 4218 4219
		f 4 -512 2192 -250 2193
		mu 0 4 4220 4221 4222 4223
		f 4 -522 2194 -618 -2193
		mu 0 4 4224 4225 4226 4227
		f 4 -2050 2195 -518 -2195
		mu 0 4 4228 4229 4230 4231
		f 4 -2194 -248 -2192 -507
		mu 0 4 4232 4233 4234 4235
		f 4 -2183 -51 2196 -56
		mu 0 4 4236 4237 4238 4239
		f 4 -2186 -45 2197 2198
		mu 0 4 4240 4241 4242 4243
		f 4 -2198 -2182 2199 -48
		mu 0 4 4244 4245 4246 4247
		f 4 -2200 -31 2200 -50
		mu 0 4 4248 4249 4250 4251
		f 4 -54 -57 -2197 -2201
		mu 0 4 4252 4253 4254 4255
		f 4 -256 -2199 -2079 -254
		mu 0 4 4256 4257 4258 4259
		f 4 2201 -464 2202 -2184
		mu 0 4 4260 4261 4262 4263
		f 4 -437 2203 -469 -2202
		mu 0 4 4264 4265 4266 4267
		f 4 -440 2204 -463 -2204
		mu 0 4 4268 4269 4270 4271
		f 4 -219 2205 -443 -2205
		mu 0 4 4272 4273 4274 4275
		f 4 -2206 -2090 2206 -2092
		mu 0 4 4276 4277 4278 4279
		f 4 -2188 -436 -2203 -467
		mu 0 4 4280 4281 4282 4283
		f 4 2207 -139 2208 -132
		mu 0 4 4284 4285 4286 4287
		f 4 2209 -130 -2208 -140
		mu 0 4 4288 4289 4290 4291
		f 4 -2209 -144 -480 -145
		mu 0 4 4292 4293 4294 4295
		f 4 -641 2210 -647 -750
		mu 0 4 4296 4297 4298 4299
		f 4 -803 -754 -751 -646
		mu 0 4 4300 4301 4302 4303
		f 4 -747 -752 -753 2211
		mu 0 4 4304 4305 4306 4307
		f 4 -783 2212 -785 -2211
		mu 0 4 4308 4309 4310 4311
		f 4 -780 2213 -788 -2213
		mu 0 4 4312 4313 4314 4315
		f 4 -777 2214 -791 -2214
		mu 0 4 4316 4317 4318 4319
		f 4 -2215 -774 2215 -794
		mu 0 4 4320 4321 4322 4323
		f 4 -2216 -773 2216 -797
		mu 0 4 4324 4325 4326 4327
		f 4 -2217 -770 -2212 -800
		mu 0 4 4328 4329 4330 4331
		f 4 2217 -643 2218 -640
		mu 0 4 4332 4333 4334 4335
		f 4 2219 -784 -2218 -721
		mu 0 4 4336 4337 4338 4339
		f 4 2220 -782 -2220 -722
		mu 0 4 4340 4341 4342 4343
		f 4 2221 -779 -2221 -724
		mu 0 4 4344 4345 4346 4347
		f 4 2222 -776 -2222 -730
		mu 0 4 4348 4349 4350 4351
		f 4 -2219 -745 2223 -741
		mu 0 4 4352 4353 4354 4355
		f 4 -2224 -749 2224 -742
		mu 0 4 4356 4357 4358 4359
		f 4 -2225 -769 2225 -764
		mu 0 4 4360 4361 4362 4363
		f 4 -2226 -772 -2223 -766
		mu 0 4 4364 4365 4366 4367
		f 4 -125 -2210 -127 -238
		mu 0 4 4368 4369 4370 4371
		f 4 2226 2227 2228 2229
		mu 0 4 4372 4373 4374 4375
		f 4 2230 -2229 2231 -5
		mu 0 4 4 4376 4377 4378
		f 4 -2230 2232 2233 2234
		mu 0 4 4379 4380 4381 4382
		f 4 -2231 -12 2235 -2233
		mu 0 4 4383 4 4384 4385
		f 4 -16 2236 2237 2238
		mu 0 4 4386 4387 4388 4389
		f 4 2239 -18 -2239 2240
		mu 0 4 4390 4391 4392 4393
		f 4 2241 -21 -2240 2242
		mu 0 4 4394 4395 4396 4397
		f 4 2243 2244 -2238 2245
		mu 0 4 4398 4399 4400 4401
		f 4 2246 -2241 -2245 2247
		mu 0 4 4402 4403 4404 4405
		f 4 2248 2249 -2244 2250
		mu 0 4 4406 4407 4408 4409
		f 4 2251 -2249 2252 2253
		mu 0 4 4410 4411 4412 4413
		f 4 2254 -2243 -2247 2255
		mu 0 4 4414 4415 4416 4417
		f 4 2256 2257 -2248 -2250
		mu 0 4 4418 4419 4420 4421
		f 4 -2256 -2258 2258 2259
		mu 0 4 4422 4423 4424 4425
		f 4 -2227 2260 2261 2262
		mu 0 4 4426 4427 4428 4429
		f 4 2263 2264 -2262 2265
		mu 0 4 4430 4431 4432 4433
		f 4 2266 2267 2268 2269
		mu 0 4 4434 4435 4436 4437
		f 4 -2267 2270 2271 2272
		mu 0 4 4438 4439 4440 4441
		f 4 -2252 2273 2274 -2257
		mu 0 4 4442 4443 4444 4445
		f 4 2275 2276 2277 2278
		mu 0 4 4446 4447 4448 4449
		f 4 2279 -2259 -2275 -2276
		mu 0 4 4450 4451 4452 4453
		f 4 2280 2281 -2270 2282
		mu 0 4 4454 4455 4456 4457
		f 4 2283 2284 -2281 2285
		mu 0 4 4458 4459 4460 4461
		f 4 2286 2287 -2271 -2282
		mu 0 4 4462 4463 4464 4465
		f 4 2288 2289 2290 2291
		mu 0 4 4466 4467 4468 4469
		f 4 2292 -2236 -73 2293
		mu 0 4 4470 4471 4472 4473
		f 4 2294 2295 -2294 -75
		mu 0 4 4474 4475 4476 4477
		f 4 2296 2297 2298 -78
		mu 0 4 4478 4479 4480 4481
		f 4 2299 2300 -2297 -82
		mu 0 4 4482 4483 4484 4485
		f 4 -87 2301 2302 -2300
		mu 0 4 4486 4487 4488 4489
		f 4 2303 -2302 -89 2304
		mu 0 4 4490 4491 4492 4493
		f 4 2305 -2234 -2293 2306
		mu 0 4 4494 4495 4496 4497
		f 4 -2235 2307 2308 -2261
		mu 0 4 4498 4499 4500 4501
		f 4 2309 -2266 -2309 2310
		mu 0 4 4502 4503 4504 4505
		f 4 2311 2312 2313 2314
		mu 0 4 4506 4507 4508 4509
		f 4 2315 2316 2317 2318
		mu 0 4 4510 4511 4512 4513
		f 4 2319 2320 2321 2322
		mu 0 4 4514 4515 4516 4517
		f 4 2323 2324 2325 2326
		mu 0 4 4518 4519 4520 4521
		f 4 2327 -2327 2328 2329
		mu 0 4 4522 4523 4524 4525
		f 4 2330 -2307 -2296 2331
		mu 0 4 4526 4527 4528 4529
		f 4 2332 2333 -2298 2334
		mu 0 4 4530 4531 4532 4533
		f 4 -2301 2335 2336 -2335
		mu 0 4 4534 4535 4536 4537
		f 4 2337 2338 -2337 2339
		mu 0 4 4538 4539 4540 4541
		f 3 2340 2341 2342
		mu 0 3 4542 4543 4544
		f 4 2343 2344 -2333 -2339
		mu 0 4 4545 4546 4547 4548
		f 4 2345 2346 2347 2348
		mu 0 4 4549 4550 4551 4552
		f 4 -2299 2349 -2295 -135
		mu 0 4 4553 4554 4555 4556
		f 4 -2350 -2334 2350 -2332
		mu 0 4 4557 4558 4559 4560
		f 4 -2351 -2345 2351 2352
		mu 0 4 4561 4562 4563 4564
		f 4 2353 -2349 2354 -2341
		mu 0 4 4565 4566 4567 4568
		f 4 2355 -2308 -2306 2356
		mu 0 4 4569 4570 4571 4572
		f 4 2357 -2357 -2331 -2353
		mu 0 4 4573 4574 4575 4576
		f 4 2358 2359 2360 -2347
		mu 0 4 4577 4578 4579 4580
		f 4 2361 2362 2363 -2279
		mu 0 4 4581 4582 4583 4584
		f 4 2364 -2363 -2290 2365
		mu 0 4 4585 4586 4587 4588
		f 4 2366 -2314 2367 2368
		mu 0 4 4589 4590 4591 4592
		f 4 -2367 2369 2370 2371
		mu 0 4 4593 4594 4595 4596
		f 4 2372 -2323 2373 2374
		mu 0 4 4597 4598 4599 4600
		f 4 2375 2376 2377 2378
		mu 0 4 4601 4602 4603 4604
		f 4 2379 2380 -2377 2381
		mu 0 4 4605 4606 4607 4608
		f 4 2382 2383 2384 2385
		mu 0 4 4609 4610 4611 4612
		f 4 -2380 2386 2387 -2385
		mu 0 4 4613 4614 4615 4616
		f 4 -2383 2388 2389 2390
		mu 0 4 4617 4618 4619 4620
		f 4 2391 2392 2393 2394
		mu 0 4 4621 4622 4623 4624
		f 4 2395 2396 2397 -2390
		mu 0 4 4625 4626 4627 4628
		f 4 -2396 -2389 2398 2399
		mu 0 4 4629 4630 4631 4632
		f 4 -2386 2400 2401 -2399
		mu 0 4 4633 4634 4635 4636
		f 4 -2401 -2388 2402 2403
		mu 0 4 4637 4638 4639 4640
		f 4 2404 2405 -2387 2406
		mu 0 4 4641 4642 4643 4644
		f 4 2407 -2403 -2406 2408
		mu 0 4 4645 4646 4647 4648
		f 4 -2382 2409 2410 -2407
		mu 0 4 4649 4650 4651 4652
		f 4 2411 2412 -198 -2242
		mu 0 4 4653 4654 4655 4656
		f 4 2413 -2379 -2412 -2255
		mu 0 4 4657 4658 4659 4660
		f 4 2414 -2410 -2376 2415
		mu 0 4 4661 4662 4663 4664
		f 4 2416 -2416 2417 2418
		mu 0 4 4665 4666 4667 4668
		f 4 -2280 -2364 2419 -2419
		mu 0 4 4669 4670 4671 4672
		f 4 -2365 2420 2421 -2420
		mu 0 4 4673 4674 4675 4676
		f 4 2422 -2417 -2422 2423
		mu 0 4 4677 4678 4679 4680
		f 4 2424 -2415 -2423 2425
		mu 0 4 4681 4682 4683 4684
		f 4 2426 -2411 -2425 2427
		mu 0 4 4685 4686 4687 4688
		f 4 2428 -2405 -2427 2429
		mu 0 4 4689 4690 4691 4692
		f 4 -2424 2430 2431 2432
		mu 0 4 4693 4694 4695 4696
		f 4 -2303 2433 2434 -2336
		mu 0 4 4697 4698 4699 4700
		f 4 2435 2436 2437 2438
		mu 0 4 4701 4702 4703 4704
		f 4 2439 -2435 -2439 2440
		mu 0 4 4705 4706 4707 4708
		f 4 2441 -2340 -2440 2442
		mu 0 4 4709 4710 4711 4712
		f 4 2443 2444 -232 2445
		mu 0 4 4713 4714 4715 4716
		f 4 2446 -2437 -2444 2447
		mu 0 4 4717 4718 4719 4720
		f 4 2448 2449 -2442 2450
		mu 0 4 4721 4722 4723 4724
		f 4 2451 2452 2453 2454
		mu 0 4 4725 4726 4727 4728
		f 4 2455 -2452 2456 2457
		mu 0 4 4729 4730 4731 4732
		f 4 2458 2459 2460 -2453
		mu 0 4 4733 4734 4735 4736
		f 4 2461 2462 -2459 -2456
		mu 0 4 4737 4738 4739 4740
		f 4 -2369 2463 2464 2465
		mu 0 4 4741 4742 4743 4744
		f 4 2466 2467 2468 2469
		mu 0 4 4745 4746 4747 4748
		f 4 2470 2471 2472 2473
		mu 0 4 4749 4750 4751 4752
		f 3 -2260 -2418 -2414
		mu 0 3 4753 4754 4755
		f 4 2474 2475 -2408 2476
		mu 0 4 4756 4757 4758 4759
		f 4 2477 -2475 2478 2479
		mu 0 4 4760 4761 4762 4763
		f 4 2480 2481 -2480 2482
		mu 0 4 4764 4765 4766 4767
		f 4 -2476 -2478 2483 2484
		mu 0 4 4768 4769 4770 4771
		f 4 -2482 2485 2486 -2484
		mu 0 4 4772 4773 4774 4775
		f 4 -2481 2487 2488 -2486
		mu 0 4 4776 4777 4778 4779
		f 4 -2483 2489 2490 -2488
		mu 0 4 4780 4781 4782 4783
		f 4 -2479 -2477 2491 -2490
		mu 0 4 4784 4785 4786 4787
		f 4 2492 2493 -2429 2494
		mu 0 4 4788 4789 4790 4791
		f 4 2495 2496 -285 2497
		mu 0 4 4792 4793 4794 4795
		f 4 2498 -2498 -289 2499
		mu 0 4 4796 4797 4798 4799
		f 4 2500 2501 -2500 -291
		mu 0 4 4800 4801 4802 4803
		f 3 -2494 2502 -2409
		mu 0 3 4804 4805 4806
		f 4 -2496 2503 2504 -2493
		mu 0 4 4807 4808 4809 4810
		f 4 -2499 2505 2506 -2504
		mu 0 4 4811 4812 4813 4814
		f 4 -2505 2507 -2492 -2503
		mu 0 4 4815 4816 4817 4818
		f 4 -2507 2508 -2491 -2508
		mu 0 4 4819 4820 4821 4822
		f 4 -2502 2509 2510 -2506
		mu 0 4 4823 4824 4825 4826
		f 4 2511 -2509 -2511 2512
		mu 0 4 4827 4828 4829 4830
		f 4 2513 -2489 -2512 2514
		mu 0 4 4831 4832 4833 4834
		f 4 -2513 2515 2516 -2515
		mu 0 4 4835 4836 4837 4838
		f 4 -2510 2517 2518 -2516
		mu 0 4 4839 4840 4841 4842
		f 4 2519 2520 -2397 2521
		mu 0 4 4843 4844 4845 4846
		f 4 -2520 2522 2523 -2393
		mu 0 4 4847 4848 4849 4850
		f 4 2524 2525 -2524 2526
		mu 0 4 4851 4852 4853 4854
		f 4 -2526 2527 2528 -2394
		mu 0 4 4855 4856 4857 4858
		f 4 -2529 2529 -322 2530
		mu 0 4 4859 4860 4861 4862
		f 4 2531 2532 -2527 2533
		mu 0 4 4863 4864 4865 4866
		f 4 2534 -2402 2535 2536
		mu 0 4 4867 4868 4869 4870
		f 4 -2535 2537 -2522 -2400
		mu 0 4 4871 4872 4873 4874
		f 4 2538 -2534 -2523 -2538
		mu 0 4 4875 4876 4877 4878
		f 4 -2537 2539 2540 -2539
		mu 0 4 4879 4880 4881 4882
		f 4 2541 2542 -2532 -2541
		mu 0 4 4883 4884 4885 4886
		f 4 2543 -2542 2544 2545
		mu 0 4 4887 4888 4889 4890
		f 4 -2536 -2404 -2485 2546
		mu 0 4 4891 4892 4893 4894
		f 4 2547 2548 -2547 2549
		mu 0 4 4895 4896 4897 4898
		f 4 2550 -2545 -2540 -2549
		mu 0 4 4899 4900 4901 4902
		f 4 -2550 -2487 -2514 2551
		mu 0 4 4903 4904 4905 4906
		f 4 2552 -2546 2553 2554
		mu 0 4 4907 4908 4909 4910
		f 4 2555 -2555 2556 2557
		mu 0 4 4911 4912 4913 4914
		f 4 -2558 2558 2559 2560
		mu 0 4 4915 4916 4917 4918
		f 4 2561 2562 -2556 2563
		mu 0 4 4919 4920 4921 4922
		f 4 -2561 -2528 2564 -2564
		mu 0 4 4923 4924 4925 4926
		f 4 2565 -2544 -2553 -2563
		mu 0 4 4927 4928 4929 4930
		f 4 -2533 2566 -2562 2567
		mu 0 4 4931 4932 4933 4934
		f 4 -2517 2568 2569 -2552
		mu 0 4 4935 4936 4937 4938
		f 4 -2519 2570 2571 -2569
		mu 0 4 4939 4940 4941 4942
		f 4 -2551 2572 2573 -2554
		mu 0 4 4943 4944 4945 4946
		f 4 2574 -2573 -2548 -2570
		mu 0 4 4947 4948 4949 4950
		f 4 2575 -2557 -2574 2576
		mu 0 4 4951 4952 4953 4954
		f 4 -2575 -2572 2577 -2577
		mu 0 4 4955 4956 4957 4958
		f 4 -2559 2578 -372 2579
		mu 0 4 4959 4960 4961 4962
		f 4 -2578 2580 -375 2581
		mu 0 4 4963 4964 4965 4966
		f 3 -2525 -2568 -2565
		mu 0 3 4967 4968 4969
		f 3 -2543 -2566 -2567
		mu 0 3 4970 4971 4972
		f 4 -2372 -2318 2582 -2315
		mu 0 4 4973 4974 4975 4976
		f 4 -2319 -2371 2583 2584
		mu 0 4 4977 4978 4979 4980
		f 4 2585 -2370 -2466 -2471
		mu 0 4 4981 4982 4983 4984
		f 4 2586 -2584 -2586 2587
		mu 0 4 4985 4986 4987 4988
		f 4 -2474 2588 2589 -2588
		mu 0 4 4989 4990 4991 4992
		f 4 -2587 2590 2591 2592
		mu 0 4 4993 4994 4995 4996
		f 4 2593 2594 2595 2596
		mu 0 4 4997 4998 4999 5000
		f 4 2597 2598 2599 2600
		mu 0 4 5001 5002 5003 5004
		f 4 2601 2602 -2601 2603
		mu 0 4 5005 5006 5007 5008
		f 4 2604 2605 -2602 2606
		mu 0 4 5009 5010 5011 5012
		f 4 2607 2608 2609 2610
		mu 0 4 5013 5014 5015 5016
		f 4 2611 2612 -2325 2613
		mu 0 4 5017 5018 5019 5020
		f 4 -2612 2614 2615 2616
		mu 0 4 5021 5022 5023 5024
		f 4 -2616 2617 2618 2619
		mu 0 4 5025 5026 5027 5028
		f 4 -2619 2620 2621 2622
		mu 0 4 5029 5030 5031 5032
		f 4 2623 2624 2625 2626
		mu 0 4 5033 5034 5035 5036
		f 4 2627 -2330 2628 -2625
		mu 0 4 5037 5038 5039 5040
		f 4 2629 -2317 -2598 2630
		mu 0 4 5041 5042 5043 5044
		f 4 2631 -2583 -2630 2632
		mu 0 4 5045 5046 5047 5048
		f 4 2633 -2312 -2632 2634
		mu 0 4 5049 5050 5051 5052
		f 4 2635 2636 2637 -2634
		mu 0 4 5053 5054 5055 5056
		f 4 2638 2639 2640 2641
		mu 0 4 5057 5058 5059 5060
		f 4 2642 -2366 2643 2644
		mu 0 4 5061 5062 5063 5064
		f 4 2645 -2431 -2421 -2643
		mu 0 4 5065 5066 5067 5068
		f 4 2646 2647 2648 2649
		mu 0 4 5069 5070 5071 5072
		f 4 -2603 2650 2651 -2631
		mu 0 4 5073 5074 5075 5076
		f 4 2652 -2633 -2652 2653
		mu 0 4 5077 5078 5079 5080
		f 4 2654 -2635 -2653 2655
		mu 0 4 5081 5082 5083 5084
		f 4 -2655 2656 2657 -2636
		mu 0 4 5085 5086 5087 5088
		f 4 -2606 2658 2659 -2651
		mu 0 4 5089 5090 5091 5092
		f 4 2660 -2654 -2660 2661
		mu 0 4 5093 5094 5095 5096
		f 4 2662 -2656 -2661 2663
		mu 0 4 5097 5098 5099 5100
		f 4 -2663 2664 2665 -2657
		mu 0 4 5101 5102 5103 5104
		f 4 -2649 2666 2667 2668
		mu 0 4 5105 5106 5107 5108
		f 4 2669 2670 2671 2672
		mu 0 4 5109 5110 5111 5112
		f 4 -2668 2673 -2672 2674
		mu 0 4 5113 5114 5115 5116
		f 4 2675 2676 2677 -2671
		mu 0 4 5117 5118 5119 5120
		f 4 2678 -2675 -2678 2679
		mu 0 4 5121 5122 5123 5124
		f 4 2680 -2669 -2679 2681
		mu 0 4 5125 5126 5127 5128
		f 4 2682 -2650 -2681 2683
		mu 0 4 5129 5130 5131 5132
		f 4 2684 -2356 2685 2686
		mu 0 4 5133 5134 5135 5136
		f 4 2687 -2311 -2685 2688
		mu 0 4 5137 5138 5139 5140
		f 4 2689 2690 2691 -2688
		mu 0 4 5141 5142 5143 5144
		f 4 -2690 2692 2693 2694
		mu 0 4 5145 5146 5147 5148
		f 4 -2677 -2693 -2689 2695
		mu 0 4 5149 5150 5151 5152
		f 4 2696 -2696 -2687 -2360
		mu 0 4 5153 5154 5155 5156
		f 4 -2684 2697 2698 2699
		mu 0 4 5157 5158 5159 5160
		f 4 -2682 2700 2701 -2698
		mu 0 4 5161 5162 5163 5164
		f 4 -2680 -2697 2702 -2701
		mu 0 4 5165 5166 5167 5168
		f 4 2703 -2703 -2359 2704
		mu 0 4 5169 5170 5171 5172
		f 4 2705 -2702 -2704 2706
		mu 0 4 5173 5174 5175 5176
		f 4 2707 -2699 -2706 2708
		mu 0 4 5177 5178 5179 5180
		f 4 -506 2709 -2708 2710
		mu 0 4 5181 5182 5183 5184
		f 4 2711 2712 -2354 2713
		mu 0 4 5185 5186 5187 5188
		f 4 2714 2715 2716 -2712
		mu 0 4 5189 5190 5191 5192
		f 4 -516 2717 2718 2719
		mu 0 4 5193 5194 5195 5196
		f 4 -519 2720 2721 -2718
		mu 0 4 5197 5198 5199 5200
		f 4 2722 2723 2724 -2716
		mu 0 4 5201 5202 5203 5204
		f 4 2725 2726 2727 2728
		mu 0 4 5205 5206 5207 5208
		f 4 2729 -2729 -2457 2730
		mu 0 4 5209 5210 5211 5212
		f 4 2731 2732 2733 2734
		mu 0 4 5213 5214 5215 5216
		f 4 2735 -2732 -2451 2736
		mu 0 4 5217 5218 5219 5220
		f 4 2737 2738 2739 2740
		mu 0 4 5221 5222 5223 5224
		f 4 2741 2742 -2738 2743
		mu 0 4 5225 5226 5227 5228
		f 4 -2736 2744 2745 2746
		mu 0 4 5229 5230 5231 5232
		f 4 2747 -2746 2748 2749
		mu 0 4 5233 5234 5235 5236
		f 4 2750 -2750 2751 2752
		mu 0 4 5237 5238 5239 5240
		f 4 -2443 2753 2754 -2737
		mu 0 4 5241 5242 5243 5244
		f 4 2755 -2745 -2755 2756
		mu 0 4 5245 5246 5247 5248
		f 4 2757 -2749 -2756 2758
		mu 0 4 5249 5250 5251 5252
		f 4 2759 2760 -2752 -2758
		mu 0 4 5253 5254 5255 5256
		f 4 -2441 2761 2762 -2754
		mu 0 4 5257 5258 5259 5260
		f 4 2763 -2757 -2763 2764
		mu 0 4 5261 5262 5263 5264
		f 4 2765 2766 -2759 -2764
		mu 0 4 5265 5266 5267 5268
		f 4 2767 2768 -2760 -2767
		mu 0 4 5269 5270 5271 5272
		f 4 -2725 2769 -2709 2770
		mu 0 4 5273 5274 5275 5276
		f 4 -2771 -2707 2771 -2717
		mu 0 4 5277 5278 5279 5280
		f 4 -2772 -2705 -2346 -2713
		mu 0 4 5281 5282 5283 5284
		f 4 -2455 -2734 2772 -2731
		mu 0 4 5285 5286 5287 5288
		f 4 2773 -2748 2774 -2741
		mu 0 4 5289 5290 5291 5292
		f 4 -2751 2775 -2744 -2775
		mu 0 4 5293 5294 5295 5296
		f 4 -2305 -575 -2445 2776
		mu 0 4 5297 5298 5299 5300
		f 4 -2304 -2777 -2436 -2434
		mu 0 4 5301 5302 5303 5304
		f 4 -2438 2777 2778 -2762
		mu 0 4 5305 5306 5307 5308
		f 4 -2778 -2447 2779 2780
		mu 0 4 5309 5310 5311 5312
		f 4 -2779 2781 2782 -2765
		mu 0 4 5313 5314 5315 5316
		f 4 -2781 2783 2784 -2782
		mu 0 4 5317 5318 5319 5320
		f 4 2785 -2766 -2783 2786
		mu 0 4 5321 5322 5323 5324
		f 4 -2785 2787 2788 -2787
		mu 0 4 5325 5326 5327 5328
		f 4 2789 -2768 -2786 2790
		mu 0 4 5329 5330 5331 5332
		f 4 -2789 2791 2792 -2791
		mu 0 4 5333 5334 5335 5336
		f 4 2793 -2448 2794 2795
		mu 0 4 5337 5338 5339 5340
		f 4 2796 -2780 -2794 2797
		mu 0 4 5341 5342 5343 5344
		f 4 2798 -2784 -2797 2799
		mu 0 4 5345 5346 5347 5348
		f 4 2800 -2788 -2799 2801
		mu 0 4 5349 5350 5351 5352
		f 4 2802 -2792 -2801 2803
		mu 0 4 5353 5354 5355 5356
		f 4 2804 2805 2806 -2796
		mu 0 4 5357 5358 5359 5360
		f 4 2807 -2739 2808 -2802
		mu 0 4 5361 5362 5363 5364
		f 4 -2809 -2743 2809 -2804
		mu 0 4 5365 5366 5367 5368
		f 4 2810 2811 -2730 2812
		mu 0 4 5369 5370 5371 5372
		f 4 -2806 -2726 -2812 2813
		mu 0 4 5373 5374 5375 5376
		f 4 -2773 -2733 2814 -2813
		mu 0 4 5377 5378 5379 5380
		f 4 -2811 2815 2816 2817
		mu 0 4 5381 5382 5383 5384
		f 4 -2815 -2747 -2774 -2816
		mu 0 4 5385 5386 5387 5388
		f 4 -2719 2818 -2458 -2728
		mu 0 4 5389 5390 5391 5392
		f 4 -2722 2819 -2462 -2819
		mu 0 4 5393 5394 5395 5396
		f 4 2820 -2798 -2807 2821
		mu 0 4 5397 5398 5399 5400
		f 4 -2822 -2814 -2818 2822
		mu 0 4 5401 5402 5403 5404
		f 4 2823 -2808 -2800 -2821
		mu 0 4 5405 5406 5407 5408
		f 4 2824 2825 -2769 2826
		mu 0 4 5409 5410 5411 5412
		f 4 2827 2828 2829 2830
		mu 0 4 5413 5414 5415 5416
		f 4 2831 2832 2833 2834
		mu 0 4 5417 5418 5419 5420
		f 4 2835 2836 2837 2838
		mu 0 4 5421 5422 5423 5424
		f 4 2839 2840 -2839 2841
		mu 0 4 5425 5426 5427 5428
		f 4 2842 2843 2844 2845
		mu 0 4 5429 5430 5431 5432
		f 4 2846 2847 2848 2849
		mu 0 4 5433 5434 5435 5436
		f 4 2850 2851 -2850 2852
		mu 0 4 5437 5438 5439 5440
		f 4 2853 -2761 -2826 2854
		mu 0 4 5441 5442 5443 5444
		f 4 2855 2856 -2828 2857
		mu 0 4 5445 5446 5447 5448
		f 4 -2856 2858 2859 2860
		mu 0 4 5449 5450 5451 5452
		f 4 -2790 2861 2862 -2827
		mu 0 4 5453 5454 5455 5456
		f 4 -2863 2863 2864 2865
		mu 0 4 5457 5458 5459 5460
		f 4 -2793 2866 2867 -2862
		mu 0 4 5461 5462 5463 5464
		f 4 2868 2869 2870 2871
		mu 0 4 5465 5466 5467 5468
		f 4 -2868 2872 2873 -2864
		mu 0 4 5469 5470 5471 5472
		f 4 2874 2875 -2870 2876
		mu 0 4 5473 5474 5475 5476
		f 4 2877 2878 2879 -2832
		mu 0 4 5477 5478 5479 5480
		f 4 2880 2881 2882 -2879
		mu 0 4 5481 5482 5483 5484
		f 4 -2803 2883 2884 -2867
		mu 0 4 5485 5486 5487 5488
		f 4 2885 2886 -2873 -2885
		mu 0 4 5489 5490 5491 5492
		f 4 2887 2888 -2875 2889
		mu 0 4 5493 5494 5495 5496
		f 4 -2810 2890 2891 -2884
		mu 0 4 5497 5498 5499 5500
		f 4 2892 2893 -2886 -2892
		mu 0 4 5501 5502 5503 5504
		f 4 2894 2895 -2888 2896
		mu 0 4 5505 5506 5507 5508
		f 4 -2742 2897 2898 -2891
		mu 0 4 5509 5510 5511 5512
		f 4 -2898 -2776 2899 2900
		mu 0 4 5513 5514 5515 5516
		f 4 2901 2902 -2893 -2899
		mu 0 4 5517 5518 5519 5520
		f 4 -2901 2903 2904 -2902
		mu 0 4 5521 5522 5523 5524
		f 4 2905 2906 -2895 2907
		mu 0 4 5525 5526 5527 5528
		f 4 2908 2909 2910 -2906
		mu 0 4 5529 5530 5531 5532
		f 4 -2817 -2740 -2824 -2823
		mu 0 4 5533 5534 5535 5536
		f 4 -2900 -2753 -2854 2911
		mu 0 4 5537 5538 5539 5540
		f 4 2912 2913 2914 -2836
		mu 0 4 5541 5542 5543 5544
		f 4 2915 2916 2917 -2914
		mu 0 4 5545 5546 5547 5548
		f 4 2918 2919 2920 -2917
		mu 0 4 5549 5550 5551 5552
		f 4 -2841 2921 2922 -2913
		mu 0 4 5553 5554 5555 5556
		f 4 2923 -2916 -2923 2924
		mu 0 4 5557 5558 5559 5560
		f 4 2925 -2919 -2924 2926
		mu 0 4 5561 5562 5563 5564
		f 4 2927 2928 2929 -2920
		mu 0 4 5565 5566 5567 5568
		f 4 -2926 2930 2931 -2928
		mu 0 4 5569 5570 5571 5572
		f 4 2932 2933 2934 2935
		mu 0 4 5573 5574 5575 5576
		f 4 2936 2937 2938 2939
		mu 0 4 5577 5578 5579 5580
		f 4 2940 -2842 2941 2942
		mu 0 4 5581 5582 5583 5584
		f 4 -2938 2943 2944 -2943
		mu 0 4 5585 5586 5587 5588
		f 4 2945 -2845 2946 2947
		mu 0 4 5589 5590 5591 5592
		f 4 2948 2949 2950 -2948
		mu 0 4 5593 5594 5595 5596
		f 4 2951 2952 2953 -2946
		mu 0 4 5597 5598 5599 5600
		f 4 2954 2955 2956 2957
		mu 0 4 5601 5602 5603 5604
		f 4 2958 2959 -2937 2960
		mu 0 4 5605 5606 5607 5608
		f 4 2961 2962 2963 2964
		mu 0 4 5609 5610 5611 5612
		f 4 -2944 -2960 2965 2966
		mu 0 4 5613 5614 5615 5616
		f 4 2967 -2932 2968 -2966
		mu 0 4 5617 5618 5619 5620
		f 4 2969 -2950 2970 2971
		mu 0 4 5621 5622 5623 5624
		f 4 2972 -2972 2973 2974
		mu 0 4 5625 5626 5627 5628
		f 4 2975 2976 2977 -2975
		mu 0 4 5629 5630 5631 5632
		f 4 2978 2979 2980 -2977
		mu 0 4 5633 5634 5635 5636
		f 4 2981 2982 2983 -2980
		mu 0 4 5637 5638 5639 5640
		f 4 -2983 2984 -2843 2985
		mu 0 4 5641 5642 5643 5644
		f 4 2986 2987 2988 -2847
		mu 0 4 5645 5646 5647 5648
		f 4 -2988 2989 2990 2991
		mu 0 4 5649 5650 5651 5652
		f 4 -2991 2992 2993 2994
		mu 0 4 5653 5654 5655 5656
		f 4 2995 2996 2997 -2994
		mu 0 4 5657 5658 5659 5660
		f 4 2998 2999 3000 -2997
		mu 0 4 5661 5662 5663 5664
		f 4 3001 -2955 3002 -3000
		mu 0 4 5665 5666 5667 5668
		f 4 3003 -2853 3004 3005
		mu 0 4 5669 5670 5671 5672
		f 4 3006 -3006 -2956 3007
		mu 0 4 5673 5674 5675 5676
		f 4 -3002 3008 3009 -3008
		mu 0 4 5677 5678 5679 5680
		f 4 -2999 3010 3011 -3009
		mu 0 4 5681 5682 5683 5684
		f 4 -2996 3012 3013 -3011
		mu 0 4 5685 5686 5687 5688
		f 4 -2993 3014 3015 -3013
		mu 0 4 5689 5690 5691 5692
		f 4 -2990 3016 3017 -3015
		mu 0 4 5693 5694 5695 5696
		f 4 -3017 -2987 -2852 3018
		mu 0 4 5697 5698 5699 5700
		f 4 3019 3020 3021 -3016
		mu 0 4 5701 5702 5703 5704
		f 4 3022 -3021 3023 3024
		mu 0 4 5705 5706 5707 5708
		f 4 3025 3026 -3014 -3022
		mu 0 4 5709 5710 5711 5712
		f 4 3027 -3012 -3027 3028
		mu 0 4 5713 5714 5715 5716
		f 4 3029 -3010 -3028 3030
		mu 0 4 5717 5718 5719 5720
		f 4 -3023 3031 3032 -3026
		mu 0 4 5721 5722 5723 5724
		f 4 3033 -3029 -3033 3034
		mu 0 4 5725 5726 5727 5728
		f 4 3035 -3031 -3034 3036
		mu 0 4 5729 5730 5731 5732
		f 4 3037 3038 3039 3040
		mu 0 4 5733 5734 5735 5736
		f 4 3041 3042 3043 3044
		mu 0 4 5737 5738 5739 5740
		f 4 3045 3046 3047 3048
		mu 0 4 5741 5742 5743 5744
		f 4 3049 -3007 -3030 3050
		mu 0 4 5745 5746 5747 5748
		f 4 3051 3052 -3004 -3050
		mu 0 4 5749 5750 5751 5752
		f 4 -3036 3053 3054 -3051
		mu 0 4 5753 5754 5755 5756
		f 4 -3055 3055 3056 -3052
		mu 0 4 5757 5758 5759 5760
		f 4 3057 3058 3059 -3046
		mu 0 4 5761 5762 5763 5764
		f 4 -3018 3060 3061 -3020
		mu 0 4 5765 5766 5767 5768
		f 4 -3019 3062 3063 -3061
		mu 0 4 5769 5770 5771 5772
		f 4 3064 -3024 -3062 3065
		mu 0 4 5773 5774 5775 5776
		f 4 -3066 -3064 3066 3067
		mu 0 4 5777 5778 5779 5780
		f 4 -3043 3068 3069 3070
		mu 0 4 5781 5782 5783 5784
		f 4 3071 -3048 3072 3073
		mu 0 4 5785 5786 5787 5788
		f 4 3074 -3067 -3069 3075
		mu 0 4 5789 5790 5791 5792
		f 4 -3042 -3074 3076 -3076
		mu 0 4 5793 5794 5795 5796
		f 4 -3049 3077 3078 3079
		mu 0 4 5797 5798 5799 5800
		f 4 3080 3081 3082 3083
		mu 0 4 5801 5802 5803 5804
		f 4 3084 -3084 3085 3086
		mu 0 4 5805 5806 5807 5808
		f 4 3087 3088 -3082 3089
		mu 0 4 5809 5810 5811 5812
		f 4 3090 -3088 3091 3092
		mu 0 4 5813 5814 5815 5816
		f 4 3093 3094 -3093 3095
		mu 0 4 5817 5818 5819 5820
		f 4 3096 3097 3098 3099
		mu 0 4 5821 5822 5823 5824
		f 4 3100 3101 -3100 3102
		mu 0 4 5825 5826 5827 5828
		f 4 3103 3104 -3101 3105
		mu 0 4 5829 5830 5831 5832
		f 4 -3085 3106 3107 3108
		mu 0 4 5833 5834 5835 5836
		f 4 3109 -3081 -3109 3110
		mu 0 4 5837 5838 5839 5840
		f 4 3111 -3090 -3110 3112
		mu 0 4 5841 5842 5843 5844
		f 4 3113 -3092 -3112 3114
		mu 0 4 5845 5846 5847 5848
		f 4 3115 -3096 -3114 3116
		mu 0 4 5849 5850 5851 5852
		f 4 3117 -3116 3118 3119
		mu 0 4 5853 5854 5855 5856
		f 4 3120 -3103 3121 3122
		mu 0 4 5857 5858 5859 5860
		f 4 3123 -3106 -3121 3124
		mu 0 4 5861 5862 5863 5864
		f 4 -3113 3125 -3117 -3115
		mu 0 4 5865 5866 5867 5868
		f 4 3126 3127 3128 -3126
		mu 0 4 5869 5870 5871 5872
		f 4 3129 3130 -3128 3131
		mu 0 4 5873 5874 5875 5876
		f 4 3132 3133 -3130 3134
		mu 0 4 5877 5878 5879 5880
		f 4 -3118 -3098 3135 -3094
		mu 0 4 5881 5882 5883 5884
		f 4 -3129 3136 3137 -3119
		mu 0 4 5885 5886 5887 5888
		f 4 3138 -3123 3139 3140
		mu 0 4 5889 5890 5891 5892
		f 4 3141 -3125 -3139 3142
		mu 0 4 5893 5894 5895 5896
		f 4 -3131 3143 3144 -3137
		mu 0 4 5897 5898 5899 5900
		f 4 3145 -3141 3146 3147
		mu 0 4 5901 5902 5903 5904
		f 4 3148 -3143 -3146 3149
		mu 0 4 5905 5906 5907 5908
		f 4 3150 3151 -3104 3152
		mu 0 4 5909 5910 5911 5912
		f 4 -3124 3153 3154 -3153
		mu 0 4 5913 5914 5915 5916
		f 4 3155 -3151 3156 3157
		mu 0 4 5917 5918 5919 5920
		f 4 3158 -3158 3159 3160
		mu 0 4 5921 5922 5923 5924
		f 4 -3111 3161 3162 -3127
		mu 0 4 5925 5926 5927 5928
		f 4 3163 -3132 -3163 3164
		mu 0 4 5929 5930 5931 5932
		f 4 3165 -3135 -3164 3166
		mu 0 4 5933 5934 5935 5936
		f 4 3167 3168 -3167 3169
		mu 0 4 5937 5938 5939 5940
		f 4 3170 -3170 -3165 3171
		mu 0 4 5941 5942 5943 5944
		f 4 3172 3173 -3168 3174
		mu 0 4 5945 5946 5947 5948
		f 4 3175 3176 -3175 3177
		mu 0 4 5949 5950 5951 5952;
	setAttr ".fc[1500:1999]"
		f 4 -3171 3178 3179 -3178
		mu 0 4 5953 5954 5955 5956
		f 4 3180 3181 -3087 3182
		mu 0 4 5957 5958 5959 5960
		f 4 3183 3184 3185 -3181
		mu 0 4 5961 5962 5963 5964
		f 4 -3134 3186 3187 -3144
		mu 0 4 5965 5966 5967 5968
		f 4 3188 -3148 3189 3190
		mu 0 4 5969 5970 5971 5972
		f 4 -3099 -3120 3191 -3122
		mu 0 4 5973 5974 5975 5976
		f 4 -3138 3192 -3140 -3192
		mu 0 4 5977 5978 5979 5980
		f 4 -3145 3193 -3147 -3193
		mu 0 4 5981 5982 5983 5984
		f 4 -3194 -3188 3194 -3190
		mu 0 4 5985 5986 5987 5988
		f 4 -3142 3195 3196 -3154
		mu 0 4 5989 5990 5991 5992
		f 4 -3197 3197 3198 3199
		mu 0 4 5993 5994 5995 5996
		f 4 3200 -3196 -3149 3201
		mu 0 4 5997 5998 5999 6000
		f 4 3202 3203 -3198 -3201
		mu 0 4 6001 6002 6003 6004
		f 4 -3203 3204 3205 -3161
		mu 0 4 6005 6006 6007 6008
		f 4 -3189 3206 3207 -3150
		mu 0 4 6009 6010 6011 6012
		f 4 3208 -3205 -3202 -3208
		mu 0 4 6013 6014 6015 6016
		f 4 -3182 3209 3210 -3107
		mu 0 4 6017 6018 6019 6020
		f 4 3211 -3172 -3162 -3108
		mu 0 4 6021 6022 6023 6024
		f 4 -3211 3212 -3179 -3212
		mu 0 4 6025 6026 6027 6028
		f 4 -3186 3213 3214 -3210
		mu 0 4 6029 6030 6031 6032
		f 4 3215 -3185 3216 3217
		mu 0 4 6033 6034 6035 6036
		f 4 3218 -3214 -3216 3219
		mu 0 4 6037 6038 6039 6040
		f 4 3220 -3217 3221 3222
		mu 0 4 6041 6042 6043 6044
		f 4 -3184 3223 3224 -3222
		mu 0 4 6045 6046 6047 6048
		f 4 3225 3226 3227 -3086
		mu 0 4 6049 6050 6051 6052
		f 4 3228 -3226 -3083 3229
		mu 0 4 6053 6054 6055 6056
		f 4 3230 -3230 -3089 3231
		mu 0 4 6057 6058 6059 6060
		f 4 3232 -3232 -3091 3233
		mu 0 4 6061 6062 6063 6064
		f 4 3234 -3234 -3095 3235
		mu 0 4 6065 6066 6067 6068
		f 4 3236 3237 -3236 -3136
		mu 0 4 6069 6070 6071 6072
		f 4 3238 3239 -3102 3240
		mu 0 4 6073 6074 6075 6076
		f 4 3241 -3241 -3105 3242
		mu 0 4 6077 6078 6079 6080
		f 4 -3233 -3235 3243 -3231
		mu 0 4 6081 6082 6083 6084
		f 4 -3244 3244 3245 3246
		mu 0 4 6085 6086 6087 6088
		f 4 3247 -3246 3248 -3133
		mu 0 4 6089 6090 6091 6092
		f 4 -3238 3249 3250 -3245
		mu 0 4 6093 6094 6095 6096
		f 4 3251 3252 -3239 3253
		mu 0 4 6097 6098 6099 6100
		f 4 3254 -3254 -3242 3255
		mu 0 4 6101 6102 6103 6104
		f 4 -3251 3256 -3187 -3249
		mu 0 4 6105 6106 6107 6108
		f 4 -3191 3257 -3252 3258
		mu 0 4 6109 6110 6111 6112
		f 4 -3207 -3259 -3255 3259
		mu 0 4 6113 6114 6115 6116
		f 4 3260 -3243 -3152 3261
		mu 0 4 6117 6118 6119 6120
		f 4 -3247 3262 3263 -3229
		mu 0 4 6121 6122 6123 6124
		f 4 3264 -3263 -3248 -3166
		mu 0 4 6125 6126 6127 6128
		f 4 3265 -3265 -3169 3266
		mu 0 4 6129 6130 6131 6132
		f 4 3267 -3174 3268 3269
		mu 0 4 6133 6134 6135 6136
		f 4 -3268 3270 3271 -3267
		mu 0 4 6137 6138 6139 6140
		f 4 -3240 3272 -3237 -3097
		mu 0 4 6141 6142 6143 6144
		f 4 -3273 -3253 3273 -3250
		mu 0 4 6145 6146 6147 6148
		f 4 -3274 -3258 -3195 -3257
		mu 0 4 6149 6150 6151 6152
		f 4 3274 -3256 -3261 3275
		mu 0 4 6153 6154 6155 6156
		f 4 -3276 3276 3277 3278
		mu 0 4 6157 6158 6159 6160
		f 4 -3209 -3260 -3275 3279
		mu 0 4 6161 6162 6163 6164
		f 4 -3280 -3279 3280 -3206
		mu 0 4 6165 6166 6167 6168
		f 4 -3228 3281 -3224 -3183
		mu 0 4 6169 6170 6171 6172
		f 4 -3227 -3264 -3266 3282
		mu 0 4 6173 6174 6175 6176
		f 4 -3283 -3272 3283 -3282
		mu 0 4 6177 6178 6179 6180
		f 4 -3199 -3204 -3160 3284
		mu 0 4 6181 6182 6183 6184
		f 4 -3281 -3278 3285 -3159
		mu 0 4 6185 6186 6187 6188
		f 4 -3155 -3200 -3285 -3157
		mu 0 4 6189 6190 6191 6192
		f 4 -3156 -3286 -3277 -3262
		mu 0 4 6193 6194 6195 6196
		f 4 3286 3287 3288 3289
		mu 0 4 6197 6198 6199 6200
		f 4 3290 -3290 3291 3292
		mu 0 4 6201 6202 6203 6204
		f 4 3293 3294 -3288 3295
		mu 0 4 6205 6206 6207 6208
		f 4 3296 -3294 3297 3298
		mu 0 4 6209 6210 6211 6212
		f 4 3299 3300 -3299 3301
		mu 0 4 6213 6214 6215 6216
		f 4 3302 3303 3304 3305
		mu 0 4 6217 6218 6219 6220
		f 4 3306 3307 -3306 3308
		mu 0 4 6221 6222 6223 6224
		f 4 3309 3310 -3307 3311
		mu 0 4 6225 6226 6227 6228
		f 4 -3291 3312 3313 3314
		mu 0 4 6229 6230 6231 6232
		f 4 3315 -3287 -3315 3316
		mu 0 4 6233 6234 6235 6236
		f 4 3317 -3296 -3316 3318
		mu 0 4 6237 6238 6239 6240
		f 4 3319 -3298 -3318 3320
		mu 0 4 6241 6242 6243 6244
		f 4 3321 -3302 -3320 3322
		mu 0 4 6245 6246 6247 6248
		f 4 3323 -3322 3324 3325
		mu 0 4 6249 6250 6251 6252
		f 4 3326 -3309 3327 3328
		mu 0 4 6253 6254 6255 6256
		f 4 3329 -3312 -3327 3330
		mu 0 4 6257 6258 6259 6260
		f 4 -3319 3331 -3323 -3321
		mu 0 4 6261 6262 6263 6264
		f 4 3332 3333 3334 -3332
		mu 0 4 6265 6266 6267 6268
		f 4 3335 3336 -3334 3337
		mu 0 4 6269 6270 6271 6272
		f 4 3338 3339 -3336 3340
		mu 0 4 6273 6274 6275 6276
		f 4 -3324 -3304 3341 -3300
		mu 0 4 6277 6278 6279 6280
		f 4 -3335 3342 3343 -3325
		mu 0 4 6281 6282 6283 6284
		f 4 3344 -3329 3345 3346
		mu 0 4 6285 6286 6287 6288
		f 4 3347 -3331 -3345 3348
		mu 0 4 6289 6290 6291 6292
		f 4 -3337 3349 3350 -3343
		mu 0 4 6293 6294 6295 6296
		f 4 3351 -3347 3352 3353
		mu 0 4 6297 6298 6299 6300
		f 4 3354 -3349 -3352 3355
		mu 0 4 6301 6302 6303 6304
		f 4 3356 3357 -3310 3358
		mu 0 4 6305 6306 6307 6308
		f 4 -3330 3359 3360 -3359
		mu 0 4 6309 6310 6311 6312
		f 4 3361 -3357 3362 3363
		mu 0 4 6313 6314 6315 6316
		f 4 3364 -3364 3365 3366
		mu 0 4 6317 6318 6319 6320
		f 4 -3317 3367 3368 -3333
		mu 0 4 6321 6322 6323 6324
		f 4 3369 -3338 -3369 3370
		mu 0 4 6325 6326 6327 6328
		f 4 3371 -3341 -3370 3372
		mu 0 4 6329 6330 6331 6332
		f 4 3373 3374 -3373 3375
		mu 0 4 6333 6334 6335 6336
		f 4 3376 -3376 -3371 3377
		mu 0 4 6337 6338 6339 6340
		f 4 3378 3379 -3374 3380
		mu 0 4 6341 6342 6343 6344
		f 4 -3377 3381 3382 -3381
		mu 0 4 6345 6346 6347 6348
		f 4 3383 3384 -3293 3385
		mu 0 4 6349 6350 6351 6352
		f 4 3386 3387 3388 -3384
		mu 0 4 6353 6354 6355 6356
		f 4 -3340 3389 3390 -3350
		mu 0 4 6357 6358 6359 6360
		f 4 3391 -3354 3392 3393
		mu 0 4 6361 6362 6363 6364
		f 4 -3305 -3326 3394 -3328
		mu 0 4 6365 6366 6367 6368
		f 4 -3344 3395 -3346 -3395
		mu 0 4 6369 6370 6371 6372
		f 4 -3351 3396 -3353 -3396
		mu 0 4 6373 6374 6375 6376
		f 4 -3397 -3391 3397 -3393
		mu 0 4 6377 6378 6379 6380
		f 4 -3348 3398 3399 -3360
		mu 0 4 6381 6382 6383 6384
		f 4 -3400 3400 3401 3402
		mu 0 4 6385 6386 6387 6388
		f 4 3403 -3399 -3355 3404
		mu 0 4 6389 6390 6391 6392
		f 4 3405 3406 -3401 -3404
		mu 0 4 6393 6394 6395 6396
		f 4 -3406 3407 3408 -3367
		mu 0 4 6397 6398 6399 6400
		f 4 -3392 3409 3410 -3356
		mu 0 4 6401 6402 6403 6404
		f 4 3411 -3408 -3405 -3411
		mu 0 4 6405 6406 6407 6408
		f 4 -3385 3412 3413 -3313
		mu 0 4 6409 6410 6411 6412
		f 4 3414 -3378 -3368 -3314
		mu 0 4 6413 6414 6415 6416
		f 4 -3414 3415 -3382 -3415
		mu 0 4 6417 6418 6419 6420
		f 4 -3389 3416 3417 -3413
		mu 0 4 6421 6422 6423 6424
		f 4 3418 -3388 3419 3420
		mu 0 4 6425 6426 6427 6428
		f 4 3421 -3417 -3419 3422
		mu 0 4 6429 6430 6431 6432
		f 4 3423 -3420 3424 -3219
		mu 0 4 6433 6434 6435 6436
		f 4 -3387 3425 -3215 -3425
		mu 0 4 6437 6438 6439 6440
		f 4 3426 3427 3428 -3292
		mu 0 4 6441 6442 6443 6444
		f 4 3429 -3427 -3289 3430
		mu 0 4 6445 6446 6447 6448
		f 4 3431 -3431 -3295 3432
		mu 0 4 6449 6450 6451 6452
		f 4 3433 -3433 -3297 3434
		mu 0 4 6453 6454 6455 6456
		f 4 3435 -3435 -3301 3436
		mu 0 4 6457 6458 6459 6460
		f 4 3437 3438 -3437 -3342
		mu 0 4 6461 6462 6463 6464
		f 4 3439 3440 -3308 3441
		mu 0 4 6465 6466 6467 6468
		f 4 3442 -3442 -3311 3443
		mu 0 4 6469 6470 6471 6472
		f 4 -3434 -3436 3444 -3432
		mu 0 4 6473 6474 6475 6476
		f 4 -3445 3445 3446 3447
		mu 0 4 6477 6478 6479 6480
		f 4 3448 -3447 3449 -3339
		mu 0 4 6481 6482 6483 6484
		f 4 -3439 3450 3451 -3446
		mu 0 4 6485 6486 6487 6488
		f 4 3452 3453 -3440 3454
		mu 0 4 6489 6490 6491 6492
		f 4 3455 -3455 -3443 3456
		mu 0 4 6493 6494 6495 6496
		f 4 -3452 3457 -3390 -3450
		mu 0 4 6497 6498 6499 6500
		f 4 -3394 3458 -3453 3459
		mu 0 4 6501 6502 6503 6504
		f 4 -3410 -3460 -3456 3460
		mu 0 4 6505 6506 6507 6508
		f 4 3461 -3444 -3358 3462
		mu 0 4 6509 6510 6511 6512
		f 4 -3448 3463 3464 -3430
		mu 0 4 6513 6514 6515 6516
		f 4 3465 -3464 -3449 -3372
		mu 0 4 6517 6518 6519 6520
		f 4 3466 -3466 -3375 3467
		mu 0 4 6521 6522 6523 6524
		f 4 3468 -3380 3469 -3176
		mu 0 4 6525 6526 6527 6528
		f 4 -3469 -3180 3470 -3468
		mu 0 4 6529 6530 6531 6532
		f 4 -3441 3471 -3438 -3303
		mu 0 4 6533 6534 6535 6536
		f 4 -3472 -3454 3472 -3451
		mu 0 4 6537 6538 6539 6540
		f 4 -3473 -3459 -3398 -3458
		mu 0 4 6541 6542 6543 6544
		f 4 3473 -3457 -3462 3474
		mu 0 4 6545 6546 6547 6548
		f 4 -3475 3475 3476 3477
		mu 0 4 6549 6550 6551 6552
		f 4 3478 -3412 -3461 -3474
		mu 0 4 6553 6554 6555 6556
		f 4 -3479 -3478 3479 -3409
		mu 0 4 6557 6558 6559 6560
		f 4 -3429 3480 -3426 -3386
		mu 0 4 6561 6562 6563 6564
		f 4 -3428 -3465 -3467 3481
		mu 0 4 6565 6566 6567 6568
		f 4 -3482 -3471 -3213 -3481
		mu 0 4 6569 6570 6571 6572
		f 4 -3402 -3407 -3366 3482
		mu 0 4 6573 6574 6575 6576
		f 4 -3480 -3477 3483 -3365
		mu 0 4 6577 6578 6579 6580
		f 4 -3361 -3403 -3483 -3363
		mu 0 4 6581 6582 6583 6584
		f 4 -3362 -3484 -3476 -3463
		mu 0 4 6585 6586 6587 6588
		f 4 -3418 3484 3485 -3416
		mu 0 4 6589 6590 6591 6592
		f 4 3486 -3383 -3486 3487
		mu 0 4 6593 6594 6595 6596
		f 4 3488 -3379 -3487 3489
		mu 0 4 6597 6598 6599 6600
		f 4 3490 -3488 3491 3492
		mu 0 4 6601 6602 6603 6604
		f 4 3493 3494 -3493 3495
		mu 0 4 6605 6606 6607 6608
		f 4 -3492 -3485 -3422 3496
		mu 0 4 6609 6610 6611 6612
		f 4 -3497 3497 3498 -3496
		mu 0 4 6613 6614 6615 6616
		f 4 -3423 3499 3500 -3498
		mu 0 4 6617 6618 6619 6620
		f 4 3501 3502 3503 3504
		mu 0 4 6621 6622 6623 6624
		f 3 -3505 3505 3506
		mu 0 3 6625 6626 6627
		f 4 3507 3508 3509 -3507
		mu 0 4 6628 6629 6630 6631
		f 4 3510 3511 3512 3513
		mu 0 4 6632 6633 6634 6635
		f 4 3514 3515 -3514 3516
		mu 0 4 6636 6637 6638 6639
		f 4 3517 3518 -3513 3519
		mu 0 4 6640 6641 6642 6643
		f 4 3520 3521 -3518 3522
		mu 0 4 6644 6645 6646 6647
		f 4 -3517 -3519 3523 3524
		mu 0 4 6648 6649 6650 6651
		f 4 -3522 3525 3526 -3524
		mu 0 4 6652 6653 6654 6655
		f 4 3527 3528 -3515 3529
		mu 0 4 6656 6657 6658 6659
		f 4 3530 3531 3532 -2328
		mu 0 4 6660 6661 6662 6663
		f 4 -3525 3533 3534 -3530
		mu 0 4 6664 6665 6666 6667
		f 4 -3535 3535 3536 3537
		mu 0 4 6668 6669 6670 6671
		f 4 -3527 3538 3539 -3534
		mu 0 4 6672 6673 6674 6675
		f 4 3540 3541 -3536 -3540
		mu 0 4 6676 6677 6678 6679
		f 4 3542 3543 3544 3545
		mu 0 4 6680 6681 6682 6683
		f 4 3546 3547 -3529 -3543
		mu 0 4 6684 6685 6686 6687
		f 4 3548 -3516 -3548 3549
		mu 0 4 6688 6689 6690 6691
		f 4 -3549 3550 3551 -3511
		mu 0 4 6692 6693 6694 6695
		f 4 3552 -3510 3553 3554
		mu 0 4 6696 6697 6698 6699
		f 4 3555 -3502 -3553 3556
		mu 0 4 6700 6701 6702 6703
		f 4 3557 3558 -3508 3559
		mu 0 4 6704 6705 6706 6707
		f 4 3560 3561 -3558 3562
		mu 0 4 6708 6709 6710 6711
		f 4 3563 -3560 -3506 3564
		mu 0 4 6712 6713 6714 6715
		f 4 3565 3566 -3495 3567
		mu 0 4 6716 6717 6718 6719
		f 4 3568 3569 3570 3571
		mu 0 4 6720 6721 6722 6723
		f 4 -3571 3572 -3557 3573
		mu 0 4 6724 6725 6726 6727
		f 4 3574 3575 -3509 3576
		mu 0 4 6728 6729 6730 6731
		f 4 3577 -3577 -3559 3578
		mu 0 4 6732 6733 6734 6735
		f 4 3579 -3579 -3562 3580
		mu 0 4 6736 6737 6738 6739
		f 4 3581 3582 -3554 -3576
		mu 0 4 6740 6741 6742 6743
		f 4 3583 -3563 -3564 3584
		mu 0 4 6744 6745 6746 6747
		f 4 -3424 -3565 3585 -3421
		mu 0 4 6748 6749 6750 6751
		f 4 -3585 -3220 -3218 -3221
		mu 0 4 6752 6753 6754 6755
		f 4 -3504 3586 -3500 -3586
		mu 0 4 6756 6757 6758 6759
		f 4 -3569 3587 3588 3589
		mu 0 4 6760 6761 6762 6763
		f 4 -3489 3590 3591 -3470
		mu 0 4 6764 6765 6766 6767
		f 4 3592 -3177 -3592 3593
		mu 0 4 6768 6769 6770 6771
		f 4 3594 -3173 -3593 3595
		mu 0 4 6772 6773 6774 6775
		f 4 3596 -3269 -3595 3597
		mu 0 4 6776 6777 6778 6779
		f 4 3598 3599 -3597 3600
		mu 0 4 6780 6781 6782 6783
		f 4 3601 -3490 -3491 -3567
		mu 0 4 6784 6785 6786 6787
		f 4 -3588 3602 3603 3604
		mu 0 4 6788 6789 6790 6791
		f 4 -3572 3605 3606 -3603
		mu 0 4 6792 6793 6794 6795
		f 4 3607 3608 3609 -3556
		mu 0 4 6796 6797 6798 6799
		f 4 3610 3611 -3609 3612
		mu 0 4 6800 6801 6802 6803
		f 4 3613 -3611 3614 3615
		mu 0 4 6804 6805 6806 6807
		f 4 3616 3617 -3616 3618
		mu 0 4 6808 6809 6810 6811
		f 4 3619 3620 3621 3622
		mu 0 4 6812 6813 6814 6815
		f 4 3623 3624 -3623 3625
		mu 0 4 6816 6817 6818 6819
		f 4 3626 -3613 3627 3628
		mu 0 4 6820 6821 6822 6823
		f 4 3629 -3615 -3627 3630
		mu 0 4 6824 6825 6826 6827
		f 4 3631 -3619 -3630 3632
		mu 0 4 6828 6829 6830 6831
		f 4 3633 -3632 3634 3635
		mu 0 4 6832 6833 6834 6835
		f 4 3636 -3626 3637 3638
		mu 0 4 6836 6837 6838 6839
		f 4 -3629 3639 -3633 -3631
		mu 0 4 6840 6841 6842 6843
		f 4 3640 3641 3642 -3640
		mu 0 4 6844 6845 6846 6847
		f 4 3643 3644 -3642 3645
		mu 0 4 6848 6849 6850 6851
		f 4 3646 3647 -3644 3648
		mu 0 4 6852 6853 6854 6855
		f 4 -3634 -3621 3649 -3617
		mu 0 4 6856 6857 6858 6859
		f 4 -3643 3650 3651 -3635
		mu 0 4 6860 6861 6862 6863
		f 4 3652 -3639 3653 3654
		mu 0 4 6864 6865 6866 6867
		f 4 -3645 3655 3656 -3651
		mu 0 4 6868 6869 6870 6871
		f 4 3657 -3655 3658 3659
		mu 0 4 6872 6873 6874 6875
		f 4 3660 3661 3662 3663
		mu 0 4 6876 6877 6878 6879
		f 4 -3637 3664 3665 3666
		mu 0 4 6880 6881 6882 6883
		f 4 3667 -3661 3668 3669
		mu 0 4 6884 6885 6886 6887
		f 4 3670 -3670 3671 3672
		mu 0 4 6888 6889 6890 6891
		f 4 3673 -3641 3674 -3570
		mu 0 4 6892 6893 6894 6895
		f 4 -3674 -3590 3675 -3646
		mu 0 4 6896 6897 6898 6899
		f 4 -3648 3676 3677 -3656
		mu 0 4 6900 6901 6902 6903
		f 4 3678 -3660 3679 3680
		mu 0 4 6904 6905 6906 6907
		f 4 -3622 -3636 3681 -3638
		mu 0 4 6908 6909 6910 6911
		f 4 -3652 3682 -3654 -3682
		mu 0 4 6912 6913 6914 6915
		f 4 -3657 3683 -3659 -3683
		mu 0 4 6916 6917 6918 6919
		f 4 -3684 -3678 3684 -3680
		mu 0 4 6920 6921 6922 6923
		f 4 -3653 3685 3686 -3665
		mu 0 4 6924 6925 6926 6927
		f 4 3687 3688 3689 3690
		mu 0 4 6928 6929 6930 6931
		f 4 3691 3692 3693 3694
		mu 0 4 6932 6933 6934 6935
		f 4 3695 3696 -3689 -3692
		mu 0 4 6936 6937 6938 6939
		f 4 -3696 3697 3698 -3673
		mu 0 4 6940 6941 6942 6943
		f 4 3699 3700 3701 -3679
		mu 0 4 6944 6945 6946 6947
		f 4 -3573 -3675 -3628 -3608
		mu 0 4 6948 6949 6950 6951
		f 4 3702 3703 -3612 3704
		mu 0 4 6952 6953 6954 6955
		f 4 3705 -3705 -3614 3706
		mu 0 4 6956 6957 6958 6959
		f 4 3707 -3707 -3618 3708
		mu 0 4 6960 6961 6962 6963
		f 4 3709 3710 -3709 -3650
		mu 0 4 6964 6965 6966 6967
		f 4 3711 3712 -3625 3713
		mu 0 4 6968 6969 6970 6971
		f 4 -3706 -3708 3714 -3703
		mu 0 4 6972 6973 6974 6975
		f 4 -3715 3715 3716 3717
		mu 0 4 6976 6977 6978 6979
		f 4 3718 -3717 3719 -3647
		mu 0 4 6980 6981 6982 6983
		f 4 -3711 3720 3721 -3716
		mu 0 4 6984 6985 6986 6987
		f 4 3722 3723 -3712 3724
		mu 0 4 6988 6989 6990 6991
		f 4 -3722 3725 -3677 -3720
		mu 0 4 6992 6993 6994 6995
		f 4 -3681 3726 -3723 3727
		mu 0 4 6996 6997 6998 6999
		f 4 3728 -3714 3729 3730
		mu 0 4 7000 7001 7002 7003
		f 4 -3494 3731 -3719 3732
		mu 0 4 7004 7005 7006 7007
		f 4 -3713 3733 -3710 -3620
		mu 0 4 7008 7009 7010 7011
		f 4 -3734 -3724 3734 -3721
		mu 0 4 7012 7013 7014 7015
		f 4 -3735 -3727 -3685 -3726
		mu 0 4 7016 7017 7018 7019
		f 4 3735 -3725 -3729 3736
		mu 0 4 7020 7021 7022 7023
		f 4 3737 3738 3739 3740
		mu 0 4 7024 7025 7026 7027
		f 4 3741 3742 3743 3744
		mu 0 4 7028 7029 7030 7031
		f 4 -3745 -3741 3745 -3699
		mu 0 4 7032 7033 7034 7035
		f 4 -3503 -3610 -3704 3746
		mu 0 4 7036 7037 7038 7039
		f 4 -3690 -3697 -3672 3747
		mu 0 4 7040 7041 7042 7043
		f 4 -3746 -3740 3748 -3671
		mu 0 4 7044 7045 7046 7047
		f 4 3749 -3691 -3748 -3669
		mu 0 4 7048 7049 7050 7051
		f 4 -3668 -3749 -3739 3750
		mu 0 4 7052 7053 7054 7055
		f 4 -3663 -3730 -3624 -3667
		mu 0 4 7056 7057 7058 7059
		f 4 -3666 3751 -3750 -3664
		mu 0 4 7060 7061 7062 7063
		f 4 -3687 -3693 -3688 -3752
		mu 0 4 7064 7065 7066 7067
		f 4 -3694 -3686 -3658 -3702
		mu 0 4 7068 7069 7070 7071
		f 4 -3701 -3742 -3698 -3695
		mu 0 4 7072 7073 7074 7075
		f 4 3752 -3731 -3662 -3751
		mu 0 4 7076 7077 7078 7079
		f 4 -3744 -3737 -3753 -3738
		mu 0 4 7080 7081 7082 7083
		f 4 -3736 -3743 -3700 -3728
		mu 0 4 7084 7085 7086 7087
		f 4 -3587 -3747 3753 -3501
		mu 0 4 7088 7089 7090 7091
		f 4 -3649 -3676 3754 -3733
		mu 0 4 7092 7093 7094 7095
		f 4 -3732 -3499 -3754 -3718
		mu 0 4 7096 7097 7098 7099
		f 4 3755 -3591 -3602 3756
		mu 0 4 7100 7101 7102 7103
		f 4 3757 -3606 -3574 3758
		mu 0 4 7104 7105 7106 7107
		f 4 -3555 3759 3760 -3759
		mu 0 4 7108 7109 7110 7111
		f 4 3761 -3758 -3761 3762
		mu 0 4 7112 7113 7114 7115
		f 4 -3583 3763 3764 -3760
		mu 0 4 7116 7117 7118 7119
		f 4 3765 -3763 -3765 3766
		mu 0 4 7120 7121 7122 7123
		f 4 3767 -3607 -3762 3768
		mu 0 4 7124 7125 7126 7127
		f 4 3769 3770 -3766 3771
		mu 0 4 7128 7129 7130 7131
		f 4 3772 3773 -3604 -3768
		mu 0 4 7132 7133 7134 7135
		f 4 3774 3775 -3769 3776
		mu 0 4 7136 7137 7138 7139
		f 4 -3771 3777 3778 -3777
		mu 0 4 7140 7141 7142 7143
		f 4 3779 -3773 -3776 3780
		mu 0 4 7144 7145 7146 7147
		f 4 -3774 3781 3782 3783
		mu 0 4 7148 7149 7150 7151
		f 4 3784 3785 3786 3787
		mu 0 4 7152 7153 7154 7155
		f 4 -3780 3788 -3786 -3782
		mu 0 4 7156 7157 7158 7159
		f 4 3789 -3775 -3779 3790
		mu 0 4 7160 7161 7162 7163
		f 4 3791 -3781 -3790 3792
		mu 0 4 7164 7165 7166 7167
		f 4 3793 -3789 -3792 3794
		mu 0 4 7168 7169 7170 7171
		f 4 3795 3796 -3551 3797
		mu 0 4 7172 7173 7174 7175
		f 4 -3796 3798 3799 3800
		mu 0 4 7176 7177 7178 7179
		f 4 -3800 3801 3802 3803
		mu 0 4 7180 7181 7182 7183
		f 4 -3550 3804 3805 -3798
		mu 0 4 7184 7185 7186 7187
		f 4 -3547 3806 3807 -3805
		mu 0 4 7188 7189 7190 7191
		f 4 -2624 3808 3809 3810
		mu 0 4 7192 7193 7194 7195
		f 4 3811 -3799 -3806 3812
		mu 0 4 7196 7197 7198 7199
		f 4 -3808 3813 3814 -3813
		mu 0 4 7200 7201 7202 7203
		f 4 3815 3816 -3809 3817
		mu 0 4 7204 7205 7206 7207
		f 4 -3802 -3812 3818 3819
		mu 0 4 7208 7209 7210 7211
		f 4 -3819 -3815 3820 3821
		mu 0 4 7212 7213 7214 7215
		f 4 3822 3823 -3816 -2621
		mu 0 4 7216 7217 7218 7219
		f 4 -3566 3824 -3605 3825
		mu 0 4 7220 7221 7222 7223
		f 4 -3589 -3825 -3568 -3755
		mu 0 4 7224 7225 7226 7227
		f 4 3826 3827 3828 3829
		mu 0 4 7228 7229 7230 7231
		f 4 3830 -3830 3831 3832
		mu 0 4 7232 7233 7234 7235
		f 4 3833 3834 -3828 3835
		mu 0 4 7236 7237 7238 7239
		f 4 3836 -3834 3837 3838
		mu 0 4 7240 7241 7242 7243
		f 4 3839 3840 -3839 3841
		mu 0 4 7244 7245 7246 7247
		f 4 3842 3843 3844 3845
		mu 0 4 7248 7249 7250 7251
		f 4 3846 3847 -3846 3848
		mu 0 4 7252 7253 7254 7255
		f 4 3849 3850 -3847 3851
		mu 0 4 7256 7257 7258 7259
		f 4 -3831 3852 3853 3854
		mu 0 4 7260 7261 7262 7263
		f 4 3855 -3827 -3855 3856
		mu 0 4 7264 7265 7266 7267
		f 4 3857 -3836 -3856 3858
		mu 0 4 7268 7269 7270 7271
		f 4 3859 -3838 -3858 3860
		mu 0 4 7272 7273 7274 7275
		f 4 3861 -3842 -3860 3862
		mu 0 4 7276 7277 7278 7279
		f 4 3863 -3862 3864 3865
		mu 0 4 7280 7281 7282 7283
		f 4 3866 -3849 3867 3868
		mu 0 4 7284 7285 7286 7287
		f 4 3869 -3852 -3867 3870
		mu 0 4 7288 7289 7290 7291
		f 4 -3859 3871 -3863 -3861
		mu 0 4 7292 7293 7294 7295
		f 4 3872 3873 3874 -3872
		mu 0 4 7296 7297 7298 7299
		f 4 3875 3876 -3874 3877
		mu 0 4 7300 7301 7302 7303
		f 4 3878 3879 -3876 3880
		mu 0 4 7304 7305 7306 7307
		f 4 -3864 -3844 3881 -3840
		mu 0 4 7308 7309 7310 7311
		f 4 -3875 3882 3883 -3865
		mu 0 4 7312 7313 7314 7315
		f 4 3884 -3869 3885 3886
		mu 0 4 7316 7317 7318 7319
		f 4 3887 -3871 -3885 3888
		mu 0 4 7320 7321 7322 7323
		f 4 -3877 3889 3890 -3883
		mu 0 4 7324 7325 7326 7327
		f 4 3891 -3887 3892 3893
		mu 0 4 7328 7329 7330 7331
		f 4 3894 -3889 -3892 3895
		mu 0 4 7332 7333 7334 7335
		f 4 3896 3897 -3850 3898
		mu 0 4 7336 7337 7338 7339
		f 4 -3870 3899 3900 -3899
		mu 0 4 7340 7341 7342 7343
		f 4 3901 -3897 3902 3903
		mu 0 4 7344 7345 7346 7347
		f 4 3904 -3904 3905 3906
		mu 0 4 7348 7349 7350 7351
		f 4 -3857 3907 3908 -3873
		mu 0 4 7352 7353 7354 7355
		f 4 3909 -3878 -3909 3910
		mu 0 4 7356 7357 7358 7359
		f 4 3911 -3881 -3910 3912
		mu 0 4 7360 7361 7362 7363
		f 4 3913 3914 -3913 3915
		mu 0 4 7364 7365 7366 7367
		f 4 3916 -3916 -3911 3917
		mu 0 4 7368 7369 7370 7371
		f 4 3918 3919 -3914 3920
		mu 0 4 7372 7373 7374 7375
		f 4 -3270 -3600 -3921 3921
		mu 0 4 7376 7377 7378 7379
		f 4 -3917 3922 -3271 -3922
		mu 0 4 7380 7381 7382 7383
		f 4 3923 3924 -3833 3925
		mu 0 4 7384 7385 7386 7387
		f 4 3926 3927 3928 -3924
		mu 0 4 7388 7389 7390 7391
		f 4 -3880 3929 3930 -3890
		mu 0 4 7392 7393 7394 7395
		f 4 3931 -3894 3932 3933
		mu 0 4 7396 7397 7398 7399
		f 4 -3845 -3866 3934 -3868
		mu 0 4 7400 7401 7402 7403
		f 4 -3884 3935 -3886 -3935
		mu 0 4 7404 7405 7406 7407
		f 4 -3891 3936 -3893 -3936
		mu 0 4 7408 7409 7410 7411
		f 4 -3937 -3931 3937 -3933
		mu 0 4 7412 7413 7414 7415
		f 4 -3888 3938 3939 -3900
		mu 0 4 7416 7417 7418 7419
		f 4 -3940 3940 3941 3942
		mu 0 4 7420 7421 7422 7423
		f 4 3943 -3939 -3895 3944
		mu 0 4 7424 7425 7426 7427
		f 4 3945 3946 -3941 -3944
		mu 0 4 7428 7429 7430 7431
		f 4 -3946 3947 3948 -3907
		mu 0 4 7432 7433 7434 7435
		f 4 -3932 3949 3950 -3896
		mu 0 4 7436 7437 7438 7439
		f 4 3951 -3948 -3945 -3951
		mu 0 4 7440 7441 7442 7443
		f 4 -3925 3952 3953 -3853
		mu 0 4 7444 7445 7446 7447
		f 4 3954 -3918 -3908 -3854
		mu 0 4 7448 7449 7450 7451
		f 4 -3955 -3954 -3284 -3923
		mu 0 4 7452 7453 7454 7455
		f 4 -3929 3955 -3225 -3953
		mu 0 4 7456 7457 7458 7459
		f 4 -3927 3956 3957 3958
		mu 0 4 7460 7461 7462 7463
		f 4 3959 3960 3961 -3832
		mu 0 4 7464 7465 7466 7467
		f 4 3962 -3960 -3829 3963
		mu 0 4 7468 7469 7470 7471
		f 4 3964 -3964 -3835 3965
		mu 0 4 7472 7473 7474 7475
		f 4 3966 -3966 -3837 3967
		mu 0 4 7476 7477 7478 7479
		f 4 3968 -3968 -3841 3969
		mu 0 4 7480 7481 7482 7483
		f 4 3970 3971 -3970 -3882
		mu 0 4 7484 7485 7486 7487
		f 4 3972 3973 -3848 3974
		mu 0 4 7488 7489 7490 7491
		f 4 3975 -3975 -3851 3976
		mu 0 4 7492 7493 7494 7495
		f 4 -3967 -3969 3977 -3965
		mu 0 4 7496 7497 7498 7499
		f 4 -3978 3978 3979 3980
		mu 0 4 7500 7501 7502 7503
		f 4 3981 -3980 3982 -3879
		mu 0 4 7504 7505 7506 7507
		f 4 -3972 3983 3984 -3979
		mu 0 4 7508 7509 7510 7511
		f 4 3985 3986 -3973 3987
		mu 0 4 7512 7513 7514 7515
		f 4 3988 -3988 -3976 3989
		mu 0 4 7516 7517 7518 7519
		f 4 -3985 3990 -3930 -3983
		mu 0 4 7520 7521 7522 7523
		f 4 -3934 3991 -3986 3992
		mu 0 4 7524 7525 7526 7527
		f 4 -3950 -3993 -3989 3993
		mu 0 4 7528 7529 7530 7531
		f 4 3994 -3977 -3898 3995
		mu 0 4 7532 7533 7534 7535
		f 4 -3981 3996 3997 -3963
		mu 0 4 7536 7537 7538 7539
		f 4 3998 -3997 -3982 -3912
		mu 0 4 7540 7541 7542 7543
		f 4 3999 -3999 -3915 4000
		mu 0 4 7544 7545 7546 7547
		f 4 4001 -3920 4002 4003
		mu 0 4 7548 7549 7550 7551
		f 4 -4002 4004 4005 -4001
		mu 0 4 7552 7553 7554 7555
		f 4 -3974 4006 -3971 -3843
		mu 0 4 7556 7557 7558 7559
		f 4 -4007 -3987 4007 -3984
		mu 0 4 7560 7561 7562 7563
		f 4 -4008 -3992 -3938 -3991
		mu 0 4 7564 7565 7566 7567
		f 4 4008 -3990 -3995 4009
		mu 0 4 7568 7569 7570 7571
		f 4 -4010 4010 4011 4012
		mu 0 4 7572 7573 7574 7575
		f 4 -3952 -3994 -4009 4013
		mu 0 4 7576 7577 7578 7579
		f 4 -4014 -4013 4014 -3949
		mu 0 4 7580 7581 7582 7583
		f 4 -3962 4015 -3957 -3926
		mu 0 4 7584 7585 7586 7587
		f 4 -3961 -3998 -4000 4016
		mu 0 4 7588 7589 7590 7591
		f 4 -4017 -4006 4017 -4016
		mu 0 4 7592 7593 7594 7595
		f 4 -3942 -3947 -3906 4018
		mu 0 4 7596 7597 7598 7599
		f 4 -4015 -4012 4019 -3905
		mu 0 4 7600 7601 7602 7603
		f 4 -3901 -3943 -4019 -3903
		mu 0 4 7604 7605 7606 7607
		f 4 -3902 -4020 -4011 -3996
		mu 0 4 7608 7609 7610 7611
		f 4 4020 -3223 -3956 4021
		mu 0 4 7612 7613 7614 7615
		f 4 -3928 4022 4023 -4022
		mu 0 4 7616 7617 7618 7619
		f 4 -3959 4024 4025 -4023
		mu 0 4 7620 7621 7622 7623
		f 4 4026 -4021 -4024 -4026
		mu 0 4 7624 7625 7626 7627
		f 4 4027 -3584 -4027 4028
		mu 0 4 7628 7629 7630 7631
		f 4 4029 4030 -4003 4031
		mu 0 4 7632 7633 7634 7635
		f 4 -4032 -3919 -3599 4032
		mu 0 4 7636 7637 7638 7639
		f 4 -3794 4033 4034 -3787
		mu 0 4 7640 7641 7642 7643
		f 4 4035 -4031 -3788 4036
		mu 0 4 7644 7645 7646 7647
		f 4 4037 -4004 -4036 4038
		mu 0 4 7648 7649 7650 7651
		f 4 -4028 4039 4040 -3561
		mu 0 4 7652 7653 7654 7655
		f 4 4041 -3581 -4041 4042
		mu 0 4 7656 7657 7658 7659
		f 4 4043 4044 4045 -4042
		mu 0 4 7660 7661 7662 7663
		f 4 4046 -3526 4047 4048
		mu 0 4 7664 7665 7666 7667
		f 4 4049 -3539 -4047 4050
		mu 0 4 7668 7669 7670 7671
		f 4 4051 4052 -3541 -4050
		mu 0 4 7672 7673 7674 7675
		f 4 4053 4054 4055 4056
		mu 0 4 7676 7677 7678 7679
		f 4 4057 4058 -4055 4059
		mu 0 4 7680 7681 7682 7683
		f 4 4060 -4058 4061 4062
		mu 0 4 7684 7685 7686 7687
		f 4 4063 4064 -4063 4065
		mu 0 4 7688 7689 7690 7691
		f 4 4066 4067 4068 4069
		mu 0 4 7692 7693 7694 7695
		f 4 4070 4071 -4070 4072
		mu 0 4 7696 7697 7698 7699
		f 4 4073 4074 -4071 4075
		mu 0 4 7700 7701 7702 7703
		f 4 -4054 4076 4077 4078
		mu 0 4 7704 7705 7706 7707
		f 4 4079 -4060 -4079 4080
		mu 0 4 7708 7709 7710 7711
		f 4 4081 -4062 -4080 4082
		mu 0 4 7712 7713 7714 7715
		f 4 4083 -4066 -4082 4084
		mu 0 4 7716 7717 7718 7719
		f 4 4085 -4084 4086 4087
		mu 0 4 7720 7721 7722 7723
		f 4 4088 -4073 4089 4090
		mu 0 4 7724 7725 7726 7727
		f 4 4091 -4076 -4089 4092
		mu 0 4 7728 7729 7730 7731
		f 4 -4081 4093 -4085 -4083
		mu 0 4 7732 7733 7734 7735
		f 4 4094 4095 4096 -4094
		mu 0 4 7736 7737 7738 7739
		f 4 4097 4098 -4096 4099
		mu 0 4 7740 7741 7742 7743
		f 4 4100 4101 -4098 4102
		mu 0 4 7744 7745 7746 7747
		f 4 -4086 -4068 4103 -4064
		mu 0 4 7748 7749 7750 7751
		f 4 -4097 4104 4105 -4087
		mu 0 4 7752 7753 7754 7755
		f 4 4106 -4091 4107 4108
		mu 0 4 7756 7757 7758 7759
		f 4 4109 -4093 -4107 4110
		mu 0 4 7760 7761 7762 7763
		f 4 -4099 4111 4112 -4105
		mu 0 4 7764 7765 7766 7767
		f 4 4113 -4109 4114 4115
		mu 0 4 7768 7769 7770 7771
		f 4 4116 -4111 -4114 4117
		mu 0 4 7772 7773 7774 7775
		f 4 4118 4119 -4074 4120
		mu 0 4 7776 7777 7778 7779
		f 4 -4092 4121 4122 -4121
		mu 0 4 7780 7781 7782 7783
		f 4 4123 -4119 4124 4125
		mu 0 4 7784 7785 7786 7787
		f 4 4126 -4126 4127 4128
		mu 0 4 7788 7789 7790 7791
		f 4 4129 -4103 4130 4131
		mu 0 4 7792 7793 7794 7795
		f 4 -4100 4132 -4039 -4131
		mu 0 4 7796 7797 7798 7799
		f 4 4133 4134 -4057 4135
		mu 0 4 7800 7801 7802 7803
		f 4 4136 4137 4138 -4134
		mu 0 4 7804 7805 7806 7807
		f 4 -4102 4139 4140 -4112
		mu 0 4 7808 7809 7810 7811
		f 4 4141 -4116 4142 4143
		mu 0 4 7812 7813 7814 7815
		f 4 -4069 -4088 4144 -4090
		mu 0 4 7816 7817 7818 7819
		f 4 -4106 4145 -4108 -4145
		mu 0 4 7820 7821 7822 7823
		f 4 -4113 4146 -4115 -4146
		mu 0 4 7824 7825 7826 7827
		f 4 -4147 -4141 4147 -4143
		mu 0 4 7828 7829 7830 7831
		f 4 -4110 4148 4149 -4122
		mu 0 4 7832 7833 7834 7835
		f 4 -4150 4150 4151 4152
		mu 0 4 7836 7837 7838 7839
		f 4 4153 -4149 -4117 4154
		mu 0 4 7840 7841 7842 7843
		f 4 4155 4156 -4151 -4154
		mu 0 4 7844 7845 7846 7847
		f 4 -4156 4157 4158 -4129
		mu 0 4 7848 7849 7850 7851
		f 4 -4142 4159 4160 -4118
		mu 0 4 7852 7853 7854 7855
		f 4 4161 -4158 -4155 -4161
		mu 0 4 7856 7857 7858 7859
		f 4 -4135 4162 -3958 -4077
		mu 0 4 7860 7861 7862 7863
		f 4 -4095 -4078 4163 -4133
		mu 0 4 7864 7865 7866 7867
		f 4 -4139 4164 -4025 -4163
		mu 0 4 7868 7869 7870 7871
		f 4 -4137 4165 4166 4167
		mu 0 4 7872 7873 7874 7875
		f 4 -4056 4168 4169 4170
		mu 0 4 7876 7877 7878 7879
		f 4 4171 -4169 -4059 4172
		mu 0 4 7880 7881 7882 7883
		f 4 4173 -4173 -4061 4174
		mu 0 4 7884 7885 7886 7887
		f 4 4175 -4175 -4065 4176
		mu 0 4 7888 7889 7890 7891
		f 4 4177 4178 -4177 -4104
		mu 0 4 7892 7893 7894 7895
		f 4 4179 4180 -4072 4181
		mu 0 4 7896 7897 7898 7899
		f 4 4182 -4182 -4075 4183
		mu 0 4 7900 7901 7902 7903
		f 4 -4174 -4176 4184 -4172
		mu 0 4 7904 7905 7906 7907
		f 4 -4185 4185 4186 4187
		mu 0 4 7908 7909 7910 7911
		f 4 4188 -4187 4189 -4101
		mu 0 4 7912 7913 7914 7915
		f 4 -4179 4190 4191 -4186
		mu 0 4 7916 7917 7918 7919
		f 4 4192 4193 -4180 4194
		mu 0 4 7920 7921 7922 7923
		f 4 4195 -4195 -4183 4196
		mu 0 4 7924 7925 7926 7927
		f 4 -4192 4197 -4140 -4190
		mu 0 4 7928 7929 7930 7931
		f 4 -4144 4198 -4193 4199
		mu 0 4 7932 7933 7934 7935
		f 4 -4160 -4200 -4196 4200
		mu 0 4 7936 7937 7938 7939
		f 4 4201 -4184 -4120 4202
		mu 0 4 7940 7941 7942 7943
		f 4 4203 -4189 -4130 4204
		mu 0 4 7944 7945 7946 7947
		f 4 4205 4206 4207 -4205
		mu 0 4 7948 7949 7950 7951;
	setAttr ".fc[2000:2205]"
		f 4 -4181 4208 -4178 -4067
		mu 0 4 7952 7953 7954 7955
		f 4 -4209 -4194 4209 -4191
		mu 0 4 7956 7957 7958 7959
		f 4 -4210 -4199 -4148 -4198
		mu 0 4 7960 7961 7962 7963
		f 4 4210 -4197 -4202 4211
		mu 0 4 7964 7965 7966 7967
		f 4 -4212 4212 4213 4214
		mu 0 4 7968 7969 7970 7971
		f 4 -4162 -4201 -4211 4215
		mu 0 4 7972 7973 7974 7975
		f 4 -4216 -4215 4216 -4159
		mu 0 4 7976 7977 7978 7979
		f 4 -4171 4217 -4166 -4136
		mu 0 4 7980 7981 7982 7983
		f 4 -4188 -4204 4218 -4170
		mu 0 4 7984 7985 7986 7987
		f 4 -4219 -4208 4219 -4218
		mu 0 4 7988 7989 7990 7991
		f 4 -4152 -4157 -4128 4220
		mu 0 4 7992 7993 7994 7995
		f 4 -4217 -4214 4221 -4127
		mu 0 4 7996 7997 7998 7999
		f 4 -4123 -4153 -4221 -4125
		mu 0 4 8000 8001 8002 8003
		f 4 -4124 -4222 -4213 -4203
		mu 0 4 8004 8005 8006 8007
		f 4 -4038 -4164 -4018 -4005
		mu 0 4 8008 8009 8010 8011
		f 4 -4206 -4132 -4037 -4035
		mu 0 4 8012 8013 8014 8015
		f 4 4222 -4207 -4034 4223
		mu 0 4 8016 8017 8018 8019
		f 4 -4167 -4220 -4223 4224
		mu 0 4 8020 8021 8022 8023
		f 4 -4225 -4224 -3795 4225
		mu 0 4 8024 8025 8026 8027
		f 4 4226 -4226 -3793 4227
		mu 0 4 8028 8029 8030 8031
		f 4 -3791 4228 4229 -4228
		mu 0 4 8032 8033 8034 8035
		f 4 -3778 4230 4231 -4229
		mu 0 4 8036 8037 8038 8039
		f 4 -3770 4232 4233 -4231
		mu 0 4 8040 8041 8042 8043
		f 4 4234 4235 -3803 4236
		mu 0 4 8044 8045 8046 8047
		f 4 -4138 -4168 4237 -4165
		mu 0 4 8048 8049 8050 8051
		f 4 -4238 -4227 4238 -4029
		mu 0 4 8052 8053 8054 8055
		f 4 4239 -4040 -4239 -4230
		mu 0 4 8056 8057 8058 8059
		f 4 -4240 -4232 -4234 -4043
		mu 0 4 8060 8061 8062 8063
		f 4 -4049 -4237 -3820 4240
		mu 0 4 8064 8065 8066 8067
		f 4 -4051 -4241 -3822 4241
		mu 0 4 8068 8069 8070 8071
		f 4 -4052 -4242 4242 4243
		mu 0 4 8072 8073 8074 8075
		f 4 -3594 4244 -3598 -3596
		mu 0 4 8076 8077 8078 8079
		f 4 -4245 -3756 4245 4246
		mu 0 4 8080 8081 8082 8083
		f 4 -3757 -3826 -3784 -4246
		mu 0 4 8084 8085 8086 8087
		f 4 -3601 4247 -4030 -4033
		mu 0 4 8088 8089 8090 8091
		f 4 -3785 -4248 -4247 -3783
		mu 0 4 8092 8093 8094 8095
		f 4 -2711 -2770 4248 -2047
		mu 0 4 8096 8097 8098 8099
		f 4 -4249 -2724 4249 -2049
		mu 0 4 8100 8101 8102 8103
		f 4 -3037 -3035 4250 4251
		mu 0 4 8104 8105 8106 8107
		f 3 -3025 -4251 -3032
		mu 0 3 8108 8109 8110
		f 4 4252 -3077 4253 4254
		mu 0 4 8111 8112 8113 8114
		f 4 -4252 -3065 4255 -3054
		mu 0 4 8115 8116 8117 8118
		f 4 -4256 -3068 4256 -3056
		mu 0 4 8119 8120 8121 8122
		f 4 -4255 -3059 4257 4258
		mu 0 4 8123 8124 8125 8126
		f 4 -4254 -3073 -3047 -3060
		mu 0 4 8127 8128 8129 8130
		f 4 -3041 -3057 4259 -4259
		mu 0 4 8131 8132 8133 8134
		f 4 -4257 -3075 -4253 -4260
		mu 0 4 8135 8136 8137 8138
		f 4 -4258 4260 4261 -3038
		mu 0 4 8139 8140 8141 8142
		f 3 -3045 -3078 -3072
		mu 0 3 8143 8144 8145
		f 4 4262 4263 4264 -2851
		mu 0 4 8146 8147 8148 8149
		f 4 -3071 -4264 -3039 4265
		mu 0 4 8150 8151 8152 8153
		f 4 -4262 -3079 -3044 -4266
		mu 0 4 8154 8155 8156 8157
		f 3 -3080 -4261 -3058
		mu 0 3 8158 8159 8160
		f 3 -3070 -3063 -4265
		mu 0 3 8161 8162 8163
		f 3 -3053 -3040 -4263
		mu 0 3 8164 8165 8166
		f 4 4266 -2473 4267 4268
		mu 0 4 8167 8168 8169 8170
		f 4 -2664 4269 4270 4271
		mu 0 4 8171 8172 8173 8174
		f 4 -2662 4272 -4269 -4270
		mu 0 4 8175 8176 8177 8178
		f 4 -2659 4273 4274 -4273
		mu 0 4 8179 8180 8181 8182
		f 4 -4267 -4275 4275 -2589
		mu 0 4 8183 8184 8185 8186
		f 4 -4268 4276 4277 -4271
		mu 0 4 8187 8188 8189 8190
		f 4 -2472 -2465 -2468 -4277
		mu 0 4 8191 8192 8193 8194
		f 3 4278 -2269 4279
		mu 0 3 8195 8196 8197
		f 4 -4276 4280 4281 4282
		mu 0 4 8198 8199 8200 8201
		f 4 4283 4284 4285 4286
		mu 0 4 8202 8203 8204 8205
		f 4 4287 -2089 4288 -2433
		mu 0 4 8206 8207 8208 8209
		f 4 -2093 4289 -2647 4290
		mu 0 4 8210 8211 8212 8213
		f 4 -2095 -4291 -2683 4291
		mu 0 4 8214 8215 8216 8217
		f 4 -2096 -4292 -2700 -2710
		mu 0 4 8218 8219 8220 8221
		f 4 4292 -2098 4293 -2805
		mu 0 4 8222 8223 8224 8225
		f 4 -4294 -2100 -2720 -2727
		mu 0 4 8226 8227 8228 8229
		f 4 -4293 -2795 -2446 -2101
		mu 0 4 8230 8231 8232 8233
		f 4 -2103 -2413 -2378 4294
		mu 0 4 8234 8235 8236 8237
		f 4 -2105 -4295 -2381 4295
		mu 0 4 8238 8239 8240 8241
		f 4 4296 -2106 -4296 -2384
		mu 0 4 8242 8243 8244 8245
		f 4 4297 -2108 -4297 -2391
		mu 0 4 8246 8247 8248 8249
		f 4 4298 -2110 -4298 -2398
		mu 0 4 8250 8251 8252 8253
		f 4 -2113 -4299 -2521 4299
		mu 0 4 8254 8255 8256 8257
		f 4 4300 -2114 -4300 -2392
		mu 0 4 8258 8259 8260 8261
		f 4 -2116 -4301 -2395 -2531
		mu 0 4 8262 8263 8264 8265
		f 4 4301 -2118 4302 -2428
		mu 0 4 8266 8267 8268 8269
		f 4 -4303 -2121 4303 -2430
		mu 0 4 8270 8271 8272 8273
		f 4 -2426 -4289 -2122 -4302
		mu 0 4 8274 8275 8276 8277
		f 4 -2123 -2497 -2495 -4304
		mu 0 4 8278 8279 8280 8281
		f 4 -2501 -2125 4304 -2518
		mu 0 4 8282 8283 8284 8285
		f 4 -2580 -2126 -2530 -2560
		mu 0 4 8286 8287 8288 8289
		f 4 -2127 -2581 -2571 -4305
		mu 0 4 8290 8291 8292 8293
		f 4 -2128 -2579 -2576 -2582
		mu 0 4 8294 8295 8296 8297
		f 4 4305 -2326 4306 -2320
		mu 0 4 8298 8299 8300 8301
		f 4 4307 -2329 -4306 -2373
		mu 0 4 8302 8303 8304 8305
		f 4 -4307 -2613 4308 4309
		mu 0 4 8306 8307 8308 8309
		f 4 -4309 -2617 4310 4311
		mu 0 4 8310 8311 8312 8313
		f 4 -4311 -2620 4312 4313
		mu 0 4 8314 8315 8316 8317
		f 4 -4313 -2623 -4285 -2609
		mu 0 4 8318 8319 8320 8321
		f 4 -2626 4314 -2594 -4287
		mu 0 4 8322 8323 8324 8325
		f 4 -2629 -4308 4315 -4315
		mu 0 4 8326 8327 8328 8329
		f 4 -2627 -4286 -2622 -3818
		mu 0 4 8330 8331 8332 8333
		f 4 -2322 -2599 -2316 4316
		mu 0 4 8334 8335 8336 8337
		f 4 -2374 -4317 -2585 -2593
		mu 0 4 8338 8339 8340 8341
		f 4 -2592 -2595 -4316 -2375
		mu 0 4 8342 8343 8344 8345
		f 4 -2596 -2591 -2590 -4283
		mu 0 4 8346 8347 8348 8349
		f 4 -2600 -2321 -4310 4317
		mu 0 4 8350 8351 8352 8353
		f 4 4318 -2604 -4318 -4312
		mu 0 4 8354 8355 8356 8357
		f 4 -2608 -2607 -4319 -4314
		mu 0 4 8358 8359 8360 8361
		f 4 -2605 -2611 -4281 -4274
		mu 0 4 8362 8363 8364 8365
		f 4 -2597 -4282 -2610 -4284
		mu 0 4 8366 8367 8368 8369
		f 4 4319 -3512 4320 -3575
		mu 0 4 8370 8371 8372 8373
		f 4 4321 -3520 -4320 -3578
		mu 0 4 8374 8375 8376 8377
		f 4 -4046 -3523 -4322 -3580
		mu 0 4 8378 8379 8380 8381
		f 4 -3552 4322 -3582 -4321
		mu 0 4 8382 8383 8384 8385
		f 4 -4323 -3797 4323 -3764
		mu 0 4 8386 8387 8388 8389
		f 4 -4324 -3801 4324 -3767
		mu 0 4 8390 8391 8392 8393
		f 4 -3804 4325 -3772 -4325
		mu 0 4 8394 8395 8396 8397
		f 4 -3521 -4045 -4235 -4048
		mu 0 4 8398 8399 8400 8401
		f 4 -4326 -4236 -4044 -4233
		mu 0 4 8402 8403 8404 8405
		f 4 -2866 -2829 4326 -2825
		mu 0 4 8406 8407 8408 8409
		f 4 -2872 -2833 4327 -2831
		mu 0 4 8410 8411 8412 8413
		f 4 -4327 -2857 4328 -2855
		mu 0 4 8414 8415 8416 8417
		f 4 -2861 -2904 -2912 -4329
		mu 0 4 8418 8419 8420 8421
		f 4 -2865 4329 -2869 -2830
		mu 0 4 8422 8423 8424 8425
		f 4 -2871 4330 -2936 -2834
		mu 0 4 8426 8427 8428 8429
		f 4 -2874 4331 -2877 -4330
		mu 0 4 8430 8431 8432 8433
		f 4 -4331 -2876 4332 4333
		mu 0 4 8434 8435 8436 8437
		f 4 -2880 4334 -2858 -4328
		mu 0 4 8438 8439 8440 8441
		f 4 -2883 -2910 -2859 -4335
		mu 0 4 8442 8443 8444 8445
		f 4 -4332 -2887 4335 -2890
		mu 0 4 8446 8447 8448 8449
		f 4 -4333 -2889 4336 4337
		mu 0 4 8450 8451 8452 8453
		f 4 -4336 -2894 4338 -2897
		mu 0 4 8454 8455 8456 8457
		f 4 -4337 -2896 4339 -2963
		mu 0 4 8458 8459 8460 8461
		f 4 -4339 -2903 4340 -2908
		mu 0 4 8462 8463 8464 8465
		f 4 -4341 -2905 -2860 -2909
		mu 0 4 8466 8467 8468 8469
		f 4 -4340 -2907 4341 4342
		mu 0 4 8470 8471 8472 8473
		f 4 -2911 -2882 4343 -4342
		mu 0 4 8474 8475 8476 8477
		f 4 -2935 -2837 4344 -2835
		mu 0 4 8478 8479 8480 8481
		f 4 -2915 4345 -2878 -4345
		mu 0 4 8482 8483 8484 8485
		f 4 -2918 4346 -2881 -4346
		mu 0 4 8486 8487 8488 8489
		f 4 -2921 4347 -4344 -4347
		mu 0 4 8490 8491 8492 8493
		f 4 -2930 -2964 -4343 -4348
		mu 0 4 8494 8495 8496 8497
		f 4 -2838 -2934 -2939 -2942
		mu 0 4 8498 8499 8500 8501
		f 4 4348 -2940 -2933 -4334
		mu 0 4 8502 8503 8504 8505
		f 4 -2962 -2961 -4349 -4338
		mu 0 4 8506 8507 8508 8509
		f 4 -2959 -2965 -2929 -2968
		mu 0 4 8510 8511 8512 8513
		f 4 -3538 -3532 -3544 -3528
		mu 0 4 8514 8515 8516 8517
		f 4 -3533 -3537 4349 -2324
		mu 0 4 8518 8519 8520 8521
		f 4 -4350 -3542 4350 -2614
		mu 0 4 8522 8523 8524 8525
		f 4 -3811 -3545 -3531 -2628
		mu 0 4 8526 8527 8528 8529
		f 4 -3810 4351 -3807 -3546
		mu 0 4 8530 8531 8532 8533
		f 4 -4352 -3817 4352 -3814
		mu 0 4 8534 8535 8536 8537
		f 4 -4353 -3824 -4243 -3821
		mu 0 4 8538 8539 8540 8541
		f 4 -4351 -4053 4353 -2615
		mu 0 4 8542 8543 8544 8545
		f 4 -4354 -4244 -3823 -2618
		mu 0 4 8546 8547 8548 8549
		f 4 -2237 -2179 -2232 4354
		mu 0 4 8550 8551 8552 8553
		f 4 4355 -2246 -4355 -2228
		mu 0 4 8554 8555 8556 8557
		f 4 4356 -2251 -4356 -2263
		mu 0 4 8558 8559 8560 8561
		f 4 4357 -2253 -4357 -2265
		mu 0 4 8562 8563 8564 8565
		f 4 4358 -2288 -2291 -2362
		mu 0 4 8566 8567 8568 8569
		f 4 -2641 -2292 -2287 -2285
		mu 0 4 8570 8571 8572 8573
		f 4 -2289 -2640 4359 -2644
		mu 0 4 8574 8575 8576 8577
		f 4 4360 -2283 -4279 -2368
		mu 0 4 8578 8579 8580 8581
		f 4 -2638 -2286 -4361 -2313
		mu 0 4 8582 8583 8584 8585
		f 4 -2692 -2470 4361 -2310
		mu 0 4 8586 8587 8588 8589
		f 4 -2284 -2637 4362 -2642
		mu 0 4 8590 8591 8592 8593
		f 4 -2658 4363 4364 -4363
		mu 0 4 8594 8595 8596 8597
		f 4 -2666 -2694 -2676 -4364
		mu 0 4 8598 8599 8600 8601
		f 4 -2467 -2691 4365 -4278
		mu 0 4 8602 8603 8604 8605
		f 4 -4366 -2695 -2665 -4272
		mu 0 4 8606 8607 8608 8609
		f 4 -2454 4366 -2449 -2735
		mu 0 4 8610 8611 8612 8613
		f 4 -2461 4367 -2343 -4367
		mu 0 4 8614 8615 8616 8617
		f 4 4368 -2463 4369 -2715
		mu 0 4 8618 8619 8620 8621
		f 4 -4370 -2820 4370 -2723
		mu 0 4 8622 8623 8624 8625
		f 4 -4371 -2721 -2196 -4250
		mu 0 4 8626 8627 8628 8629
		f 4 -2714 -4368 -2460 -4369
		mu 0 4 8630 8631 8632 8633
		f 4 -2278 4371 -2272 -4359
		mu 0 4 8634 8635 8636 8637
		f 4 4372 4373 -2264 -4362
		mu 0 4 8638 8639 8640 8641
		f 4 -2268 4374 -4358 -4374
		mu 0 4 8642 8643 8644 8645
		f 4 -2273 4375 -2254 -4375
		mu 0 4 8646 8647 8648 8649
		f 4 -4376 -4372 -2277 -2274
		mu 0 4 8650 8651 8652 8653
		f 4 -2464 -4280 -4373 -2469
		mu 0 4 8654 8655 8656 8657
		f 4 -4360 4376 -2673 4377
		mu 0 4 8658 8659 8660 8661
		f 4 -4378 -2674 4378 -2645
		mu 0 4 8662 8663 8664 8665
		f 4 -4379 -2667 4379 -2646
		mu 0 4 8666 8667 8668 8669
		f 4 -4380 -2648 4380 -2432
		mu 0 4 8670 8671 8672 8673
		f 4 -4290 -2207 -4288 -4381
		mu 0 4 8674 8675 8676 8677
		f 4 -2670 -4377 -2639 -4365
		mu 0 4 8678 8679 8680 8681
		f 4 -2348 4381 -2352 4382
		mu 0 4 8682 8683 8684 8685
		f 4 -2355 -4383 -2344 4383
		mu 0 4 8686 8687 8688 8689
		f 4 -2361 -2686 -2358 -4382
		mu 0 4 8690 8691 8692 8693
		f 4 -2954 -2848 4384 -2846
		mu 0 4 8694 8695 8696 8697
		f 4 -2849 -2953 -2957 -3005
		mu 0 4 8698 8699 8700 8701
		f 4 4385 -2958 -2952 -2951
		mu 0 4 8702 8703 8704 8705
		f 4 -4385 -2989 4386 -2986
		mu 0 4 8706 8707 8708 8709
		f 4 -4387 -2992 4387 -2984
		mu 0 4 8710 8711 8712 8713
		f 4 -4388 -2995 4388 -2981
		mu 0 4 8714 8715 8716 8717
		f 4 -2998 4389 -2978 -4389
		mu 0 4 8718 8719 8720 8721
		f 4 -3001 4390 -2973 -4390
		mu 0 4 8722 8723 8724 8725
		f 4 -3003 -4386 -2970 -4391
		mu 0 4 8726 8727 8728 8729
		f 4 -2840 4391 -2844 4392
		mu 0 4 8730 8731 8732 8733
		f 4 -2922 -4393 -2985 4393
		mu 0 4 8734 8735 8736 8737
		f 4 -2925 -4394 -2982 4394
		mu 0 4 8738 8739 8740 8741
		f 4 -2927 -4395 -2979 4395
		mu 0 4 8742 8743 8744 8745
		f 4 -2931 -4396 -2976 4396
		mu 0 4 8746 8747 8748 8749
		f 4 -2941 4397 -2947 -4392
		mu 0 4 8750 8751 8752 8753
		f 4 -2945 4398 -2949 -4398
		mu 0 4 8754 8755 8756 8757
		f 4 -2967 4399 -2971 -4399
		mu 0 4 8758 8759 8760 8761
		f 4 -2969 -4397 -2974 -4400
		mu 0 4 8762 8763 8764 8765
		f 4 -2450 -2342 -4384 -2338
		mu 0 4 8766 8767 8768 8769;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode materialInfo -n "materialInfo2";
	rename -uid "A1F26436-45EA-2F47-9ADE-2087ED5663D3";
createNode shadingEngine -n "lambert2SG";
	rename -uid "D9EF5CEB-4039-5D62-2EC7-F3B2CD4CA9B4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "grey_material";
	rename -uid "3F5104F1-465B-D51E-0E21-8BA2FC7F595C";
	setAttr ".c" -type "float3" 0.63309681 0.63309681 0.63309681 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9CB5F6ED-4DB6-229D-326C-0097D44EBB23";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "9BFD2815-4863-B8FD-D6D9-2888E5C7920C";
createNode displayLayer -n "defaultLayer";
	rename -uid "19EF90B9-4A69-4A6B-63B0-8582AE874581";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B0D920F5-4E42-8EE5-97AC-A484666CB915";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3DE41281-4D0C-C09F-AE0D-49B3026C1E17";
	setAttr ".g" yes;
createNode dagPose -n "bindPose3";
	rename -uid "9113E28A-4CAD-3923-F8D9-B694D39E64A7";
	setAttr -s 55 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.62355720051753671 1;
	setAttr ".wm[1]" -type "matrix" 2.2204460492503131e-16 1 0 0 1.2767564783189298e-15 0 -1 0
		 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0 0 33.48401950703397 -0.20044987473045472 1;
	setAttr ".wm[2]" -type "matrix" 3.4963002988245176e-16 0.9949051492826616 -0.10081539530669277 0
		 1.2478660800382647e-15 -0.10081539530669277 -0.9949051492826616 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 -5.1302079351729181e-16 35.671518465586779 0.046645388299877799 1;
	setAttr ".wm[3]" -type "matrix" -0.18375618967478891 -0.98220723152406264 0.038763605328179254 0
		 0.10289865170247939 -0.058439300674464213 -0.99297367317290519 0 0.9775712404904382 -0.17847633590623552 0.11180638303545001 0
		 -3.4659552980152801 32.535197547290437 1.3937694889653764 1;
	setAttr ".wm[4]" -type "matrix" -0.18375618967478888 0.98220723152406297 -0.038763605328178019 0
		 0.10289865170247961 0.058439300674462985 0.99297367317290519 0 0.97757124049043864 0.1784763359062356 -0.11180638303544987 0
		 3.4659536896448437 32.535162863765635 1.3937707769324739 1;
	setAttr ".wm[5]" -type "matrix" 4.7407223192389056e-16 0.97960270064149046 -0.20094414372132913 0
		 1.2060955312181409e-15 -0.20094414372132913 -0.97960270064149046 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 8.0981186379080452e-16 39.817185659653745 -0.37344197106417376 1;
	setAttr ".wm[6]" -type "matrix" -0.1353359689296548 -0.93911952025366685 -0.31581434766709632 0
		 0.16136494439579083 0.29359959843297917 -0.9422105022340479 0 0.9775712404904382 -0.17847633590623552 0.11180638303545001 0
		 -6.1924969564201664 17.961381347267682 1.9689369700951027 1;
	setAttr ".wm[7]" -type "matrix" -0.13533596892965491 0.93911952025366707 0.31581434766709637 0
		 0.16136496918238491 -0.29359959390766138 0.94221049939916524 0 0.97757123639898469 0.17847634335053605 -0.11180640692546248 0
		 6.1924945426956564 17.961346540428472 1.9689368133386049 1;
	setAttr ".wm[8]" -type "matrix" 2.2204460492503121e-16 0.99999999999999989 5.5511151231257827e-17 0
		 1.2767564783189296e-15 5.5511151231257827e-17 -0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 2.6189803684058124e-15 43.898838853138187 -1.2107041645994396 1;
	setAttr ".wm[9]" -type "matrix" 0.9848077530122078 5.5511151231257827e-17 0.17364817766693039 0
		 -2.7755575615628914e-17 0.99999999999999967 -5.2041704279304213e-17 0 -0.17364817766693036 -4.6837533851373792e-17 0.98480775301220813 0
		 -8.2901443192969886 3.4054462129044349 -2.9260450423135143 1;
	setAttr ".wm[10]" -type "matrix" 0.98480775301220835 8.3266726846886741e-17 -0.17364817766693053 0
		 -1.6653345369377348e-16 1 3.3653635433950058e-16 0 0.17364817766693028 -3.0010716134398763e-16 0.98480775301220824 0
		 8.2901373249381187 3.4054469962356659 -2.9260465586998992 1;
	setAttr ".wm[11]" -type "matrix" -2.1078052946248593e-16 0.94422412180703352 0.32930351926108542 0
		 1.2786643343368823e-15 0.32930351926108542 -0.94422412180703352 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 6.9936962061810982e-16 52.325707702686721 -1.6549035318261569 1;
	setAttr ".wm[12]" -type "matrix" 2.2204460492503121e-16 0.99999999999999989 5.5511151231257827e-17 0
		 1.2767564783189296e-15 5.5511151231257827e-17 -0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 -1.0157244001578873 50.625873370797017 1.7368062488777638 1;
	setAttr ".wm[13]" -type "matrix" -2.2204460492503106e-16 -0.99999999999999989 -1.7797583114599312e-16 0
		 -1.2767564783189296e-15 -1.7797583114599312e-16 0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 1.0157258027320546 50.625894095659653 1.7368043908670239 1;
	setAttr ".wm[14]" -type "matrix" 0.9848077530122078 5.5511151231257827e-17 0.17364817766693039 0
		 -2.7755575615628914e-17 0.99999999999999967 -5.2041704279304213e-17 0 -0.17364817766693036 -4.6837533851373792e-17 0.98480775301220813 0
		 -9.1648100721906189 1.1141759727946843 2.0344309403143748 1;
	setAttr ".wm[15]" -type "matrix" 0.98480775301220835 8.3266726846886741e-17 -0.17364817766693053 0
		 1.8779922218953118e-16 -1 -2.1593218808931076e-16 0 -0.17364817766693028 1.7764248142925231e-16 -0.98480775301220824 0
		 9.1648034794479347 1.114173016430041 2.0344317016065592 1;
	setAttr ".wm[16]" -type "matrix" -5.2726437590591328e-17 0.97742469656079323 0.21128408021675721 0
		 1.2948478035215853e-15 0.21128408021675721 -0.97742469656079323 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 2.0092583465095533e-16 54.55856406411263 -0.87618220831784399 1;
	setAttr ".wm[17]" -type "matrix" -0.70710678118654791 -0.6856650298747855 0.17281049391402292 0
		 0.11345594346820222 0.13120897610973148 0.98484108031701023 0 -0.69794537672495505 0.71599418391146508 -0.014985983892138073 0
		 -7.0547064189296638 50.240980152920947 -1.6592140330505449 1;
	setAttr ".wm[18]" -type "matrix" -0.70710678118654724 0.68566502987478661 -0.17281049391402326 0
		 0.11345594346820304 -0.13120897610973101 -0.98484108031701045 0 -0.69794537672495582 -0.71599418391146463 0.014985983892136914 0
		 7.0547074910679326 50.240963424412492 -1.659212066584133 1;
	setAttr ".wm[19]" -type "matrix" 2.2204460492503091e-16 0.99999999999999989 1.9428902930940239e-16 0
		 1.2767564783189294e-15 1.9428902930940239e-16 -0.99999999999999989 0 -1 2.2204460492503126e-16 -1.3322676295501878e-15 0
		 8.8001198907290415e-16 56.869931567999146 -0.37654764944092178 1;
	setAttr ".wm[20]" -type "matrix" -0.57792935374681953 -0.5507563009050962 0.60221687048032635 0
		 0.42293015166342057 0.42897532052355836 0.79819186991328483 0 -0.69794537672495505 0.71599418391146508 -0.014985983892138073 0
		 -13.776795362518888 43.722726561019584 -0.01639636903895747 1;
	setAttr ".wm[21]" -type "matrix" -0.57792935374681886 0.55075630090509775 -0.60221687048032624 0
		 0.42293015166342057 -0.42897532052355813 -0.79819186991328528 0 -0.69794537672495582 -0.71599418391146463 0.014985983892136914 0
		 13.776815273552742 43.722739533038059 -0.016397058810344145 1;
	setAttr ".wm[22]" -type "matrix" -0.57792935374681953 -0.5507563009050962 0.60221687048032635 0
		 0.28439523170661818 0.55575405362145724 0.78118933944713886 0 -0.76492941782907153 0.62273985651847663 -0.16455411524183944 0
		 -19.515858048328383 38.253502831498395 5.9638507800835807 1;
	setAttr ".wm[23]" -type "matrix" -0.57792935374681886 0.55075630090509775 -0.60221687048032624 0
		 0.28439523170661885 -0.55575405362145625 -0.78118933944713964 0 -0.76492941782907198 -0.62273985651847685 0.16455411524183755 0
		 19.515866299837601 38.253501812262641 5.9638461497660931 1;
	setAttr ".wm[24]" -type "matrix" -0.44630232917668156 -0.57539833436039234 0.68536923463688859 0
		 -0.8072763818253732 0.58936470813283337 -0.030888252693123619 0 -0.38615938978406716 -0.56706789507323163 -0.72754032744502273 0
		 -20.89498234752012 36.790647848700324 8.8809254607027732 1;
	setAttr ".wm[25]" -type "matrix" -0.42807002287424867 -0.65226654035645149 0.62554329654138674 0
		 -0.85797663791030243 0.51078729305957804 -0.054519996781021818 0 -0.28395799745133798 -0.56003991070306203 -0.77828218154030226 0
		 -21.449444861023636 36.264009887584351 8.1669629053173818 1;
	setAttr ".wm[26]" -type "matrix" -0.42537697590527385 -0.73566672384567855 0.5271137446470634 0
		 -0.89813991266591964 0.41481353515510749 -0.1458575617805829 0 -0.11135136122265508 -0.53546634112546032 -0.83718377425483692 0
		 -21.559737833939966 35.908305713247231 7.3798063260381879 1;
	setAttr ".wm[27]" -type "matrix" -0.44631772687857235 -0.83419531398152535 0.32391150767641447 0
		 -0.87287149765423577 0.32605155717223727 -0.36302304423880694 0 0.19722027090741873 -0.44475674272215704 -0.87366790289353158 0
		 -21.4299976629013 35.572557418983244 6.7115434417009832 1;
	setAttr ".wm[28]" -type "matrix" 0.26116838584785845 -0.22313852001166962 0.93914869702333381 0
		 0.30716471814132179 0.94155485449395404 0.13829060672377816 0 -0.91511797608985168 0.25235621027799193 0.31444464214125739 0
		 -18.984933373240274 37.905125454683265 7.2227844119654643 1;
	setAttr ".wm[29]" -type "matrix" -0.57792935374681886 0.55075630090509775 -0.60221687048032624 0
		 0.28439523170661885 -0.55575405362145625 -0.78118933944713964 0 -0.76492941782907198 -0.62273985651847685 0.16455411524183755 0
		 21.312478384990417 36.541406502465918 7.8359408405802036 1;
	setAttr ".wm[30]" -type "matrix" -0.44630232917667989 0.57539833436039456 -0.68536923463688859 0
		 -0.80727638182537476 -0.58936470813283159 0.03088825269312262 0 -0.38615938978406616 0.56706789507323219 0.72754032744502339 0
		 20.895008263416898 36.790681548897538 8.8809174745794692 1;
	setAttr ".wm[31]" -type "matrix" -0.42807002287424722 0.65226654035645337 -0.62554329654138663 0
		 -0.85797663791030376 -0.51078729305957637 0.054519996781020777 0 -0.28395799745133737 0.56003991070306225 0.77828218154030293 0
		 21.449413110828385 36.263999291806833 8.1669472762283188 1;
	setAttr ".wm[32]" -type "matrix" -0.42537697590527224 0.73566672384568021 -0.52711374464706329 0
		 -0.89813991266592075 -0.41481353515510561 0.14585756178058268 0 -0.11135136122265375 0.53546634112546043 0.83718377425483737 0
		 21.559707280701467 35.908304639226756 7.37978760012082 1;
	setAttr ".wm[33]" -type "matrix" -0.4463177268785703 0.83419531398152691 -0.32391150767641474 0
		 -0.87287149765423677 -0.32605155717223522 0.36302304423880677 0 0.1972202709074195 0.44475674272215671 0.87366790289353169 0
		 21.429973373009165 35.572589303031997 6.7115090436072311 1;
	setAttr ".wm[34]" -type "matrix" 0.26116838584785951 0.22313852001166978 -0.93914869702333359 0
		 0.30716471814132451 -0.94155485449395382 -0.13829060672377708 0 -0.91511797608985046 -0.25235621027799449 -0.31444464214125911 0
		 18.984927983013293 37.905140930512388 7.2227672778376677 1;
	setAttr ".wm[35]" -type "matrix" -0.20208014284940976 -0.7175540713315911 0.66654314982709051 0
		 -0.9000247449640254 0.40441334930077605 0.16249708108076749 0 -0.38615938978406716 -0.56706789507323163 -0.72754032744502273 0
		 -21.523098121512643 35.980845285474814 9.8454985743559469 1;
	setAttr ".wm[36]" -type "matrix" -0.17035198408566296 -0.76931425180241075 0.61574002914523462 0
		 -0.94358256512162408 0.3074262194306181 0.1230490243971627 0 -0.28395799745133798 -0.56003991070306203 -0.77828218154030226 0
		 -22.141118202125625 35.210080966731326 9.1777125462700297 1;
	setAttr ".wm[37]" -type "matrix" -0.031119369337440528 -0.84013080232971926 0.54149036910074555 0
		 -0.99329374265919024 0.086348320762674735 0.076886333607244284 0 -0.11135136122265508 -0.53546634112546032 -0.83718377425483692 0
		 -22.257775807652198 34.701086379977284 8.2447929874489514 1;
	setAttr ".wm[38]" -type "matrix" -0.15815570626148695 -0.89393223332075544 0.41937087977957666 0
		 -0.96751792609756571 0.055467125699308006 -0.24664237398817454 0 0.19722027090741873 -0.44475674272215704 -0.87366790289353158 0
		 -21.880468724633225 34.730599266415183 7.0384691988082908 1;
	setAttr ".wm[39]" -type "matrix" 0.17304772413383893 -0.45857616817414049 0.87164349544686037 0
		 0.36416146832045848 0.85207056111383861 0.37598162704291205 0 -0.91511797608985168 0.25235621027799193 0.31444464214125739 0
		 -18.538443595452591 37.523650997533949 8.8283397385883191 1;
	setAttr ".wm[40]" -type "matrix" -0.20208014284940812 0.71755407133159266 -0.66654314982709018 0
		 -0.90002474496402629 -0.40441334930077399 -0.16249708108076813 0 -0.38615938978406616 0.56706789507323219 0.72754032744502339 0
		 21.52308655000687 35.980869759047039 9.8454776034643441 1;
	setAttr ".wm[41]" -type "matrix" -0.17035198408566168 0.76931425180241186 -0.61574002914523429 0
		 -0.94358256512162497 -0.30742621943061632 -0.12304902439716332 0 -0.28395799745133737 0.56003991070306225 0.77828218154030293 0
		 22.141107288854982 35.210090502309335 9.1776953413161557 1;
	setAttr ".wm[42]" -type "matrix" -0.03111936933743864 0.84013080232971993 -0.54149036910074533 0
		 -0.99329374265919057 -0.086348320762672348 -0.07688633360724445 0 -0.11135136122265375 0.53546634112546043 0.83718377425483737 0
		 22.2577802043124 34.70107658023619 8.244795081108089 1;
	setAttr ".wm[43]" -type "matrix" -0.15815570626148523 0.89393223332075633 -0.41937087977957671 0
		 -0.96751792609756593 -0.055467125699306064 0.24664237398817457 0 0.1972202709074195 0.44475674272215671 0.87366790289353169 0
		 21.880436989502858 34.730568319925624 7.0384598380332273 1;
	setAttr ".wm[44]" -type "matrix" 0.1730477241338394 0.45857616817414015 -0.87164349544686059 0
		 0.36416146832046131 -0.8520705611138385 -0.3759816270429106 0 -0.91511797608985046 -0.25235621027799449 -0.31444464214125911 0
		 18.538476957066575 37.523635842992029 8.8283563808759862 1;
	setAttr ".wm[45]" -type "matrix" -0.096400926261501013 -0.75959146580424441 0.64321665595138577 0
		 -0.91738093892206063 0.31851971281943153 0.23865750658193291 0 -0.38615938978406716 -0.56706789507323163 -0.72754032744502273 0
		 -21.749637997389652 35.176438637882335 10.592719950486053 1;
	setAttr ".wm[46]" -type "matrix" -0.075747034434193838 -0.79605503551189161 0.60046545879891011 0
		 -0.95584007159035289 0.22945953642389039 0.18362483134446267 0 -0.28395799745133798 -0.56003991070306203 -0.77828218154030226 0
		 -22.344577096206233 34.291254997592858 9.9131180423871452 1;
	setAttr ".wm[47]" -type "matrix" 0.038625125256261945 -0.84411811510492063 0.53476416058918297 0
		 -0.99303019795613456 0.027210389071592928 0.11467615564611777 0 -0.11135136122265508 -0.53546634112546032 -0.83718377425483692 0
		 -22.29192663035619 33.779115315351028 8.8390319448830432 1;
	setAttr ".wm[48]" -type "matrix" -0.013566407231725697 -0.89232402135694155 0.45119152641001437 0
		 -0.9802653300703984 -0.07713158051377339 -0.18201813632003808 0 0.19722027090741873 -0.44475674272215704 -0.87366790289353158 0
		 -22.015126538999525 33.96948249373591 7.3955322945060278 1;
	setAttr ".wm[49]" -type "matrix" 0.11360329027617064 -0.58691298595364216 0.80164046763958186 0
		 0.38685059425525203 0.76931754825501619 0.50842612803754372 0 -0.91511797608985168 0.25235621027799193 0.31444464214125739 0
		 -18.313800810958551 36.92834800908448 9.9598681818741035 1;
	setAttr ".wm[50]" -type "matrix" -0.096400926261500264 0.7595914658042453 -0.64321665595138566 0
		 -0.91738094888866795 -0.3185196981836525 -0.238657487804431 0 -0.38615936610686008 0.56706790329408818 0.72754033360467041 0
		 21.749619721903972 35.176422214420164 10.592712835686552 1;
	setAttr ".wm[51]" -type "matrix" -0.075747034434192465 0.79605503551189249 -0.60046545879890967 0
		 -0.95584007159035367 -0.22945953642388847 -0.18362483134446328 0 -0.28395799745133737 0.56003991070306225 0.77828218154030293 0
		 22.344616836931745 34.291283281857176 9.9131223808783062 1;
	setAttr ".wm[52]" -type "matrix" 0.038625125256263451 0.84411811510492119 -0.53476416058918286 0
		 -0.99303019795613479 -0.027210389071590846 -0.11467615564611769 0 -0.11135136122265375 0.53546634112546043 0.83718377425483737 0
		 22.291920002528887 33.779127940550502 8.839014983071122 1;
	setAttr ".wm[53]" -type "matrix" -0.013566407231723643 0.89232402135694222 -0.45119152641001453 0
		 -0.98026533007039851 0.077131580513775722 0.18201813632003794 0 0.1972202709074195 0.44475674272215671 0.87366790289353169 0
		 22.015099350463419 33.969462840947337 7.3955229231740054 1;
	setAttr ".wm[54]" -type "matrix" 0.11360329027617036 0.5869129859536425 -0.80164046763958186 0
		 0.38685059425525498 -0.76931754825501564 -0.50842612803754295 0 -0.91511797608985046 -0.25235621027799449 -0.31444464214125911 0
		 18.313816841644673 36.928374619965005 9.9598592350594632 1;
	setAttr -s 55 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0.62355720051753671 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 33.48401950703397 -0.82400707524799144 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.50000000000000044 -0.50000000000000033 0.49999999999999967 0.49999999999999983 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1874989585528084 -0.24709526303033252
		 6.8326265770717055e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.050472025505909443 0.9987254751138227 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 2 -0.94882195974353323 -1.5942193636958359
		 3.4659552980152779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.024445530232899974 0.99407647406869648 -0.053996106018672746 -0.091097751287289697 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 2 -0.94885664326833563 -1.594220651662924
		 -3.465953689644846 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99407647406869637 -0.024445530232899242 -0.09109775128728996 0.053996106018674044 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.166896911787056 2.2204460492503131e-15
		 1.3403963447711082e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.050645659225389744 0.99871668515231371 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.837822133939071 1.0658141036401503e-14
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.18022665825970943 0.9836251072703146 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -14.837822051067878 -1.5246487432563072e-06
		 -6.4777036712371228e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.2470045809385808e-08 2.2848488392168112e-09 0.18022665825970879 0.9836251072703146 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.1666414259695088 5.3290705182007514e-15
		 1.6612049582090555e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.10098836407851508 0.99488760687865907 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 -0.17453292519943295 0 0 15.499555509645383
		 1.1990408665951691e-14 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.33884290224302915 -0.57383124355667148 0.4882475687425708 0.56348691478568835 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0.17453292519943295 0 0 -15.499521895687625
		 -1.2469471079690209e-05 2.0261224129569655e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.5634869190814169 0.48824757601739721 0.57383123736684416 -0.33884289509934451 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.4268688495485335 0.44419936722671771
		 4.35788593201264e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.16699682361195725 0.98595743361644006 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.7270345176588293 -2.9475104134772048
		 1.0157244001578878 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.727055242521466 -2.9475085554664622
		 -1.0157258027320542 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7763568394002505e-15
		 -2.2912702401097511 5.0369993203804482 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.2912739798056236
		 5.0370016331958816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3647525093435675 7.1054273576010019e-15
		 -1.5777218104420236e-29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.061300216468455265 0.99811937335216594 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 2 -0.38489321787606912
		 3.3960202819283012 6.0389820187717813 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38769532938806117 0.026826166483586621 -0.91766708109705442 0.08282401000488808 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 2 0.38493067124716163 -3.3960164574511653
		 -6.0389816883358733 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38769532938806101 0.026826166483585948 -0.91766708109705453 0.082824010004887538 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 2 2.3647525093435746 3.5527136788005009e-15
		 -8.0377113002304247e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.10624336082599851 0.99434015723010838 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.5064693515020622 -4.4408920985006262e-15
		 4.2632564145606011e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.23413511545044102 0.97220406690828476 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.5064618489744248 8.5638105407070952e-07
		 -3.4453731011296895e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.23413511545044069 0.97220406690828487 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 1 9.9303879420593049 1.7763568394002505e-14
		 -5.6843418860808015e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.094278652482412684 0 0 0.99554584810851399 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 1 -9.9303865363858463 4.2160500832721937e-06
		 1.8096315052673617e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.09427865248241217 0 0 0.9955458481085141 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3594245991747576 1.0735836816996454
		 -0.33606199796400915 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.68040080830102856 0.07791286042279244 -0.011890792633157968 0.7285896892590511 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.5399536409167913 0.065476067986530495
		 -0.12241028202701898 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70525730651318275 0.065977554460485519 -0.063035940433777457 0.70305445317614879 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3255625310000401 -0.77849309258813193
		 -0.13002525449313396 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74461412095567581 0.028441932141704963 -0.1223405063657253 0.65557125308514774 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0330581835169852 -1.4502289233100569
		 -0.32838576490999571 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.79798666233203375 -0.072443984782201751 -0.19629101208509805 0.56518934383413899 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.64318515294614986 0.94084583893302209
		 -0.83023109022089159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.058006964371771746 0.30648051583538205 0.37054697959272026 0.87487131705889309 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1086691468716099 -8.5960498132919838e-06
		 -3.0563295993601969e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3594136650734985 -1.0735953319779341
		 0.33602631256795235 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.68040080830102934 0.077912860422792829 -0.011890792633158398 0.72858968925905043 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5399291734525002 -0.065473529955536236
		 0.12244503430864739 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7052573065131833 0.065977554460485879 -0.063035940433777721 0.70305445317614812 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3255316461622524 0.77849309848210169
		 0.13005265201387317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74461412095567658 0.028441932141705289 -0.12234050636572553 0.65557125308514663 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.0330033285376023 1.4502246368264089
		 0.32838526818842695 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.79798666233203452 -0.072443984782201085 -0.19629101208509833 0.5651893438341381 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.64316065421993507
		 -0.94084911793360604 0.83022919549843976 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.058006964371770484 0.30648051583538116 0.37054697959272143 0.87487131705889298 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4073773156220097 -7.1054273576010019e-15
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14160433548938664 0.98992333651177722 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6157948563129905 -7.1054273576010019e-15
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14161113861858818 0.98992236332913852 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6409867323606093 0
		 -1.7763568394002505e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.2040578909040266 0.97895882301545267 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0093057806204726 -1.0658141036401503e-14
		 -7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15469190458827606 0.98796275975101999 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7095858533496591 2.1316282072803006e-14
		 -1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.13014711813278121 0.99149469370326526 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4073569945308773 3.5299465039884126e-05
		 -2.0295290070748706e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14160433548938639 0.98992333651177722 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.615789659194494 -2.8246351256200342e-05
		 4.1310836671470952e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14161113861858793 0.98992236332913863 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6410189927500625 -2.4733659287790033e-05
		 8.8657631671651416e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.2040578909040266 0.97895882301545267 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0093629804949451 3.6073854758456037e-05
		 -7.5383557422981085e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15469190458827578 0.9879627597510201 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7096142884861409 3.6072411852217101e-05
		 -3.8353554778325361e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.13014711813278099 0.99149469370326537 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1210397651283888 0
		 -1.0658141036401503e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.058050333050760503 0.99831365754090318 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1943441408836115 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.049745548824038158 0.99876192376972162 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0974137147091731 -1.4210854715202004e-14
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.035090721958372761 0.99938413096888834 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.85142558273337698 3.5527136788005009e-15
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.074029057287691866 0.99725608480324435 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.298155093448722 -1.7763568394002505e-14
		 7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.078905645261626162 0.99688208888807228 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.121076991903978 2.0321479937024378e-05
		 -1.0521724622236661e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.2883022242254428e-08 -7.4912701655849721e-10 -0.058050333050759968 0.99831365754090318 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1943516114222525 -5.6210965269087865e-05
		 1.2883284696840747e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.049745548824038165 0.99876192376972162 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0973842133967047 1.0479303810484453e-05
		 -2.7175386101419008e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.03509072195837256 0.99938413096888834 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.85141620157257591
		 -5.0279443826184433e-06 5.9104069443094431e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.074029057287692032 0.99725608480324435 1 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2981166353243765 -3.2277310737072185e-05
		 1.3366436011352789e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.07890564526162655 0.99688208888807228 1
		 1 1 yes;
	setAttr -s 55 ".m";
	setAttr -s 55 ".p";
	setAttr -s 55 ".g[0:54]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode dagPose -n "bindPose2";
	rename -uid "004A7858-4E8C-FCE0-5251-2393E2DDD30D";
	setAttr -s 55 ".wm";
	setAttr -s 55 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0.62355720051753671 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 33.48401950703397 -0.82400707524799144 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.50000000000000044 -0.50000000000000033 0.49999999999999967 0.49999999999999983 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1874989585528084 -0.24709526303033252
		 6.8326265770717055e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.050472025505909443 0.9987254751138227 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 2 -0.94882195974353323 -1.5942193636958359
		 3.4659552980152779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.024445530232899974 0.99407647406869648 -0.053996106018672746 -0.091097751287289697 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 2 -0.94885664326833563 -1.594220651662924
		 -3.465953689644846 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99407647406869637 -0.024445530232899242 -0.09109775128728996 0.053996106018674044 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.166896911787056 2.2204460492503131e-15
		 1.3403963447711082e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.050645659225389744 0.99871668515231371 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.837822133939071 1.0658141036401503e-14
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.18022665825970943 0.9836251072703146 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -14.837822051067878 -1.5246487432563072e-06
		 -6.4777036712371228e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.2470045809385808e-08 2.2848488392168112e-09 0.18022665825970879 0.9836251072703146 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.1666414259695088 5.3290705182007514e-15
		 1.6612049582090555e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.10098836407851508 0.99488760687865907 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 -0.17453292519943295 0 0 15.499555509645383
		 1.1990408665951691e-14 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.33884290224302915 -0.57383124355667148 0.4882475687425708 0.56348691478568835 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0.17453292519943295 0 0 -15.499521895687625
		 -1.2469471079690209e-05 2.0261224129569655e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.5634869190814169 0.48824757601739721 0.57383123736684416 -0.33884289509934451 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.4268688495485335 0.44419936722671771
		 4.35788593201264e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.16699682361195725 0.98595743361644006 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.7270345176588293 -2.9475104134772048
		 1.0157244001578878 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.727055242521466 -2.9475085554664622
		 -1.0157258027320542 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7763568394002505e-15
		 -2.2912702401097511 5.0369993203804482 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.2912739798056236
		 5.0370016331958816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3647525093435675 7.1054273576010019e-15
		 -1.5777218104420236e-29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.061300216468455265 0.99811937335216594 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 2 -0.38489321787606912
		 3.3960202819283012 6.0389820187717813 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38726364898326082 0.02689443989365458 -0.91784217017648284 0.08288127608030961 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 2 0.38493067124716163 -3.3960164574511653
		 -6.0389816883358733 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38726364898326154 0.026894439893653706 -0.91784217017648262 0.082881276080308985 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 2 2.3647525093435746 3.5527136788005009e-15
		 -8.0377113002304247e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.10624336082599851 0.99434015723010838 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.5064693515020622 -4.4408920985006262e-15
		 4.2632564145606011e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.23413511545044102 0.97220406690828476 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.5064618489744248 8.5638105407070952e-07
		 -3.4453731011296895e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.23413511545044069 0.97220406690828487 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 1 9.9303879420593049 1.7763568394002505e-14
		 -5.6843418860808015e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.094278652482412684 0 0 0.99554584810851399 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 1 -9.9303865363858463 4.2160500832721937e-06
		 1.8096315052673617e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.09427865248241217 0 0 0.9955458481085141 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3594245991747576 1.0735836816996454
		 -0.33606199796400915 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.68040080830102856 0.07791286042279244 -0.011890792633157968 0.7285896892590511 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.5399536409167913 0.065476067986530495
		 -0.12241028202701898 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70525730651318275 0.065977554460485519 -0.063035940433777457 0.70305445317614879 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3255625310000401 -0.77849309258813193
		 -0.13002525449313396 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74461412095567581 0.028441932141704963 -0.1223405063657253 0.65557125308514774 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0330581835169852 -1.4502289233100569
		 -0.32838576490999571 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.79798666233203375 -0.072443984782201751 -0.19629101208509805 0.56518934383413899 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.64318515294614986 0.94084583893302209
		 -0.83023109022089159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.058006964371771746 0.30648051583538205 0.37054697959272026 0.87487131705889309 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1086691468716099 -8.5960498132919838e-06
		 -3.0563295993601969e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3594136650734985 -1.0735953319779341
		 0.33602631256795235 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.68040080830102934 0.077912860422792829 -0.011890792633158398 0.72858968925905043 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5399291734525002 -0.065473529955536236
		 0.12244503430864739 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7052573065131833 0.065977554460485879 -0.063035940433777721 0.70305445317614812 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3255316461622524 0.77849309848210169
		 0.13005265201387317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74461412095567658 0.028441932141705289 -0.12234050636572553 0.65557125308514663 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.0330033285376023 1.4502246368264089
		 0.32838526818842695 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.79798666233203452 -0.072443984782201085 -0.19629101208509833 0.5651893438341381 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.64316065421993507
		 -0.94084911793360604 0.83022919549843976 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.058006964371770484 0.30648051583538116 0.37054697959272143 0.87487131705889298 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4073773156220097 -7.1054273576010019e-15
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14160433548938664 0.98992333651177722 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6157948563129905 -7.1054273576010019e-15
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14161113861858818 0.98992236332913852 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6409867323606093 0
		 -1.7763568394002505e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.2040578909040266 0.97895882301545267 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0093057806204726 -1.0658141036401503e-14
		 -7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15469190458827606 0.98796275975101999 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7095858533496591 2.1316282072803006e-14
		 -1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.13014711813278121 0.99149469370326526 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4073569945308773 3.5299465039884126e-05
		 -2.0295290070748706e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14160433548938639 0.98992333651177722 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.615789659194494 -2.8246351256200342e-05
		 4.1310836671470952e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14161113861858793 0.98992236332913863 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6410189927500625 -2.4733659287790033e-05
		 8.8657631671651416e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.2040578909040266 0.97895882301545267 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0093629804949451 3.6073854758456037e-05
		 -7.5383557422981085e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15469190458827578 0.9879627597510201 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7096142884861409 3.6072411852217101e-05
		 -3.8353554778325361e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.13014711813278099 0.99149469370326537 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1210397651283888 0
		 -1.0658141036401503e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.058050333050760503 0.99831365754090318 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1943441408836115 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.049745548824038158 0.99876192376972162 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0974137147091731 -1.4210854715202004e-14
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.035090721958372761 0.99938413096888834 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.85142558273337698 3.5527136788005009e-15
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.074029057287691866 0.99725608480324435 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.298155093448722 -1.7763568394002505e-14
		 7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.078905645261626162 0.99688208888807228 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.121076991903978 2.0321479937024378e-05
		 -1.0521724622236661e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.2883022242254428e-08 -7.4912701655849721e-10 -0.058050333050759968 0.99831365754090318 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1943516114222525 -5.6210965269087865e-05
		 1.2883284696840747e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.049745548824038165 0.99876192376972162 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0973842133967047 1.0479303810484453e-05
		 -2.7175386101419008e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.03509072195837256 0.99938413096888834 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.85141620157257591
		 -5.0279443826184433e-06 5.9104069443094431e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.074029057287692032 0.99725608480324435 1 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2981166353243765 -3.2277310737072185e-05
		 1.3366436011352789e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.07890564526162655 0.99688208888807228 1
		 1 1 yes;
	setAttr -s 55 ".m";
	setAttr -s 55 ".p";
	setAttr -s 55 ".g[0:54]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode objectSet -n "tweakSet4";
	rename -uid "490554DD-4B9C-2B37-5629-F18C883AC22C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode objectSet -n "skinCluster4Set";
	rename -uid "16D1B6D1-4A8F-12C5-79B6-5085E6A26E51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupParts -n "groupParts9";
	rename -uid "A4E5222C-46B0-3603-74DD-F983CB8BBDED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId9";
	rename -uid "74A3DD22-4359-1B76-3F55-57A5B5DF2123";
	setAttr ".ihi" 0;
createNode tweak -n "tweak4";
	rename -uid "4FA32707-46B5-4CDF-E92D-BA95E78C4AED";
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "CBD1B06C-4CE9-460C-3B00-AE890F8EC414";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "skinCluster4GroupId";
	rename -uid "685C4B5E-4B8A-5426-214C-25A250E3F498";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster4";
	rename -uid "060D8E83-4E2D-13E9-A3B4-9A80C3C7E8EB";
	setAttr -s 2196 ".wl";
	setAttr ".wl[0:191].w"
		4 4 0.033776290104799017 7 0.90909470979488427 11 0.057110290974378586 
		16 1.8709125938112908e-05
		2 4 0.075628891587257385 7 0.92437110841274261
		1 7 1
		3 7 0.86338479240188037 11 0.13577014207839966 16 0.00084506551971999131
		2 4 0.030986065044999123 7 0.96901393495500099
		2 4 0.0015550021339467812 7 0.99844499786605323
		2 4 0.23044919967651367 7 0.76955080032348644
		2 4 0.32695591449737549 7 0.67304408550262451
		2 4 0.29745793342590332 7 0.70254206657409668
		1 7 1
		2 7 0.84260427951812733 11 0.15739572048187256
		2 7 0.93398061394691467 11 0.066019386053085327
		2 4 9.7996682688866191e-06 7 0.99999020033173125
		2 7 0.64545989036560059 11 0.35454010963439941
		2 7 0.96322103217244148 11 0.036778967827558517
		4 7 0.66769731150227407 10 0.060765359550714493 11 0.19237299228487023 
		15 0.079164336662141191
		2 7 0.95507323369383812 10 0.04492676630616188
		3 7 0.74035913676783649 11 0.25455778837203979 16 0.0050830748601237239
		3 7 0.59993863982996121 11 0.39787614345550537 16 0.0021852167145334543
		2 7 0.45568269491195679 11 0.54431730508804321
		3 7 0.47183920845229166 11 0.48751196265220642 16 0.040648828895501962
		3 7 0.4300822901140619 11 0.54878801107406616 16 0.021129698811871947
		3 7 0.2804891302353858 11 0.6204599142074585 16 0.099050955557155693
		3 7 0.26510512523680579 11 0.56138205528259277 16 0.1735128194806014
		4 7 0.53738309942335705 10 0.015229412354528904 11 0.39406426617187434 
		15 0.05332322205023983
		4 7 0.33022334500348927 11 0.66628122329711914 16 0.0034204793651955966 
		18 7.4952334196017156e-05
		2 7 0.42364394664764399 11 0.57635605335235596
		3 7 0.59468320153354925 11 0.3596004843711853 16 0.045716314095265401
		4 4 0.0097381618788570136 7 0.69524452318826635 11 0.24778240919113159 
		16 0.047234905741744999
		4 4 0.0029832968824109506 7 0.40975261377308264 11 0.34810870885848999 
		16 0.23915538048601648
		3 7 0.32368435407724355 11 0.47601595520973206 16 0.20029969071302439
		3 7 0.00089076556212118766 11 0.2331700474023819 16 0.7659391870354969
		3 7 0.0024347784988849306 11 0.062897473573684692 16 0.93466774792743035
		3 7 0.1750359707851781 11 0.33735334873199463 16 0.48761068048282719
		3 7 0.096434445890116571 11 0.40854871273040766 16 0.49501684137947566
		3 7 0.077192333340306257 11 0.568828284740448 16 0.35397938191924577
		3 7 0.00043446578962724844 11 0.34489151835441589 16 0.65467401585595686
		4 7 0.30844885291057589 11 0.66583216190338135 16 0.025703308116863399 
		18 1.5677069179384818e-05
		4 7 0.24299728470130008 11 0.6995614767074585 16 0.056429975475808483 
		18 0.001011263115432969
		3 7 0.0081378442875563173 11 0.54820537567138672 16 0.44365678004105696
		3 7 0.1627652268172155 11 0.61167281866073608 16 0.22556195452204841
		2 7 8.4466257786469679e-06 16 0.99999155337422141
		3 7 1.0879666931581022e-05 11 0.092746958136558533 16 0.90724216219650988
		2 7 7.295194675937039e-06 16 0.99999270480532398
		3 7 1.537597055918067e-05 11 0.056196436285972595 16 0.94378818774346818
		3 7 6.0726474657495181e-05 11 0.20308387279510495 16 0.79685540073023764
		3 7 7.6924392708717132e-05 11 0.20582515001296997 16 0.79409792559432124
		3 7 0.014441273502570077 11 0.53797805309295654 16 0.44758067340447338
		3 7 0.0045429983265270184 11 0.51718997955322266 16 0.4782670221202503
		4 0 0.00027624033404342543 1 0.025321526097029801 4 0.53784801026990026 
		7 0.43655422329902649
		4 0 0.016847939990340566 1 2.6529870101602481e-34 4 0.5440510792509925 
		7 0.43910098075866694
		4 0 0.10433899496154853 1 0.12845726311206818 4 0.68655108608694104 
		7 0.080652655839442242
		4 0 0.10112152248620988 1 0.18341098186012331 4 0.62425314742386684 
		7 0.091214348229799916
		3 0 0.70779703630896174 1 0.12697523359275853 4 0.16522773009827976
		4 0 0.31297967337903426 1 0.3969679176807403 4 0.29005240894022538 
		7 -5.4135204219829312e-32
		4 0 0.32576975629836163 1 0.44113242626190186 4 0.23278211939973248 
		7 0.00031569804000409986
		2 0 0.78937167778138928 1 0.21062832221861075
		2 0 0.89393622392191041 1 0.10606377607808956
		2 0 0.93087965885934465 1 0.069120341140655434
		2 0 0.92587096244096756 2 0.07412903755903244
		1 0 1
		2 0 0.80107279320259572 2 0.19892720679740436
		3 0 0.85006803274154652 2 0.14506506963145721 3 0.004866897626996161
		2 4 0.43585658073425299 7 0.56414341926574707
		3 4 0.076277604548492015 7 0.85056883096694946 16 0.073153564484558509
		3 4 0.0099983396043803515 7 0.62479066293456165 16 0.36521099746105806
		2 7 9.6226251662330895e-07 16 0.99999903773748333
		2 7 1.13398823102334e-06 16 0.99999886601176891
		2 7 3.5431707541399775e-06 16 0.99999645682924587
		2 7 2.6542286841722943e-06 16 0.99999734577131583
		4 7 2.3676178343928335e-08 15 3.0991192660583778e-05 16 0.99248208048804676 
		19 0.0074869046431142337
		2 7 4.4132570928034979e-07 16 0.99999955867429069
		2 7 4.0028399063064473e-07 16 0.99999959971600949
		4 7 2.1708898905422657e-08 15 2.4620600372508312e-05 16 0.99088535721372462 
		19 0.0090900004770040621
		3 15 2.9555124765021422e-06 16 0.69645018203356956 19 0.3035468624539539
		3 15 9.6906100939295137e-06 16 0.94265404129324748 19 0.057336268096658413
		3 15 5.8561377242031335e-06 16 0.93485785728675797 19 0.065136286575517871
		3 15 1.3455266667923843e-06 16 0.6646672449921126 19 0.3353314094812207
		4 15 1.3852494019436574e-07 16 0.23710517007875159 19 0.76289162244563458 
		27 3.0689506736373189e-06
		3 15 1.5855897395987933e-06 16 0.49052645264928479 19 0.50947196176097564
		3 15 6.5175592671845456e-07 16 0.49479078584009462 19 0.5052085624039786
		4 15 5.2678818535598381e-08 16 0.2294136689232168 19 0.77058425390339325 
		27 2.0244945711982482e-06
		4 15 2.7775772160045812e-07 16 0.23716109518767203 19 0.76283142848747276 
		27 7.1985671336379294e-06
		3 15 3.1448827630681713e-06 16 0.4696399435659831 19 0.53035691155125375
		4 0 0.080630713281414468 1 0.1589945028522684 4 0.66052395790091267 
		7 0.099850825965404524
		2 0 0.74209960627527138 1 0.25790039372472856
		4 0 0.21294688845567025 1 0.58043032884597778 4 0.2060550807427016 
		7 0.00056770195565038174
		2 0 0.86821778825835982 2 0.13178221174164018
		2 0 0.91954878548226171 2 0.080451214517738123
		2 0 0.72094299153088526 1 0.2790570084691148
		3 0 0.78520547087697723 1 0.21457949513408356 7 0.00021503398893920865
		2 0 0.85126090879379301 2 0.14873909120620701
		2 0 0.71968889523407498 1 0.28031110476592502
		4 0 0.19977443115953161 1 0.5155150294303894 4 0.28386482976126648 
		7 0.00084570964881251136
		4 0 0.25099324290541275 1 0.33941611714996062 4 0.37880566716194153 
		7 0.030784972782685063
		4 0 0.19615802866167231 1 0.46350261569023138 4 0.33919006402297797 
		7 0.0011492916251182987
		4 0 0.055770272319849018 1 0.10952280607411026 4 0.67171831849095887 
		7 0.16298860311508179
		4 0 0.039094070161743787 1 0.076146982610225677 4 0.75000072497610848 
		7 0.13475822225192199
		4 0 0.047481026529447939 1 0.1036253149248636 4 0.69578369083710079 
		7 0.15310996770858765
		3 4 0.37712985277175903 7 0.62243516453086467 16 0.00043498269737626328
		3 4 0.3780052661895752 7 0.59728746655508813 16 0.024707267255336663
		3 4 0.40233349800109863 7 0.5723259965379206 16 0.025340505460980749
		4 7 0.16403048005551615 11 0.7209591269493103 16 0.11131340781639296 
		18 0.0036969851787805904
		3 7 0.2218574583530426 11 0.58420296623002688 16 0.19393957541693055
		2 7 1.8062979506666909e-05 16 0.99998193702049332
		3 7 0.003831282593052297 11 0.033504705876111984 16 0.96266401153083569
		2 7 4.7815984326768423e-06 16 0.99999521840156735
		3 15 5.3752293234411911e-06 16 0.67026590780438577 19 0.32972871696629075
		4 7 9.5241894263113222e-08 15 2.6345678626637574e-05 16 0.90226200619723029 
		19 0.097711552882248837
		4 7 0.53126639127731323 10 0.27368832238289037 11 0.08334035372490349 
		15 0.11170493261489288
		4 7 0.58549004793167114 10 0.28406339398106073 11 0.023054167776244115 
		15 0.10739239031102396
		4 7 0.099225382320986974 10 0.39169982075691223 15 0.2626841009824043 
		18 0.24639069593969648
		4 7 0.096749294469139865 10 0.33002078533172607 15 0.2807128110639413 
		18 0.29251710913519274
		4 7 0.0016560148428976097 10 0.056539095938205719 15 0.17911435868320755 
		18 0.76269053053568914
		3 10 0.103483684360981 15 0.23613062512123664 18 0.6603856905177824
		2 15 0.00089713007844471437 18 0.99910286992155517
		2 15 0.015108171087038798 18 0.98489182891296112
		2 15 0.0052596826064758243 18 0.9947403173935242
		3 7 6.5080493643736423e-05 15 0.0067695247051575043 18 0.99316539480119836
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		3 7 6.6915314453970062e-08 15 4.0814830349379915e-06 18 0.99999585160165061
		4 7 0.0011777286812971908 10 0.011650480329990389 15 0.13853612959814185 
		18 0.84863566139057056
		3 7 0.00019167717023674824 15 0.011689263633196421 18 0.98811905919656684
		3 7 1.1699604918029185e-05 15 0.0007136145048120613 18 0.99927468589026991
		4 7 0.24213185906410217 10 0.39998184956970528 15 0.17022842025413948 
		18 0.18765787111205309
		5 7 0.5639616847038269 10 0.30711385986129519 12 4.5573914272360365e-23 
		15 0.11447874196010836 18 0.014445713474769542
		3 7 0.58320074227576124 10 0.24948512017726895 15 0.16731413754696975
		4 7 0.41048564732163778 10 0.08258134126663208 11 0.4788183583738691 
		18 0.028114653037861124
		4 7 0.44989297059577177 10 0.055511113256216049 11 0.45923566473900318 
		16 0.035360251409008989
		4 7 0.81374651193618763 10 0.12294879839763204 11 0.014192559422942742 
		15 0.04911213024323749
		4 7 0.29144710302352905 10 0.31594939917228648 15 0.20740233373660705 
		18 0.1852011640675775
		3 7 0.087807267904281616 15 0.13225035011316322 18 0.77994238198255517
		3 7 0.00013103606323646428 15 0.007520975275681888 18 0.99234798866108165
		2 7 0.91593378782272339 11 0.084066212177276611
		4 7 0.56942822850806118 11 0.37464308738708496 16 0.055913044964110099 
		18 1.5639140743782213e-05
		2 0 0.72463985626969563 2 0.27536014373030432
		2 0 0.40385882946363705 2 0.59614117053636295
		2 0 0.37187686434363743 2 0.62812313565636257
		2 0 0.5735067794688139 2 0.4264932205311861
		2 0 0.47239251275100957 2 0.52760748724899054
		2 0 0.58794881375631014 2 0.41205118624368986
		2 0 0.47906701196427787 2 0.52093298803572219
		3 0 0.5933869481086731 2 0.14196722199870973 3 0.2646458298926172
		3 0 0.66537570953369141 2 0.13521929128618709 3 0.19940499918012153
		2 0 0.2712098622338151 2 0.72879013776618484
		2 0 0.69583871840076639 2 0.30416128159923356
		2 0 0.8343743536908329 2 0.1656256463091671
		2 0 0.75112417237287488 2 0.2488758276271251
		2 0 0.84896318052143727 2 0.15103681947856273
		2 0 0.93102344870567333 2 0.068976551294326782
		4 0 0.94503706693649292 1 0.021680263401193223 2 0.018502757323320324 
		4 0.014779912338993541
		2 0 0.8866742184236297 2 0.1133257815763703
		2 0 0.98365252677792236 2 0.016347473222077621
		2 0 0.98148053391059586 2 0.018519466089404184
		1 0 1
		2 7 0.00016782595374410675 16 0.99983217404625579
		3 7 0.015922693970971128 11 0.10203706473112106 16 0.88204024129790781
		4 4 0.0019431679678754516 7 0.32436601399115578 11 0.028754392638802528 
		16 0.64493642540216634
		4 4 0.00014367696807461382 7 0.22755855670743275 11 0.23227168619632721 
		16 0.54002608012816544
		3 4 0.00010115306186197203 7 0.056850828351213405 16 0.94304801858692466
		2 7 3.8570544896270959e-05 16 0.9999614294551038
		2 7 5.0697290093614053e-05 16 0.99994930270990645
		2 7 0.0024830532266219671 16 0.99751694677337788
		1 18 1
		1 18 0.99999999999999989
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		3 7 1.7829875945818469e-06 15 0.00010235314226641844 18 0.99989586387013907
		3 7 5.4114243256480094e-06 15 0.00032897801796948973 18 0.99966561055770475
		1 18 1
		1 18 1
		3 7 -8.1203084947100332e-35 15 -4.0499203764354802e-33 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1;
	setAttr ".wl[192:420].w"
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		4 7 1.2824873584826069e-06 15 0.00012748446749463643 16 0.97637332611963956 
		19 0.023497906925507208
		4 7 5.7932926033469113e-06 15 0.00031731160258530671 16 0.94778898297223324 
		19 0.051887912132578096
		4 7 8.8014191286346759e-06 15 0.00027895360123382951 16 0.94758806708208876 
		19 0.052124177897548661
		4 7 3.2101180292610619e-07 15 4.2289127202006979e-05 16 0.85290200598321253 
		19 0.14705538387778258
		3 15 4.9821835843760666e-06 16 0.60556988051667537 19 0.39442513729974032
		4 7 4.6092965464083225e-07 15 4.0474044172637288e-05 16 0.84171211079027408 
		19 0.15824695423589852
		3 15 5.210141113184055e-06 16 0.62824823441192801 19 0.37174655544695873
		4 7 1.8079945356560575e-07 15 2.3463117129977703e-05 16 0.98953746117929453 
		19 0.01043889490412196
		4 7 1.1031326141902091e-08 15 5.2955409905544773e-06 16 0.90221190697155618 
		19 0.097782786456127133
		4 7 1.5974535583057154e-08 15 5.1466554168592152e-06 16 0.88705486218320062 
		19 0.11293997518684699
		4 7 3.2990215586210573e-07 15 2.3843305861915512e-05 16 0.98920969317031071 
		19 0.010766133621671475
		4 7 6.3092115393022097e-08 15 8.7905782836571496e-06 16 0.87760564102293748 
		19 0.12238550530666371
		4 7 1.1269799725804189e-06 15 4.271652415752234e-05 16 0.98193735971618468 
		19 0.018018796779685389
		4 7 1.4670549859857425e-07 15 1.823408292424619e-05 16 0.87207480774345791 
		19 0.12790681146811927
		3 15 3.9816779359058327e-06 16 0.5903037294864466 19 0.40969228883561742
		3 15 1.8827263653475673e-06 16 0.57507029890453498 19 0.42492781836909954
		4 15 3.6498124089562657e-08 16 0.20397217269878223 19 0.79602643233074011 
		27 1.358472353697816e-06
		3 15 5.3948497840770694e-07 16 0.491891998227384 19 0.50810746228763759
		3 15 7.3321407842532834e-07 16 0.47858927846912186 19 0.52140998831679974
		4 15 4.7418243588806301e-08 16 0.18950841978770541 19 0.81048960948184012 
		27 1.923312210754478e-06
		3 15 7.9212977978357147e-07 16 0.46069228686892466 19 0.53930692100129574
		4 15 5.6092948361971782e-08 16 0.1853659599143247 19 0.81463132345968226 
		27 2.6605330446442967e-06
		3 15 1.3377212571337654e-06 16 0.45229117042864458 19 0.54770749185009837
		4 15 9.4208480138834378e-08 16 0.17485763870443968 19 0.82513994385772449 
		27 2.3232293557645285e-06
		4 15 1.644598879202938e-07 16 0.18608474824056939 19 0.81391077710550308 
		27 4.3101940397121251e-06
		3 15 1.9981620952599748e-06 16 0.43981260335566208 19 0.56018539848224269
		3 15 2.7230933264715237e-06 16 0.44326328292805495 19 0.55673399397861856
		4 15 2.4200358863864385e-07 16 0.21052840029126887 19 0.78946402124762127 
		27 7.3364575212950067e-06
		2 7 1.1148543225366928e-06 16 0.99999888514567747
		2 7 4.3716115203604829e-06 16 0.99999562838847966
		2 7 5.3506051657081552e-05 16 0.99994649394834267
		2 7 0.00039501625127207849 16 0.99960498374872797
		2 7 0.00010049200008572857 16 0.99989950799991423
		3 7 0.050073593854904175 11 0.21558754855736423 16 0.73433885758773154
		3 7 0.28300060394303034 11 0.43689654705031677 16 0.28010284900665283
		3 7 0.17824167931443147 11 0.32392573356628418 16 0.4978325871192843
		2 4 0.0051251289610850194 7 0.99487487103891503
		3 4 0.058501697524782237 7 0.94140252886608844 16 9.5773609129249393e-05
		4 4 1.5933911929903779e-07 7 0.7558274760152125 11 0.18640768527984619 
		16 0.057764679365822032
		2 4 2.364434825804663e-05 7 0.99997635565174192
		2 7 2.6640808754979667e-06 16 0.99999733591912443
		2 7 0.0012487273205247405 16 0.99875127267947517
		2 7 0.02637283510754234 16 0.97362716489245771
		2 7 0.11073970437895886 16 0.88926029562104114
		2 7 6.3486205738267334e-06 16 0.9999936513794262
		2 7 0.0036097332476536441 16 0.99639026675234643
		3 4 2.8258529368922717e-05 7 0.084821785720868861 16 0.91514995574976221
		3 4 0.00056552499658625143 7 0.30337573291688735 16 0.69605874208652641
		3 4 0.056596891366475471 7 0.77329676133506675 16 0.17010634729845781
		3 7 0.52112342633681263 11 0.24488852918148041 16 0.23398804448170696
		3 7 0.19374986953115453 11 0.22437587380409241 16 0.58187425666475312
		3 7 0.32014666247209755 11 0.27321517467498779 16 0.40663816285291465
		3 4 0.011533563906654814 7 0.61605702641179849 16 0.37240940968154662
		4 4 0.00039480647587070345 7 0.2911548928941517 11 0.21610499918460849 
		16 0.49234530144536914
		3 4 0.055281703382316083 7 0.70732796729494429 16 0.23739032932273971
		3 4 0.0056599159054906301 7 0.54829605481954313 16 0.44604402927496617
		3 4 0.24109130651121319 7 0.71119446285666577 16 0.047714230632121046
		3 4 0.21775361931497669 7 0.7732784383671657 16 0.0089679423178576374
		2 4 0.15280838732124807 7 0.84719161267875187
		3 4 0.11837960370282928 7 0.70004802942276001 16 0.18157236687441072
		3 4 0.0089846452623794613 7 0.59041198166284603 16 0.4006033730747745
		3 4 0.00061576002388850437 7 0.33255115902721488 16 0.66683308094889659
		2 4 0.49895604012960754 7 0.50104395987039241
		3 4 0.49920578429626322 7 0.5007675419717379 16 2.6673731998951969e-05
		3 4 0.45361358556345083 7 0.5462186336517334 16 0.00016778078481574917
		4 0 0.030118878953210339 1 0.082429103553295135 4 0.76031980539497102 
		7 0.1271322120985236
		4 0 0.0010445205924525926 1 0.112126424908638 4 0.77322403045870236 
		7 0.11360502404020702
		4 0 0.00017134839743234134 1 0.044736351817846298 4 0.88743222991194637 
		7 0.067660069872774897
		4 0 7.3900439334502149e-05 1 -7.2474081984236132e-34 4 0.95303989361772268 
		7 0.0468862059429428
		3 0 1.116682731362187e-07 4 0.50067456368474583 7 0.49932532464698098
		3 0 0.74174907603949003 1 0.21892459889252239 4 0.039326325067987521
		4 0 0.22060698198294257 1 0.33130251198352584 4 0.43025064468383795 
		7 0.017839861349693731
		4 0 0.21974459290504456 1 0.36444059636019488 4 0.41058187687709602 
		7 0.0052329338576645699
		4 0 0.74574655294418335 1 0.22253765489384417 4 0.031675178724203237 
		7 4.061343776928294e-05
		1 0 1
		2 0 0.97179034721301827 2 0.02820965278698179
		2 0 0.99527572221795269 2 0.0047242777820473928
		3 0 0.86605034630851629 1 0.084438680072280226 4 0.04951097361920339
		1 0 1
		1 0 1
		4 0 0.21382088959217072 1 0.34875003756232287 4 0.4366922598275586 
		7 0.00073681301794776188
		4 0 0.63434964418411255 1 0.27963575383322903 4 0.086009481157315604 
		7 5.1208253428129034e-06
		2 0 0.7623139932110683 2 0.23768600678893173
		2 0 0.84555938970523281 2 0.15444061029476719
		2 0 0.68908977004450145 2 0.31091022995549861
		2 0 0.6276282320274128 2 0.37237176797258725
		2 0 0.27785141424680798 2 0.72214858575319196
		2 0 0.16255723096318758 2 0.83744276903681236
		3 0 0.049030210822820663 2 0.94867414944235628 5 0.0022956397348229992
		2 0 0.16513682145390821 2 0.83486317854609182
		2 0 0.1473738567076249 2 0.85262614329237507
		3 0 0.054902009665966034 2 0.93886309337393892 5 0.0062348969600952474
		3 2 0.99812444499408337 5 0.0012012469530145546 6 0.00067430805290209675
		1 2 1
		2 0 0.10171052340541832 2 0.8982894765945818
		2 0 0.084114630082324685 2 0.91588536991767533
		3 0 0.019509289413690567 2 0.9798240222307486 5 0.00066668835556074385
		3 0 0.017280319705605507 2 0.98219526214570974 5 0.00052441814868473284
		1 2 1
		2 2 0.99778748194814948 5 0.0022125180518505366
		2 0 0.17670846121069855 2 0.82329153878930139
		2 0 0.078476487901744524 2 0.92152351209825556
		3 0 0.035247728228569031 2 0.96309417284176124 5 0.0016580989296696713
		2 2 0.99217016015810688 5 0.0078298398418931419
		2 0 0.18988277649969673 2 0.81011722350030324
		2 0 0.11334245717004858 2 0.88665754282995157
		3 0 0.046005744487047195 2 0.94986669362768672 5 0.0041275618852660732
		1 2 1
		2 0 0.16820984436781747 2 0.8317901556321825
		2 0 0.231154008397703 2 0.76884599160229716
		2 0 0.086390108625979942 2 0.91360989137402004
		2 0 0.12579626301218791 2 0.87420373698781195
		3 0 0.025585412979125977 2 0.97146697028670748 5 0.0029476167341665081
		3 0 0.035789117217063904 2 0.96271023305379211 5 0.0015006497291438583
		2 2 0.96976067647159669 5 0.03023932352840333
		2 2 0.98632990104810037 5 0.01367009895189971
		2 0 0.37183898337449794 2 0.62816101662550206
		2 0 0.58477213453959587 2 0.41522786546040413
		2 0 0.26623469231432262 2 0.73376530768567749
		2 0 0.13928084727107509 2 0.86071915272892496
		3 0 0.035789117217063904 2 0.96164338566663299 5 0.0025674971163031301
		2 2 0.98703714993018798 5 0.012962850069811876
		2 0 0.44015968407657274 2 0.55984031592342731
		2 0 0.40147411342237083 2 0.59852588657762917
		2 0 0.42368531610510674 2 0.57631468389489338
		2 0 0.28635515571105064 2 0.71364484428894936
		2 0 0.28104818962276579 2 0.71895181037723421
		2 2 0.75648639805400197 5 0.24351360194599816
		2 2 0.72814291715621948 5 0.27185708284378052
		2 2 0.33285737037658691 5 0.66714262962341309
		2 2 0.34142571687698364 5 0.65857428312301636
		2 2 0.54268643633353386 5 0.45731356366646614
		2 2 0.54089081287384033 5 0.45910918712615967
		2 2 0.079292112044351326 5 0.92070788795564884
		2 2 0.034207064818045155 5 0.96579293518195486
		2 2 0.18838495016098025 5 0.81161504983901989
		2 2 0.16602140665054321 5 0.83397859334945679
		1 5 1
		1 5 1
		2 2 0.0010150394886298216 5 0.9989849605113702
		2 2 0.0046321231873770715 5 0.99536787681262284
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		2 5 0.79824366541979297 8 0.20175633458020709
		2 5 0.82769642526202558 8 0.17230357473797439
		1 5 1
		1 5 1
		2 5 0.13139522075653076 8 0.86860477924346924
		2 5 0.17498564720153809 8 0.82501435279846191
		2 2 0.80655188858509053 5 0.19344811141490936
		2 2 0.1572624146938324 5 0.8427375853061676
		2 2 0.52936598658561707 5 0.47063401341438293
		2 2 0.89923155307769775 5 0.10076844692230225
		2 2 0.66852432489395142 5 0.33147567510604858
		2 2 0.82006752490997314 5 0.17993247509002686
		2 2 0.46412414312362671 5 0.53587585687637329
		2 2 0.97439455986022949 5 0.025605440139770508
		2 2 0.16913050413131714 5 0.83086949586868286
		2 2 0.24194777011871335 5 0.75805222988128651
		2 2 0.90985861420631409 5 0.090141385793685913
		2 2 0.87548506259918213 5 0.12451493740081788
		2 2 0.35001769661903381 5 0.64998230338096619
		2 2 0.14037507772445679 5 0.85962492227554321
		2 2 0.10614702799031386 5 0.89385297200968605
		2 2 0.2037354111671448 5 0.79626458883285522
		2 2 0.046854615211486816 5 0.95314538478851307
		2 2 0.87273494289754883 5 0.12726505710245131
		2 2 0.77605551481246948 5 0.22394448518753052
		2 2 0.67186617851257324 5 0.32813382148742676
		2 2 0.35325210585604838 5 0.64674789414395162
		2 2 0.93106162548065186 5 0.068938374519348145
		2 2 0.81605571508407604 5 0.18394428491592407
		2 2 0.60641759634017944 5 0.39358240365982056
		2 2 0.35205990076065063 5 0.64794009923934937
		2 2 0.91780579090118397 5 0.082194209098815918
		2 2 0.93107685446739197 5 0.068923145532608032
		2 2 0.82462704181671131 5 0.17537295818328855
		2 2 0.58016493916511536 5 0.41983506083488464
		2 2 0.32987850904464722 5 0.67012149095535278
		2 2 0.013813593860563404 5 0.98618640613943664
		1 5 1
		2 2 0.020615756511688232 5 0.97938424348831188
		1 5 1
		2 2 0.038470268249511719 5 0.96152973175048828
		1 5 1
		1 5 1
		1 5 1;
	setAttr ".wl[421:755].w"
		1 5 1
		2 2 0.031030893325805664 5 0.96896910667419445
		1 5 1
		1 5 1
		2 2 0.01252390842413671 5 0.98747609157586336
		2 2 0.00053577543123735718 5 0.9994642245687626
		2 2 0.0074317314189662172 5 0.99256826858103397
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		2 5 0.96309167466580836 8 0.03690832533419159
		2 5 0.90395835041999828 8 0.096041649580001817
		2 2 0.027219743341999548 5 0.97278025665800028
		1 5 1
		2 2 0.11939334869384766 5 0.88060665130615234
		2 2 0.11580991364434572 5 0.88419008635565444
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		2 5 0.91321036706039516 8 0.086789632939604691
		1 5 1
		2 5 0.77499650495123285 8 0.22500349504876713
		1 5 1
		2 5 0.7385593056678772 8 0.2614406943321228
		1 5 1
		2 5 0.71756082773208618 8 0.28243917226791382
		1 5 1
		2 5 0.80257965624332428 8 0.19742034375667572
		2 5 0.083152450621128082 8 0.91684754937887203
		2 5 0.097590826451778412 8 0.90240917354822159
		2 5 0.028897760435938835 8 0.97110223956406116
		2 5 0.034888606518507004 8 0.965111393481493
		2 5 0.039063375443220139 8 0.96093662455677986
		2 5 0.027869775891304016 8 0.97213022410869598
		2 5 0.091947421431541443 8 0.90805257856845856
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 8 0.90116111189126979 13 0.098838888108730316
		1 8 1
		1 8 1
		2 8 0.84049315750598907 13 0.15950684249401093
		2 8 0.1191357746720314 13 0.8808642253279686
		2 8 0.18762634694576263 13 0.81237365305423748
		2 8 0.83399941027164459 13 0.16600058972835541
		2 8 0.88547482341527939 13 0.1145251765847206
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 8 1
		1 8 1
		1 8 1
		2 8 0.071730524301528931 13 0.92826947569847107
		2 8 0.125626340508461 13 0.874373659491539
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 8 0.05802406370639801 13 0.94197593629360188
		2 8 0.77277716994285583 13 0.22722283005714417
		2 8 0.14056746661663055 13 0.85943253338336945
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		2 24 0.95183703675866127 35 0.04816296324133873
		2 24 0.96287834644317627 35 0.03712165355682373
		2 24 0.5 35 0.5
		2 24 0.5 35 0.5
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		2 35 0.5 45 0.5
		2 35 0.5 45 0.5
		1 45 1
		1 45 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		2 24 0.5 35 0.5
		1 35 1
		1 35 1
		2 35 0.5 45 0.5
		1 35 1
		1 45 1
		1 35 1
		2 24 0.5 35 0.5
		2 24 0.50856655836105347 35 0.49143344163894653
		2 24 0.25356942415237427 35 0.74643057584762573
		2 24 0.5 35 0.5
		2 24 0.26832282543182373 35 0.73167717456817627
		1 35 1
		2 35 0.5 45 0.5
		1 35 1
		1 45 1
		1 35 1
		2 35 0.5 45 0.5
		1 35 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 24 1
		2 21 0.10470210015773772 24 0.89529789984226227
		2 21 0.10241373628377914 24 0.89758626371622074
		2 21 0.15971828997135162 24 0.84028171002864827
		2 21 0.13927452266216278 24 0.86072547733783733
		1 24 1
		2 21 0.43489435315132147 24 0.56510564684867859
		2 21 0.44726821780204779 24 0.55273178219795227
		3 21 0.30430226027965529 23 0.39139547944068914 24 0.30430226027965568
		3 21 0.41842754930257775 23 0.16314490139484406 24 0.41842754930257814
		2 21 0.5 24 0.5
		2 21 0.5 24 0.5
		2 21 0.5 24 0.5
		1 21 1
		1 21 1
		1 35 1
		2 35 0.5 45 0.5
		1 35 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		2 21 0.5 24 0.5
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		3 21 0.25 24 0.25 25 0.5
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		2 24 0.5 35 0.5
		1 35 1
		1 35 1
		2 35 0.5 45 0.5
		1 35 1
		1 45 1
		2 24 0.55396908521652222 35 0.44603091478347778
		1 35 1
		1 35 1
		2 35 0.5 45 0.5
		1 35 1
		1 45 1
		1 45 1
		1 24 1
		1 24 1
		3 21 0.25 24 0.25 25 0.5
		3 21 0.41219308972358704 24 0.19593563675880429 25 0.3918712735176087
		3 21 0.25 24 0.25 25 0.5
		1 45 1
		1 45 1
		1 45 1
		2 21 0.044736351817846298 23 0.95526364818215359
		2 21 0.020369317382574081 23 0.97963068261742592
		1 23 1
		1 23 1
		2 21 0.5 23 0.5
		2 21 0.5 23 0.5
		2 23 0.79172529280185699 34 0.20827470719814301
		2 23 0.74681130051612843 34 0.25318869948387146
		2 23 0.5 34 0.5
		2 23 0.5 34 0.5
		1 34 1
		1 34 1
		1 34 1
		1 34 1
		1 34 1
		1 34 1
		2 34 0.5 44 0.5
		2 34 0.5 44 0.5
		1 44 1
		1 44 1
		2 21 0.13078244030475616 23 0.86921755969524384
		2 21 0.5 23 0.5
		1 23 1
		2 23 0.76461076736450195 34 0.23538923263549805
		2 23 0.5 34 0.5
		2 23 0.5 34 0.5
		1 34 1
		2 34 0.5 44 0.5
		1 34 1
		1 44 1
		2 23 0.5 34 0.5
		2 23 0.6363031268119812 34 0.3636968731880188
		2 23 0.59956216812133789 34 0.40043783187866205
		2 23 0.20939867198467255 34 0.79060132801532756
		2 23 0.64608573913574219 34 0.35391426086425781
		2 23 0.27421116828918457 34 0.72578883171081532
		1 34 1
		2 34 0.5 44 0.5
		1 34 1
		1 44 1
		1 34 1
		2 34 0.5 44 0.5
		1 34 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		2 21 0.11022275686264038 23 0.88977724313735973
		2 21 0.14201408624649048 23 0.85798591375350941
		2 21 0.12031221389770508 23 0.87968778610229492
		2 21 0.19731563329696655 23 0.80268436670303345
		2 21 0.1391335129737854 23 0.8608664870262146
		2 21 0.25709116458892822 23 0.74290883541107189
		2 21 0.48005020618438721 23 0.51994979381561279
		2 21 0.53238293528556824 23 0.46761706471443176
		2 21 0.82524269819259644 23 0.17475730180740356
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 34 1
		2 34 0.5 44 0.5
		1 34 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		2 21 0.81227704882621765 27 0.18772295117378235
		2 21 0.5 23 0.5
		1 23 1
		1 23 1
		2 23 0.75737673044204701 34 0.24262326955795288
		2 23 0.5 34 0.5
		2 23 0.5 34 0.5
		1 34 1
		2 34 0.5 44 0.5
		1 34 1
		1 44 1
		2 23 0.5 34 0.5
		2 23 0.5 34 0.5
		1 34 1
		2 34 0.5 44 0.5
		1 34 1
		1 44 1
		1 44 1
		1 23 1
		2 21 0.5 23 0.5
		1 44 1
		1 44 1
		1 44 1
		1 21 1
		2 21 0.95716732367873181 23 0.042832676321268082
		2 21 0.96840862184762955 23 0.031591378152370453
		2 21 0.80357879400253296 27 0.19642120599746704
		2 21 0.81648576259613037 27 0.18351423740386963
		2 21 0.60089480876922607 27 0.39910519123077393
		2 21 0.5 27 0.5
		2 21 0.59556448459625244 27 0.4044355154037475
		2 21 0.5 27 0.5
		1 21 1
		1 21 1
		2 21 0.5 27 0.5
		2 21 0.5 27 0.5
		1 21 1
		2 19 0.27218208910908626 21 0.72781791089091374
		2 19 0.44445978924644874 21 0.55554021075355131
		2 19 0.99406738676680795 21 0.005932613233191956
		2 19 0.99316358667568516 21 0.0068364133243148323
		2 19 0.9672750489853742 21 0.032724951014625761
		2 19 0.96900548688019217 21 0.030994513119807745
		2 19 0.99999872182108163 27 1.2781789185222965e-06
		2 19 0.99999816720977253 27 1.8327902274984709e-06
		2 19 0.96005767036385092 21 0.039942329636149174
		2 19 0.99143059228856956 21 0.0085694077114304226
		3 19 0.95365443391931259 21 0.046329122752898105 37 1.644332778893227e-05
		2 19 0.9912212761621858 21 0.0087787238378141449
		2 19 0.99999897426014395 27 1.0257398560250425e-06
		2 19 0.99999938246172415 27 6.1753827582736278e-07
		3 16 0.0012429660203520923 19 0.99873246353504208 27 2.4570444605770826e-05
		3 16 0.0015064954939003569 19 0.99845692218193838 27 3.658232416125722e-05
		3 16 0.034781007194737881 19 0.96520850202504427 27 1.049078021781024e-05
		3 16 0.039445864384794187 19 0.96053290427916282 27 2.123133604308161e-05
		3 16 0.0010986790475557501 19 0.99888175890008379 27 1.9562052360408476e-05
		3 16 0.032127715776165362 19 0.96786478244731855 27 7.5017765160971782e-06
		3 16 0.00078089402517914205 19 0.99920702500218539 27 1.2080972635585871e-05
		3 16 0.025455587897618981 19 0.9745397009516592 27 4.7111507217937768e-06
		3 16 0.0013536006971935624 19 0.9986072819466022 27 3.9117356204225063e-05
		3 16 0.035993160103974443 19 0.96398476985530668 27 2.2070040718815944e-05
		2 19 0.99999816235351968 27 1.837646480332956e-06
		2 19 0.99458404146623758 21 0.0054159585337623314
		1 19 0.96615398469276803;
	setAttr ".wl[755:1077].w"
		1 21 0.033846015307232073
		1 21 1
		2 19 0.22980221453062483 21 0.77019778546937523
		2 21 0.5 27 0.5
		1 21 1
		3 19 0.52768391342174248 21 0.47231598517069678 37 1.0140756062763548e-07
		1 21 1
		3 19 0.51825911214079579 21 0.48171951893241743 37 2.1368926786718265e-05
		1 21 1
		2 21 0.97810774296522141 27 0.021892257034778595
		1 21 1
		1 21 1
		2 21 0.5 27 0.5
		2 21 0.5 27 0.5
		2 19 0.80575378533712416 21 0.19424621466287609
		2 19 0.76849404840426117 21 0.23150595159573889
		2 19 0.77336165318592076 21 0.22663834681407904
		3 19 0.74154225806018226 21 0.25843296096099166 37 2.4780978826168139e-05
		2 19 0.71208606278604825 21 0.28791393721395181
		2 21 0.5 27 0.5
		1 21 1
		2 21 0.95221776887774467 23 0.047782231122255325
		2 21 0.8541785329580307 24 0.1458214670419693
		2 21 0.88178181648254395 24 0.11821818351745604
		1 21 1
		2 21 0.8882543072104454 25 0.1117456927895546
		2 21 0.50742429494857788 25 0.49257570505142206
		1 21 1
		1 21 1
		3 19 0.13972034667990041 21 0.77397881965861393 27 0.086300833661485638
		2 21 0.020940419286489487 27 0.97905958071351051
		1 27 1
		2 27 0.5 38 0.5
		2 27 0.5 38 0.5
		2 27 0.1342090517282486 38 0.8657909482717514
		2 27 0.093660786747932434 38 0.90633921325206757
		2 27 0.083952046930789948 38 0.91604795306921005
		2 27 0.081096537411212921 38 0.91890346258878708
		2 38 0.5 48 0.5
		2 38 0.5 48 0.5
		1 38 1
		1 38 1
		1 48 1
		1 48 1
		2 27 0.5 38 0.5
		1 27 1
		2 27 0.087378658354282379 38 0.91262134164571762
		2 27 0.042071204632520669 38 0.95792879536747932
		1 38 1
		1 48 1
		2 38 0.5 48 0.5
		2 27 0.091757111251354218 38 0.90824288874864578
		2 27 0.89301349222660065 38 0.10698650777339937
		2 27 0.87835520505905151 38 0.12164479494094849
		2 27 0.13363794982433319 38 0.86636205017566692
		2 27 0.73808139562606812 38 0.26191860437393188
		2 27 0.20102801918983459 38 0.79897198081016541
		1 38 1
		1 48 1
		2 38 0.5 48 0.5
		2 38 0.92537595331668843 48 0.074624046683311462
		1 48 1
		2 38 0.52075004577636719 48 0.47924995422363281
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		4 21 0.000574673044464511 27 0.0012821696112051931 38 0.92504205403851381 
		48 0.07310110330581665
		1 48 1
		2 38 0.54921019077301025 48 0.45078980922698975
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		2 27 0.5 38 0.5
		2 21 0.27596604824066162 27 0.72403395175933838
		2 27 0.135541632771492 38 0.864458367228508
		2 27 0.046830393373966217 38 0.95316960662603378
		1 38 1
		1 48 1
		2 38 0.5 48 0.5
		3 21 0.157053142786026 27 0.58715823561361535 38 0.25578862160035865
		2 27 0.18294312059879303 38 0.81705687940120708
		1 38 1
		1 48 1
		2 38 0.5 48 0.5
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 48 1
		1 21 1
		3 19 0.14804766233178299 21 0.75272412872620142 27 0.099228208942015367
		2 19 0.50570220321191961 21 0.49429779678808033
		2 19 0.49986960941906738 21 0.50013039058093278
		2 19 0.86998823233840827 21 0.13001176766159153
		3 19 0.88464665773115747 21 0.11535224557061236 37 1.0966982299948275e-06
		1 21 1
		3 19 0.83862485707809087 21 0.161340025355794 37 3.5117566115203045e-05
		3 19 0.6755465688425335 21 0.32440055042838511 37 5.2880729081290473e-05
		1 21 1
		4 19 0.34924145523161432 21 0.64113502395685251 27 0.0094115951299792704 
		37 0.00021192568155394703
		1 21 1
		4 19 0.34597164997183516 21 0.65087430659935031 27 0.0028168463851282154 
		37 0.00033719704368633311
		1 21 1
		1 21 1
		1 21 1
		2 21 0.93889011070132256 25 0.061109889298677438
		2 21 0.88369788974523555 26 0.11630211025476456
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		2 19 0.99842358622303451 21 0.0015764137769654753
		2 19 0.98981847091606612 21 0.010181529083933967
		2 19 0.99071258215370095 21 0.0092874178462991168
		2 19 0.99875033482756037 21 0.0012496651724398398
		3 19 0.97682198783082108 21 0.02317546883747084 37 2.5433317080961527e-06
		3 19 0.9960888255801198 21 0.0039097079155332093 37 1.4665043470576506e-06
		2 19 0.99999934174020255 27 6.5825979745935536e-07
		3 16 0.00095516326274679337 19 0.99902737805966446 27 1.7458677588669213e-05
		3 16 0.028782633877014057 19 0.97120623165772724 27 1.1134465258776045e-05
		2 19 0.99999977919474603 27 2.2080525380902744e-07
		3 16 0.00060049929018752136 19 0.99939327733218741 27 6.2233776251897786e-06
		3 16 0.02280691296581171 19 0.97718818187512835 27 4.9051590600494127e-06
		2 19 0.99999966869453893 27 3.3130546116591948e-07
		3 16 0.00077770999671937741 19 0.99921408473844453 27 8.2052648361058943e-06
		3 16 0.025323131505102715 19 0.97467087117611517 27 5.997318781801668e-06
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		2 25 0.5 36 0.5
		2 25 0.5 36 0.5
		2 25 0.5 36 0.5
		2 25 0.5 36 0.5
		1 36 1
		1 36 1
		1 36 1
		1 36 1
		1 36 1
		1 36 1
		2 36 0.5 46 0.5
		2 36 0.5 46 0.5
		1 46 1
		1 46 1
		1 25 1
		1 25 1
		1 25 1
		2 25 0.5 36 0.5
		2 25 0.5 36 0.5
		1 36 1
		1 36 1
		2 36 0.5 46 0.5
		1 36 1
		1 46 1
		1 36 1
		2 25 0.5 36 0.5
		2 25 0.5 36 0.5
		2 25 0.042261570692062378 36 0.95773842930793762
		2 25 0.5 36 0.5
		2 25 0.038263857364654541 36 0.96173614263534546
		1 36 1
		2 36 0.5 46 0.5
		1 36 1
		1 46 1
		1 36 1
		2 36 0.5 46 0.5
		1 36 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 25 1
		2 21 0.16466784477233887 25 0.83533215522766113
		2 21 0.1084096133708954 25 0.89159038662910461
		2 21 0.23129644989967343 25 0.76870355010032654
		2 21 0.19358649849891665 25 0.80641350150108337
		1 25 1
		2 21 0.59023416042327881 25 0.40976583957672119
		2 21 0.5 25 0.5
		2 21 0.5 25 0.5
		1 21 1
		1 21 1
		1 36 1
		2 36 0.5 46 0.5
		1 36 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 21 1
		3 21 0.25 25 0.25 26 0.5
		1 25 1
		1 25 1
		1 25 1
		2 25 0.5 36 0.5
		2 25 0.5 36 0.5
		1 36 1
		1 36 1
		2 36 0.5 46 0.5
		1 36 1
		1 46 1
		2 25 0.5 36 0.5
		1 36 1
		1 36 1
		2 36 0.5 46 0.5
		1 36 1
		1 46 1
		1 46 1
		1 25 1
		1 25 1
		2 21 0.5 25 0.5
		2 21 0.5 25 0.5
		2 21 0.5 25 0.5
		1 46 1
		1 46 1
		1 46 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		2 21 0.90824288874864578 25 0.091757111251354218
		2 21 0.91338280588388443 26 0.08661719411611557
		2 21 0.5 26 0.5
		2 21 0.5 26 0.5
		3 19 0.43938319318531777 21 0.56050731248182628 37 0.00010949433285598974
		3 19 0.75564183296808318 21 0.24427257664782295 37 8.5590384093901838e-05
		3 19 0.95164431324196053 21 0.048314074442079934 37 4.1612315959788803e-05
		2 19 0.99999954663095758 27 4.5336904234500198e-07
		3 19 0.99099760367036316 21 0.0089833562716073092 37 1.9040058029429221e-05
		3 16 0.00071441627819153258 19 0.99927650929109679 27 9.0744307116596396e-06
		3 16 0.02369787218230027 19 0.97629728613964284 27 4.8416780569126854e-06
		2 21 0.5 26 0.5
		2 21 0.5 26 0.5
		1 26 1
		1 26 1
		2 26 0.5 37 0.5
		2 26 0.5 37 0.5
		2 26 0.5 37 0.5
		2 26 0.5 37 0.5
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		2 37 0.5 47 0.5
		2 37 0.5 47 0.5
		1 47 1
		1 47 1
		1 26 1
		2 26 0.5 37 0.5
		2 26 0.5 37 0.5
		1 37 1
		1 37 1
		2 37 0.5 47 0.5
		1 37 1
		1 47 1
		1 37 1
		2 26 0.99260052200406801 37 0.0073994779959321022
		2 26 0.91205023974180222 37 0.087949760258197798
		2 26 0.045878555625677109 37 0.95412144437432289
		2 26 0.864800825715065 37 0.135199174284935
		2 26 0.096897035837173462 37 0.90310296416282654
		1 37 1
		2 37 0.5 47 0.5
		1 37 1
		1 47 1
		1 37 1
		2 37 0.5 47 0.5
		1 37 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		2 21 0.5 26 0.5
		2 21 0.96402055025100708 26 0.03597944974899292
		2 21 0.95659622177481651 26 0.043403778225183487
		1 21 1
		1 21 1
		1 37 1
		2 37 0.5 47 0.5
		1 37 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 21 1
		1 21 1
		2 21 0.5 26 0.5
		1 26 1
		2 26 0.5 37 0.5
		2 26 0.5 37 0.5
		1 37 1
		1 37 1
		2 37 0.5 47 0.5
		1 37 1;
	setAttr ".wl[1078:1269].w"
		1 47 1
		2 26 0.90500664710998524 37 0.094993352890014662
		1 37 1
		1 37 1
		2 37 0.5 47 0.5
		1 37 1
		1 47 1
		1 47 1
		2 21 0.5 26 0.5
		1 21 1
		1 47 1
		1 47 1
		1 47 1
		1 21 1
		1 21 1
		3 19 0.31962854772725813 21 0.67999055488879512 37 0.00038089738394677297
		3 19 0.61009817022619084 21 0.38981647638666361 37 8.5353387145443153e-05
		4 0 0.20448552072048187 1 0.35544812250497687 4 0.43958611720956797 
		7 0.00048023956497335242
		3 0 0.65124655422770583 1 0.23187056891174856 4 0.11688287686054565
		2 8 0.72983023524284363 13 0.27016976475715637
		2 7 1.551121703291397e-05 16 0.99998448878296708
		2 7 0.0038977152702882999 16 0.99610228472971163
		3 4 4.0792140853144881e-05 7 0.090605317041792352 16 0.90935389081735452
		4 7 2.6735713616350857e-06 15 8.6280600243145939e-05 16 0.97729314153687852 
		19 0.022617904291516472
		4 7 0.91068464517593373 10 0.07408704664829513 15 0.014769028050311503 
		18 0.00045928012545950981
		2 7 1 18 1.4054735246393032e-30
		2 4 0.0040507842509638296 7 0.99594921574903617
		2 7 0.99998714972145308 18 1.2850278546838621e-05
		2 4 0.14116870691262243 7 0.8588312930873776
		2 0 0.85828807505559557 3 0.14171192494440443
		3 0 0.55748530602811219 2 0.044168299671426797 3 0.39834639430046054
		4 7 0.13038354932836793 10 0.38933935761451721 15 0.24295783651136704 
		18 0.23731925654574779
		3 10 0.11513415724039078 15 0.25544980041420617 18 0.62941604234540305
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		3 7 0.084052048623561859 15 0.15112894531643525 18 0.76481900606000286
		5 7 0.2921372652053833 10 0.19646118238564331 12 1.4837688304689097e-32 
		15 0.28824609250372057 18 0.22315545990525285
		3 7 0.00015015739913901233 15 0.0075023743735641146 18 0.99234746822729691
		1 18 1
		3 15 1.7146241121462452e-06 16 0.59575673684913855 19 0.40424154852674937
		3 15 2.033800846921564e-06 16 0.56130282200391934 19 0.43869514419523387
		2 2 0.056138172544997415 5 0.94386182745500258
		2 2 0.1094457507133484 5 0.89055424928665172
		4 4 0.033776290104799017 7 0.90909470979488427 12 0.057110290974378586 
		17 1.8709125938112908e-05
		3 7 0.86338479240188037 12 0.13577014207839966 17 0.00084506551971999131
		1 7 1
		2 4 0.075628891587257385 7 0.92437110841274261
		2 4 0.32695591449737549 7 0.67304408550262451
		2 4 0.23044919967651367 7 0.76955080032348644
		2 7 0.93398061394691467 12 0.066019386053085327
		2 7 0.84260427951812733 12 0.15739572048187256
		2 7 0.64545989036560059 12 0.35454010963439941
		4 7 0.66769731150227407 10 0.060765359550714493 12 0.19237299228487023 
		15 0.079164336662141191
		3 7 0.74035913676783649 12 0.25455778837203979 17 0.0050830748601237239
		3 7 0.59993863982996121 12 0.39787614345550537 17 0.0021852167145334543
		2 7 0.45568269491195679 12 0.54431730508804321
		3 7 0.47183920845229166 12 0.48751196265220642 17 0.040648828895501962
		3 7 0.4300822901140619 12 0.54878801107406616 17 0.021129698811871947
		3 7 0.2804891302353858 12 0.6204599142074585 17 0.099050955557155693
		3 7 0.26510512523680579 12 0.56138205528259277 17 0.1735128194806014
		4 7 0.53738309942335705 10 0.015229412354528904 12 0.39406426617187434 
		15 0.05332322205023983
		4 7 0.33022334500348927 12 0.66628122329711914 17 0.0034204793651955966 
		18 7.4952334196017156e-05
		2 7 0.42364394664764399 12 0.57635605335235596
		4 4 0.0097381618788570136 7 0.69524452318826635 12 0.24778240919113159 
		17 0.047234905741744999
		3 7 0.59468320153354925 12 0.3596004843711853 17 0.045716314095265401
		4 4 0.0029832968824109506 7 0.40975261377308264 12 0.34810870885848999 
		17 0.23915538048601648
		3 7 0.32368435407724355 12 0.47601595520973206 17 0.20029969071302439
		3 7 0.00089076556212118766 12 0.2331700474023819 17 0.7659391870354969
		3 7 0.096434445890116571 12 0.40854871273040766 17 0.49501684137947566
		3 7 0.1750359707851781 12 0.33735334873199463 17 0.48761068048282719
		3 7 0.0024347784988849306 12 0.062897473573684692 17 0.93466774792743035
		3 7 0.00043446578962724844 12 0.34489151835441589 17 0.65467401585595686
		3 7 0.077192333340306257 12 0.568828284740448 17 0.35397938191924577
		4 7 0.30844885291057589 12 0.66583216190338135 17 0.025703308116863399 
		18 1.5677069179384818e-05
		4 7 0.24299728470130008 12 0.6995614767074585 17 0.056429975475808483 
		18 0.001011263115432969
		3 7 0.1627652268172155 12 0.61167281866073608 17 0.22556195452204841
		3 7 0.0081378442875563173 12 0.54820537567138672 17 0.44365678004105696
		2 7 8.4466257786469679e-06 17 0.99999155337422141
		3 7 1.0879666931581022e-05 12 0.092746958136558533 17 0.90724216219650988
		2 7 7.295194675937039e-06 17 0.99999270480532398
		3 7 1.537597055918067e-05 12 0.056196436285972595 17 0.94378818774346818
		3 7 6.0726474657495181e-05 12 0.20308387279510495 17 0.79685540073023764
		3 7 7.6924392708717132e-05 12 0.20582515001296997 17 0.79409792559432124
		3 7 0.0045429983265270184 12 0.51718997955322266 17 0.4782670221202503
		3 7 0.014441273502570077 12 0.53797805309295654 17 0.44758067340447338
		4 0 0.00027624033404342543 1 0.025321526097029801 4 0.53784801026990026 
		7 0.43655422329902649
		4 0 0.10112152248620988 1 0.18341098186012331 4 0.62425314742386684 
		7 0.091214348229799916
		2 0 0.78937167778138928 1 0.21062832221861075
		4 0 0.32576975629836163 1 0.44113242626190186 4 0.23278211939973248 
		7 0.00031569804000409986
		2 0 0.93087965885934465 1 0.069120341140655434
		2 0 0.92587096244096756 3 0.07412903755903244
		2 0 0.80107279320259572 3 0.19892720679740436
		2 4 0.43585658073425299 7 0.56414341926574707
		3 4 0.076277604548492015 7 0.85056883096694946 17 0.073153564484558509
		3 4 0.0099983396043803515 7 0.62479066293456165 17 0.36521099746105806
		2 7 9.6226251662330895e-07 17 0.99999903773748333
		2 7 2.6542286841722943e-06 17 0.99999734577131583
		2 7 3.5431707541399775e-06 17 0.99999645682924587
		2 7 1.13398823102334e-06 17 0.99999886601176891
		4 7 2.3676178343928335e-08 15 3.0991192660583778e-05 17 0.99248208048804676 
		20 0.0074869046431142337
		4 7 2.1708898905422657e-08 15 2.4620600372508312e-05 17 0.99088535721372462 
		20 0.0090900004770040621
		2 7 4.0028399063064473e-07 17 0.99999959971600949
		2 7 4.4132570928034979e-07 17 0.99999955867429069
		3 15 2.9555124765021422e-06 17 0.69645018203356956 20 0.3035468624539539
		3 15 1.3455266667923843e-06 17 0.6646672449921126 20 0.3353314094812207
		3 15 5.8561377242031335e-06 17 0.93485785728675797 20 0.065136286575517871
		3 15 9.6906100939295137e-06 17 0.94265404129324748 20 0.057336268096658413
		4 15 1.3852494019436574e-07 17 0.23710517007875159 20 0.76289162244563458 
		33 3.0689506736373189e-06
		4 15 5.2678818535598381e-08 17 0.2294136689232168 20 0.77058425390339325 
		33 2.0244945711982482e-06
		3 15 6.5175592671845456e-07 17 0.49479078584009462 20 0.5052085624039786
		3 15 1.5855897395987933e-06 17 0.49052645264928479 20 0.50947196176097564
		4 15 2.7775772160045812e-07 17 0.23716109518767203 20 0.76283142848747276 
		33 7.1985671336379294e-06
		3 15 3.1448827630681713e-06 17 0.4696399435659831 20 0.53035691155125375
		4 0 0.080630713281414468 1 0.1589945028522684 4 0.66052395790091267 
		7 0.099850825965404524
		2 0 0.74209960627527138 1 0.25790039372472856
		4 0 0.21294688845567025 1 0.58043032884597778 4 0.2060550807427016 
		7 0.00056770195565038174
		2 0 0.86821778825835982 3 0.13178221174164018
		2 0 0.91954878548226171 3 0.080451214517738123
		2 0 0.72094299153088526 1 0.2790570084691148
		3 0 0.78520547087697723 1 0.21457949513408356 7 0.00021503398893920865
		2 0 0.71968889523407498 1 0.28031110476592502
		2 0 0.85126090879379301 3 0.14873909120620701
		4 0 0.19977443115953161 1 0.5155150294303894 4 0.28386482976126648 
		7 0.00084570964881251136
		4 0 0.25099324290541275 1 0.33941611714996062 4 0.37880566716194153 
		7 0.030784972782685063
		4 0 0.039094070161743787 1 0.076146982610225677 4 0.75000072497610848 
		7 0.13475822225192199
		4 0 0.055770272319849018 1 0.10952280607411026 4 0.67171831849095887 
		7 0.16298860311508179
		4 0 0.19615802866167231 1 0.46350261569023138 4 0.33919006402297797 
		7 0.0011492916251182987
		4 0 0.047481026529447939 1 0.1036253149248636 4 0.69578369083710079 
		7 0.15310996770858765
		3 4 0.37712985277175903 7 0.62243516453086467 17 0.00043498269737626328
		3 4 0.40233349800109863 7 0.5723259965379206 17 0.025340505460980749
		3 4 0.3780052661895752 7 0.59728746655508813 17 0.024707267255336663
		4 7 0.16403048005551615 12 0.7209591269493103 17 0.11131340781639296 
		18 0.0036969851787805904
		3 7 0.2218574583530426 12 0.58420296623002688 17 0.19393957541693055
		2 7 1.8062979506666909e-05 17 0.99998193702049332
		3 7 0.003831282593052297 12 0.033504705876111984 17 0.96266401153083569
		2 7 4.7815984326768423e-06 17 0.99999521840156735
		3 15 5.3752293234411911e-06 17 0.67026590780438577 20 0.32972871696629075
		4 7 9.5241894263113222e-08 15 2.6345678626637574e-05 17 0.90226200619723029 
		20 0.097711552882248837
		4 7 0.53126639127731323 10 0.27368832238289037 12 0.08334035372490349 
		15 0.11170493261489288
		4 7 0.096749294469139865 10 0.33002078533172607 15 0.2807128110639413 
		18 0.29251710913519274
		4 7 0.099225382320986974 10 0.39169982075691223 15 0.2626841009824043 
		18 0.24639069593969648
		4 7 0.58549004793167114 10 0.28406339398106073 12 0.023054167776244115 
		15 0.10739239031102396
		4 7 0.0016560148428976097 10 0.056539095938205719 15 0.17911435868320755 
		18 0.76269053053568914
		3 10 0.103483684360981 15 0.23613062512123664 18 0.6603856905177824
		2 15 0.00089713007844471437 18 0.99910286992155517
		2 15 0.0052596826064758243 18 0.9947403173935242
		2 15 0.015108171087038798 18 0.98489182891296112
		3 7 6.5080493643736423e-05 15 0.0067695247051575043 18 0.99316539480119836
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		3 7 6.6915314453970062e-08 15 4.0814830349379915e-06 18 0.99999585160165061
		4 7 0.0011777286812971908 10 0.011650480329990389 15 0.13853612959814185 
		18 0.84863566139057056
		3 7 0.00019167717023674824 15 0.011689263633196421 18 0.98811905919656684
		3 7 1.1699604918029185e-05 15 0.0007136145048120613 18 0.99927468589026991
		4 7 0.24213185906410217 10 0.39998184956970528 15 0.17022842025413948 
		18 0.18765787111205309
		3 7 0.58320074227576124 10 0.24948512017726895 15 0.16731413754696975
		4 7 0.41048564732163778 10 0.08258134126663208 12 0.4788183583738691 
		18 0.028114653037861124
		4 7 0.44989297059577177 10 0.055511113256216049 12 0.45923566473900318 
		17 0.035360251409008989
		4 7 0.81374651193618763 10 0.12294879839763204 12 0.014192559422942742 
		15 0.04911213024323749
		4 7 0.29144710302352905 10 0.31594939917228648 15 0.20740233373660705 
		18 0.1852011640675775
		3 7 0.087807267904281616 15 0.13225035011316322 18 0.77994238198255517
		3 7 0.00013103606323646428 15 0.007520975275681888 18 0.99234798866108165
		4 7 0.56942822850806118 12 0.37464308738708496 17 0.055913044964110099 
		18 1.5639140743782213e-05
		2 7 0.91593378782272339 12 0.084066212177276611
		2 0 0.72463985626969563 3 0.27536014373030432
		2 0 0.5735067794688139 3 0.4264932205311861
		2 0 0.37187686434363743 3 0.62812313565636257
		2 0 0.40385882946363705 3 0.59614117053636295
		2 0 0.47239251275100957 3 0.52760748724899054
		2 0 0.58794881375631014 3 0.41205118624368986
		2 0 0.47906701196427787 3 0.52093298803572219
		2 0 0.2712098622338151 3 0.72879013776618484
		2 0 0.69583871840076639 3 0.30416128159923356
		2 0 0.8343743536908329 3 0.1656256463091671
		2 0 0.93102344870567333 3 0.068976551294326782
		2 0 0.84896318052143727 3 0.15103681947856273
		2 0 0.75112417237287488 3 0.2488758276271251
		4 0 0.94503706693649292 1 0.021680263401193223 3 0.018502757323320324 
		4 0.014779912338993541
		2 0 0.8866742184236297 3 0.1133257815763703
		2 0 0.98148053391059586 3 0.018519466089404184
		1 0 0.98365252677792236;
	setAttr ".wl[1269:1497].w"
		1 3 0.016347473222077621
		1 0 1
		3 7 0.015922693970971128 12 0.10203706473112106 17 0.88204024129790781
		2 7 0.00016782595374410675 17 0.99983217404625579
		4 4 0.0019431679678754516 7 0.32436601399115578 12 0.028754392638802528 
		17 0.64493642540216634
		3 4 0.00010115306186197203 7 0.056850828351213405 17 0.94304801858692466
		4 4 0.00014367696807461382 7 0.22755855670743275 12 0.23227168619632721 
		17 0.54002608012816544
		2 7 3.8570544896270959e-05 17 0.9999614294551038
		2 7 0.0024830532266219671 17 0.99751694677337788
		2 7 5.0697290093614053e-05 17 0.99994930270990645
		1 18 1
		1 18 0.99999999999999989
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		3 7 1.7829875945818469e-06 15 0.00010235314226641844 18 0.99989586387013907
		3 7 5.4114243256480094e-06 15 0.00032897801796948973 18 0.99966561055770475
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 0.99999999999999989
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		4 7 1.2824873584826069e-06 15 0.00012748446749463643 17 0.97637332611963956 
		20 0.023497906925507208
		4 7 5.7932926033469113e-06 15 0.00031731160258530671 17 0.94778898297223324 
		20 0.051887912132578096
		4 7 8.8014191286346759e-06 15 0.00027895360123382951 17 0.94758806708208876 
		20 0.052124177897548661
		4 7 3.2101180292610619e-07 15 4.2289127202006979e-05 17 0.85290200598321253 
		20 0.14705538387778258
		3 15 4.9821835843760666e-06 17 0.60556988051667537 20 0.39442513729974032
		3 15 5.210141113184055e-06 17 0.62824823441192801 20 0.37174655544695873
		4 7 4.6092965464083225e-07 15 4.0474044172637288e-05 17 0.84171211079027408 
		20 0.15824695423589852
		4 7 1.8079945356560575e-07 15 2.3463117129977703e-05 17 0.98953746117929453 
		20 0.01043889490412196
		4 7 1.1031326141902091e-08 15 5.2955409905544773e-06 17 0.90221190697155618 
		20 0.097782786456127133
		4 7 1.5974535583057154e-08 15 5.1466554168592152e-06 17 0.88705486218320062 
		20 0.11293997518684699
		4 7 3.2990215586210573e-07 15 2.3843305861915512e-05 17 0.98920969317031071 
		20 0.010766133621671475
		4 7 6.3092115393022097e-08 15 8.7905782836571496e-06 17 0.87760564102293748 
		20 0.12238550530666371
		4 7 1.1269799725804189e-06 15 4.271652415752234e-05 17 0.98193735971618468 
		20 0.018018796779685389
		3 15 1.8827263653475673e-06 17 0.57507029890453498 20 0.42492781836909954
		3 15 3.9816779359058327e-06 17 0.5903037294864466 20 0.40969228883561742
		4 7 1.4670549859857425e-07 15 1.823408292424619e-05 17 0.87207480774345791 
		20 0.12790681146811927
		4 15 3.6498124089562657e-08 17 0.20397217269878223 20 0.79602643233074011 
		33 1.358472353697816e-06
		3 15 5.3948497840770694e-07 17 0.491891998227384 20 0.50810746228763759
		4 15 4.7418243588806301e-08 17 0.18950841978770541 20 0.81048960948184012 
		33 1.923312210754478e-06
		3 15 7.3321407842532834e-07 17 0.47858927846912186 20 0.52140998831679974
		4 15 5.6092948361971782e-08 17 0.1853659599143247 20 0.81463132345968226 
		33 2.6605330446442967e-06
		3 15 7.9212977978357147e-07 17 0.46069228686892466 20 0.53930692100129574
		4 15 9.4208480138834378e-08 17 0.17485763870443968 20 0.82513994385772449 
		33 2.3232293557645285e-06
		3 15 1.3377212571337654e-06 17 0.45229117042864458 20 0.54770749185009837
		4 15 1.644598879202938e-07 17 0.18608474824056939 20 0.81391077710550308 
		33 4.3101940397121251e-06
		4 15 2.4200358863864385e-07 17 0.21052840029126887 20 0.78946402124762127 
		33 7.3364575212950067e-06
		3 15 2.7230933264715237e-06 17 0.44326328292805495 20 0.55673399397861856
		3 15 1.9981620952599748e-06 17 0.43981260335566208 20 0.56018539848224269
		2 7 1.1148543225366928e-06 17 0.99999888514567747
		2 7 4.3716115203604829e-06 17 0.99999562838847966
		2 7 5.3506051657081552e-05 17 0.99994649394834267
		2 7 0.00039501625127207849 17 0.99960498374872797
		2 7 0.00010049200008572857 17 0.99989950799991423
		3 7 0.050073593854904175 12 0.21558754855736423 17 0.73433885758773154
		3 7 0.28300060394303034 12 0.43689654705031677 17 0.28010284900665283
		3 7 0.17824167931443147 12 0.32392573356628418 17 0.4978325871192843
		2 4 0.0051251289610850194 7 0.99487487103891503
		2 4 2.364434825804663e-05 7 0.99997635565174192
		4 4 1.5933911929903779e-07 7 0.7558274760152125 12 0.18640768527984619 
		17 0.057764679365822032
		3 4 0.058501697524782237 7 0.94140252886608844 17 9.5773609129249393e-05
		2 7 2.6640808754979667e-06 17 0.99999733591912443
		2 7 0.0012487273205247405 17 0.99875127267947517
		2 7 0.02637283510754234 17 0.97362716489245771
		2 7 0.11073970437895886 17 0.88926029562104114
		2 7 6.3486205738267334e-06 17 0.9999936513794262
		2 7 0.0036097332476536441 17 0.99639026675234643
		3 4 2.8258529368922717e-05 7 0.084821785720868861 17 0.91514995574976221
		3 4 0.00056552499658625143 7 0.30337573291688735 17 0.69605874208652641
		3 7 0.52112342633681263 12 0.24488852918148041 17 0.23398804448170696
		3 4 0.056596891366475471 7 0.77329676133506675 17 0.17010634729845781
		3 7 0.19374986953115453 12 0.22437587380409241 17 0.58187425666475312
		4 4 0.00039480647587070345 7 0.2911548928941517 12 0.21610499918460849 
		17 0.49234530144536914
		3 4 0.011533563906654814 7 0.61605702641179849 17 0.37240940968154662
		3 7 0.32014666247209755 12 0.27321517467498779 17 0.40663816285291465
		3 4 0.0056599159054906301 7 0.54829605481954313 17 0.44604402927496617
		3 4 0.055281703382316083 7 0.70732796729494429 17 0.23739032932273971
		3 4 0.24109130651121319 7 0.71119446285666577 17 0.047714230632121046
		3 4 0.21775361931497669 7 0.7732784383671657 17 0.0089679423178576374
		2 4 0.15280838732124807 7 0.84719161267875187
		3 4 0.11837960370282928 7 0.70004802942276001 17 0.18157236687441072
		3 4 0.0089846452623794613 7 0.59041198166284603 17 0.4006033730747745
		3 4 0.00061576002388850437 7 0.33255115902721488 17 0.66683308094889659
		3 4 0.49920578429626322 7 0.5007675419717379 17 2.6673731998951969e-05
		2 4 0.49895604012960754 7 0.50104395987039241
		3 4 0.45361358556345083 7 0.5462186336517334 17 0.00016778078481574917
		4 0 0.030118878953210339 1 0.082429103553295135 4 0.76031980539497102 
		7 0.1271322120985236
		4 0 0.0010445205924525926 1 0.112126424908638 4 0.77322403045870236 
		7 0.11360502404020702
		4 0 0.00017134839743234134 1 0.044736351817846298 4 0.88743222991194637 
		7 0.067660069872774897
		3 0 0.74174907603949003 1 0.21892459889252239 4 0.039326325067987521
		4 0 0.22060698198294257 1 0.33130251198352584 4 0.43025064468383795 
		7 0.017839861349693731
		4 0 0.74574655294418335 1 0.22253765489384417 4 0.031675178724203237 
		7 4.061343776928294e-05
		4 0 0.21974459290504456 1 0.36444059636019488 4 0.41058187687709602 
		7 0.0052329338576645699
		2 0 0.99527572221795269 3 0.0047242777820473928
		2 0 0.97179034721301827 3 0.02820965278698179
		1 0 1
		4 0 0.63434964418411255 1 0.27963575383322903 4 0.086009481157315604 
		7 5.1208253428129034e-06
		4 0 0.21382088959217072 1 0.34875003756232287 4 0.4366922598275586 
		7 0.00073681301794776188
		2 0 0.7623139932110683 3 0.23768600678893173
		2 0 0.84555938970523281 3 0.15444061029476719
		2 0 0.68908977004450145 3 0.31091022995549861
		2 0 0.27785141424680798 3 0.72214858575319196
		2 0 0.6276282320274128 3 0.37237176797258725
		2 0 0.16255723096318758 3 0.83744276903681236
		3 0 0.049030210822820663 3 0.94867414944235628 6 0.0022956397348229992
		3 0 0.054902009665966034 3 0.93886309337393892 6 0.0062348969600952474
		2 0 0.1473738567076249 3 0.85262614329237507
		2 0 0.16513682145390821 3 0.83486317854609182
		3 3 0.99812444499408337 5 0.00067430805290209675 6 0.0012012469530145546
		1 3 1
		2 0 0.084114630082324685 3 0.91588536991767533
		2 0 0.10171052340541832 3 0.8982894765945818
		3 0 0.019509289413690567 3 0.9798240222307486 6 0.00066668835556074385
		3 0 0.017280319705605507 3 0.98219526214570974 6 0.00052441814868473284
		1 3 1
		2 3 0.99778748194814948 6 0.0022125180518505366
		2 0 0.17670846121069855 3 0.82329153878930139
		2 0 0.078476487901744524 3 0.92152351209825556
		3 0 0.035247728228569031 3 0.96309417284176124 6 0.0016580989296696713
		2 3 0.99217016015810688 6 0.0078298398418931419
		2 0 0.18988277649969673 3 0.81011722350030324
		2 0 0.11334245717004858 3 0.88665754282995157
		3 0 0.046005744487047195 3 0.94986669362768672 6 0.0041275618852660732
		1 3 1
		2 0 0.16820984436781747 3 0.8317901556321825
		2 0 0.231154008397703 3 0.76884599160229716
		2 0 0.086390108625979942 3 0.91360989137402004
		2 0 0.12579626301218791 3 0.87420373698781195
		3 0 0.025585412979125977 3 0.97146697028670748 6 0.0029476167341665081
		3 0 0.035789117217063904 3 0.96271023305379211 6 0.0015006497291438583
		2 3 0.96976067647159669 6 0.03023932352840333
		2 3 0.98632990104810037 6 0.01367009895189971
		2 0 0.37183898337449794 3 0.62816101662550206
		2 0 0.58477213453959587 3 0.41522786546040413
		2 0 0.26623469231432262 3 0.73376530768567749
		2 0 0.13928084727107509 3 0.86071915272892496
		3 0 0.035789117217063904 3 0.96164338566663299 6 0.0025674971163031301
		2 3 0.98703714993018798 6 0.012962850069811876
		2 0 0.44015968407657274 3 0.55984031592342731
		2 0 0.40147411342237083 3 0.59852588657762917
		2 0 0.42368531610510674 3 0.57631468389489338
		2 0 0.28635515571105064 3 0.71364484428894936
		2 0 0.28104818962276579 3 0.71895181037723421
		2 3 0.75648639805400197 6 0.24351360194599816
		2 3 0.72814291715621948 6 0.27185708284378052
		2 3 0.33285737037658691 6 0.66714262962341309
		2 3 0.54089081287384033 6 0.45910918712615967
		2 3 0.54268643633353386 6 0.45731356366646614
		2 3 0.34142571687698364 6 0.65857428312301636
		2 3 0.079292112044351326 6 0.92070788795564884
		2 3 0.16602140665054321 6 0.83397859334945679
		2 3 0.18838495016098025 6 0.81161504983901989
		2 3 0.034207064818045155 6 0.96579293518195486
		1 6 1
		2 3 0.0046321231873770715 6 0.99536787681262284
		2 3 0.0010150394886298216 6 0.9989849605113702
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 6 0.79824366541979297 9 0.20175633458020709
		1 6 1
		1 6 1
		2 6 0.82769642526202558 9 0.17230357473797439
		2 6 0.13139522075653076 9 0.86860477924346924
		2 6 0.17498564720153809 9 0.82501435279846191
		2 3 0.80655188858509053 6 0.19344811141490936
		2 3 0.1572624146938324 6 0.8427375853061676
		2 3 0.52936598658561707 6 0.47063401341438293
		2 3 0.66852432489395142 6 0.33147567510604858
		2 3 0.89923155307769775 6 0.10076844692230225
		2 3 0.82006752490997314 6 0.17993247509002686
		2 3 0.46412414312362671 6 0.53587585687637329
		2 3 0.97439455986022949 6 0.025605440139770508
		2 3 0.24194777011871335 6 0.75805222988128651
		2 3 0.16913050413131714 6 0.83086949586868286
		2 3 0.90985861420631409 6 0.090141385793685913
		2 3 0.87548506259918213 6 0.12451493740081788
		2 3 0.35001769661903381 6 0.64998230338096619
		2 3 0.10614702799031386 6 0.89385297200968605
		2 3 0.14037507772445679 6 0.85962492227554321
		2 3 0.046854615211486816 6 0.95314538478851307
		2 3 0.2037354111671448 6 0.79626458883285522
		2 3 0.87273494289754883 6 0.12726505710245131
		2 3 0.77605551481246948 6 0.22394448518753052
		2 3 0.67186617851257324 6 0.32813382148742676
		2 3 0.35325210585604838 6 0.64674789414395162
		2 3 0.93106162548065186 6 0.068938374519348145
		1 3 0.81605571508407604;
	setAttr ".wl[1497:1837].w"
		1 6 0.18394428491592407
		2 3 0.60641759634017944 6 0.39358240365982056
		2 3 0.35205990076065063 6 0.64794009923934937
		2 3 0.91780579090118397 6 0.082194209098815918
		2 3 0.93107685446739197 6 0.068923145532608032
		2 3 0.82462704181671131 6 0.17537295818328855
		2 3 0.58016493916511536 6 0.41983506083488464
		2 3 0.32987850904464722 6 0.67012149095535278
		1 6 1
		2 3 0.013813593860563404 6 0.98618640613943664
		1 6 1
		2 3 0.020615756511688232 6 0.97938424348831188
		1 6 1
		2 3 0.038470268249511719 6 0.96152973175048828
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 3 0.031030893325805664 6 0.96896910667419445
		1 6 1
		2 3 0.01252390842413671 6 0.98747609157586336
		2 3 0.00053577543123735718 6 0.9994642245687626
		2 3 0.0074317314189662172 6 0.99256826858103397
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 6 0.90395835041999828 9 0.096041649580001817
		2 6 0.96309167466580836 9 0.03690832533419159
		2 3 0.027219743341999548 6 0.97278025665800028
		1 6 1
		2 3 0.11580991364434572 6 0.88419008635565444
		2 3 0.11939334869384766 6 0.88060665130615234
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 6 0.91321036706039516 9 0.086789632939604691
		1 6 1
		2 6 0.77499650495123285 9 0.22500349504876713
		1 6 1
		2 6 0.7385593056678772 9 0.2614406943321228
		1 6 1
		2 6 0.71756082773208618 9 0.28243917226791382
		1 6 1
		2 6 0.80257965624332428 9 0.19742034375667572
		1 6 1
		2 6 0.083152450621128082 9 0.91684754937887203
		2 6 0.097590826451778412 9 0.90240917354822159
		2 6 0.028897760435938835 9 0.97110223956406116
		2 6 0.034888606518507004 9 0.965111393481493
		2 6 0.039063375443220139 9 0.96093662455677986
		2 6 0.027869775891304016 9 0.97213022410869598
		2 6 0.091947421431541443 9 0.90805257856845856
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		2 9 0.90116111189126979 14 0.098838888108730316
		2 9 0.84049315750598907 14 0.15950684249401093
		1 9 1
		1 9 1
		2 9 0.1191357746720314 14 0.8808642253279686
		2 9 0.88547482341527939 14 0.1145251765847206
		2 9 0.83399941027164459 14 0.16600058972835541
		2 9 0.18762634694576263 14 0.81237365305423748
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 9 1
		1 9 1
		1 9 1
		2 9 0.125626340508461 14 0.874373659491539
		2 9 0.071730524301528931 14 0.92826947569847107
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		2 9 0.05802406370639801 14 0.94197593629360188
		2 9 0.77277716994285583 14 0.22722283005714417
		2 9 0.14056746661663055 14 0.85943253338336945
		1 30 1
		1 30 1
		1 30 1
		1 30 1
		1 30 1
		1 30 1
		2 30 0.95183703675866127 40 0.04816296324133873
		2 30 0.96287834644317627 40 0.03712165355682373
		2 30 0.5 40 0.5
		2 30 0.5 40 0.5
		1 40 1
		1 40 1
		1 40 1
		1 40 1
		1 40 1
		1 40 1
		2 40 0.5 50 0.5
		2 40 0.5 50 0.5
		1 50 1
		1 50 1
		1 30 1
		1 30 1
		1 30 1
		1 30 1
		2 30 0.5 40 0.5
		1 40 1
		1 40 1
		2 40 0.5 50 0.5
		1 40 1
		1 50 1
		2 30 0.5 40 0.5
		1 40 1
		2 30 0.50856655836105347 40 0.49143344163894653
		2 30 0.25356942415237427 40 0.74643057584762573
		2 30 0.5 40 0.5
		2 30 0.26832282543182373 40 0.73167717456817627
		1 40 1
		2 40 0.5 50 0.5
		1 40 1
		1 50 1
		1 40 1
		2 40 0.5 50 0.5
		1 40 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		1 30 1
		2 22 0.10470210015773772 30 0.89529789984226227
		2 22 0.10241373628377914 30 0.89758626371622074
		2 22 0.15971828997135162 30 0.84028171002864827
		2 22 0.13927452266216278 30 0.86072547733783733
		1 30 1
		2 22 0.43489435315132147 30 0.56510564684867859
		2 22 0.44726821780204779 30 0.55273178219795227
		3 22 0.30430226027965529 29 0.39139547944068914 30 0.30430226027965568
		3 22 0.41842754930257775 29 0.16314490139484406 30 0.41842754930257814
		2 22 0.5 30 0.5
		2 22 0.5 30 0.5
		2 22 0.5 30 0.5
		1 22 1
		1 22 1
		1 40 1
		2 40 0.5 50 0.5
		1 40 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		1 50 1
		2 22 0.5 30 0.5
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		3 22 0.25 30 0.25 31 0.5
		1 30 1
		1 30 1
		1 30 1
		1 30 1
		2 30 0.5 40 0.5
		1 40 1
		1 40 1
		2 40 0.5 50 0.5
		1 40 1
		1 50 1
		1 40 1
		2 30 0.55396908521652222 40 0.44603091478347778
		1 40 1
		2 40 0.5 50 0.5
		1 40 1
		1 50 1
		1 50 1
		1 30 1
		1 30 1
		3 22 0.25 30 0.25 31 0.5
		3 22 0.41219308972358704 30 0.19593563675880429 31 0.3918712735176087
		3 22 0.25 30 0.25 31 0.5
		1 50 1
		1 50 1
		1 50 1
		2 22 0.044736351817846298 29 0.95526364818215359
		1 29 1
		1 29 1
		2 22 0.020369317382574081 29 0.97963068261742592
		2 22 0.5 29 0.5
		2 22 0.5 29 0.5
		2 29 0.79172529280185699 39 0.20827470719814301
		2 29 0.74681130051612843 39 0.25318869948387146
		2 29 0.5 39 0.5
		2 29 0.5 39 0.5
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		2 39 0.5 49 0.5
		2 39 0.5 49 0.5
		1 49 1
		1 49 1
		2 22 0.5 29 0.5
		2 22 0.13078244030475616 29 0.86921755969524384
		1 29 1
		2 29 0.76461076736450195 39 0.23538923263549805
		2 29 0.5 39 0.5
		2 29 0.5 39 0.5
		1 39 1
		2 39 0.5 49 0.5
		1 39 1
		1 49 1
		2 29 0.6363031268119812 39 0.3636968731880188
		2 29 0.5 39 0.5
		2 29 0.59956216812133789 39 0.40043783187866205
		2 29 0.20939867198467255 39 0.79060132801532756
		2 29 0.64608573913574219 39 0.35391426086425781
		2 29 0.27421116828918457 39 0.72578883171081532
		1 39 1
		2 39 0.5 49 0.5
		1 39 1
		1 49 1
		1 39 1
		2 39 0.5 49 0.5
		1 39 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		2 22 0.11022275686264038 29 0.88977724313735973
		2 22 0.14201408624649048 29 0.85798591375350941
		2 22 0.12031221389770508 29 0.87968778610229492
		2 22 0.19731563329696655 29 0.80268436670303345
		2 22 0.1391335129737854 29 0.8608664870262146
		2 22 0.25709116458892822 29 0.74290883541107189
		2 22 0.48005020618438721 29 0.51994979381561279
		2 22 0.53238293528556824 29 0.46761706471443176
		2 22 0.82524269819259644 29 0.17475730180740356
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 39 1
		2 39 0.5 49 0.5
		1 39 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		1 49 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 22 0.81227704882621765 33 0.18772295117378235
		1 29 1
		2 22 0.5 29 0.5
		1 29 1
		2 29 0.75737673044204701 39 0.24262326955795288
		2 29 0.5 39 0.5
		2 29 0.5 39 0.5
		1 39 1
		2 39 0.5 49 0.5
		1 39 1
		1 49 1
		2 29 0.5 39 0.5
		2 29 0.5 39 0.5
		1 39 1
		2 39 0.5 49 0.5
		1 39 1
		1 49 1
		1 49 1
		1 29 1
		2 22 0.5 29 0.5
		1 49 1
		1 49 1
		1 49 1
		1 22 1
		2 22 0.95716732367873181 29 0.042832676321268082
		2 22 0.96840862184762955 29 0.031591378152370453
		2 22 0.80357879400253296 33 0.19642120599746704
		2 22 0.81648576259613037 33 0.18351423740386963
		2 22 0.60089480876922607 33 0.39910519123077393
		2 22 0.5 33 0.5
		2 22 0.59556448459625244 33 0.4044355154037475
		2 22 0.5 33 0.5
		1 22 1
		2 22 0.5 33 0.5
		2 22 0.5 33 0.5
		1 22 1
		1 22 1
		2 20 0.44445978924644874 22 0.55554021075355131
		2 20 0.27218208910908626 22 0.72781791089091374
		2 20 0.99406738676680795 22 0.005932613233191956
		2 20 0.96900548688019217 22 0.030994513119807745
		2 20 0.9672750489853742 22 0.032724951014625761
		2 20 0.99316358667568516 22 0.0068364133243148323
		2 20 0.99999872182108163 33 1.2781789185222965e-06
		2 20 0.99999816720977253 33 1.8327902274984709e-06
		2 20 0.96005767036385092 22 0.039942329636149174
		2 20 0.99143059228856956 22 0.0085694077114304226
		3 20 0.95365443391931259 22 0.046329122752898105 42 1.644332778893227e-05
		2 20 0.9912212761621858 22 0.0087787238378141449
		2 20 0.99999897426014395 33 1.0257398560250425e-06
		2 20 0.99999938246172415 33 6.1753827582736278e-07
		3 17 0.0012429660203520923 20 0.99873246353504208 33 2.4570444605770826e-05
		3 17 0.0015064954939003569 20 0.99845692218193838 33 3.658232416125722e-05
		3 17 0.039445864384794187 20 0.96053290427916282 33 2.123133604308161e-05;
	setAttr ".wl[1838:2148].w"
		3 17 0.034781007194737881 20 0.96520850202504427 33 1.049078021781024e-05
		3 17 0.0010986790475557501 20 0.99888175890008379 33 1.9562052360408476e-05
		3 17 0.032127715776165362 20 0.96786478244731855 33 7.5017765160971782e-06
		3 17 0.00078089402517914205 20 0.99920702500218539 33 1.2080972635585871e-05
		3 17 0.025455587897618981 20 0.9745397009516592 33 4.7111507217937768e-06
		3 17 0.0013536006971935624 20 0.9986072819466022 33 3.9117356204225063e-05
		3 17 0.035993160103974443 20 0.96398476985530668 33 2.2070040718815944e-05
		2 20 0.99999816235351968 33 1.837646480332956e-06
		2 20 0.99458404146623758 22 0.0054159585337623314
		2 20 0.96615398469276803 22 0.033846015307232073
		1 22 1
		2 20 0.22980221453062483 22 0.77019778546937523
		2 22 0.5 33 0.5
		1 22 1
		3 20 0.52768391342174248 22 0.47231598517069678 42 1.0140756062763548e-07
		1 22 1
		3 20 0.51825911214079579 22 0.48171951893241743 42 2.1368926786718265e-05
		1 22 1
		2 22 0.97810774296522141 33 0.021892257034778595
		1 22 1
		2 22 0.5 33 0.5
		2 22 0.5 33 0.5
		1 22 1
		2 20 0.80575378533712416 22 0.19424621466287609
		2 20 0.76849404840426117 22 0.23150595159573889
		2 20 0.77336165318592076 22 0.22663834681407904
		3 20 0.74154225806018226 22 0.25843296096099166 42 2.4780978826168139e-05
		2 20 0.71208606278604825 22 0.28791393721395181
		1 22 1
		2 22 0.5 33 0.5
		2 22 0.95221776887774467 29 0.047782231122255325
		2 22 0.8541785329580307 30 0.1458214670419693
		2 22 0.88178181648254395 30 0.11821818351745604
		1 22 1
		2 22 0.8882543072104454 31 0.1117456927895546
		2 22 0.50742429494857788 31 0.49257570505142206
		1 22 1
		1 22 1
		3 20 0.13972034667990041 22 0.77397881965861393 33 0.086300833661485638
		1 33 1
		2 22 0.020940419286489487 33 0.97905958071351051
		2 33 0.5 43 0.5
		2 33 0.5 43 0.5
		2 33 0.1342090517282486 43 0.8657909482717514
		2 33 0.093660786747932434 43 0.90633921325206757
		2 33 0.083952046930789948 43 0.91604795306921005
		2 33 0.081096537411212921 43 0.91890346258878708
		2 43 0.5 53 0.5
		1 43 1
		1 43 1
		2 43 0.5 53 0.5
		1 53 1
		1 53 1
		2 33 0.5 43 0.5
		1 33 1
		2 33 0.087378658354282379 43 0.91262134164571762
		2 33 0.042071204632520669 43 0.95792879536747932
		1 43 1
		1 53 1
		2 43 0.5 53 0.5
		2 33 0.89301349222660065 43 0.10698650777339937
		2 33 0.091757111251354218 43 0.90824288874864578
		2 33 0.87835520505905151 43 0.12164479494094849
		2 33 0.13363794982433319 43 0.86636205017566692
		2 33 0.73808139562606812 43 0.26191860437393188
		2 33 0.20102801918983459 43 0.79897198081016541
		1 43 1
		1 53 1
		2 43 0.5 53 0.5
		2 43 0.92537595331668843 53 0.074624046683311462
		1 53 1
		2 43 0.52075004577636719 53 0.47924995422363281
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		4 22 0.000574673044464511 33 0.0012821696112051931 43 0.92504205403851381 
		53 0.07310110330581665
		1 53 1
		2 43 0.54921019077301025 53 0.45078980922698975
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		2 33 0.5 43 0.5
		2 22 0.27596604824066162 33 0.72403395175933838
		2 33 0.135541632771492 43 0.864458367228508
		2 33 0.046830393373966217 43 0.95316960662603378
		1 43 1
		1 53 1
		2 43 0.5 53 0.5
		2 33 0.18294312059879303 43 0.81705687940120708
		3 22 0.157053142786026 33 0.58715823561361535 43 0.25578862160035865
		1 43 1
		1 53 1
		2 43 0.5 53 0.5
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 53 1
		1 22 1
		3 20 0.14804766233178299 22 0.75272412872620142 33 0.099228208942015367
		2 20 0.50570220321191961 22 0.49429779678808033
		2 20 0.49986960941906738 22 0.50013039058093278
		2 20 0.86998823233840827 22 0.13001176766159153
		3 20 0.88464665773115747 22 0.11535224557061236 42 1.0966982299948275e-06
		1 22 1
		3 20 0.83862485707809087 22 0.161340025355794 42 3.5117566115203045e-05
		3 20 0.6755465688425335 22 0.32440055042838511 42 5.2880729081290473e-05
		1 22 1
		4 20 0.34924145523161432 22 0.64113502395685251 33 0.0094115951299792704 
		42 0.00021192568155394703
		1 22 1
		4 20 0.34597164997183516 22 0.65087430659935031 33 0.0028168463851282154 
		42 0.00033719704368633311
		1 22 1
		1 22 1
		1 22 1
		2 22 0.93889011070132256 31 0.061109889298677438
		1 22 1
		2 22 0.88369788974523555 32 0.11630211025476456
		1 22 1
		1 22 1
		1 22 1
		2 20 0.99842358622303451 22 0.0015764137769654753
		2 20 0.98981847091606612 22 0.010181529083933967
		2 20 0.99875033482756037 22 0.0012496651724398398
		2 20 0.99071258215370095 22 0.0092874178462991168
		3 20 0.9960888255801198 22 0.0039097079155332093 42 1.4665043470576506e-06
		3 20 0.97682198783082108 22 0.02317546883747084 42 2.5433317080961527e-06
		2 20 0.99999934174020255 33 6.5825979745935536e-07
		3 17 0.00095516326274679337 20 0.99902737805966446 33 1.7458677588669213e-05
		3 17 0.028782633877014057 20 0.97120623165772724 33 1.1134465258776045e-05
		2 20 0.99999977919474603 33 2.2080525380902744e-07
		3 17 0.00060049929018752136 20 0.99939327733218741 33 6.2233776251897786e-06
		3 17 0.02280691296581171 20 0.97718818187512835 33 4.9051590600494127e-06
		2 20 0.99999966869453893 33 3.3130546116591948e-07
		3 17 0.00077770999671937741 20 0.99921408473844453 33 8.2052648361058943e-06
		3 17 0.025323131505102715 20 0.97467087117611517 33 5.997318781801668e-06
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		2 31 0.5 41 0.5
		2 31 0.5 41 0.5
		2 31 0.5 41 0.5
		2 31 0.5 41 0.5
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		2 41 0.5 51 0.5
		2 41 0.5 51 0.5
		1 51 1
		1 51 1
		1 31 1
		1 31 1
		1 31 1
		2 31 0.5 41 0.5
		2 31 0.5 41 0.5
		1 41 1
		1 41 1
		2 41 0.5 51 0.5
		1 41 1
		1 51 1
		2 31 0.5 41 0.5
		1 41 1
		2 31 0.5 41 0.5
		2 31 0.042261570692062378 41 0.95773842930793762
		2 31 0.5 41 0.5
		2 31 0.038263857364654541 41 0.96173614263534546
		1 41 1
		2 41 0.5 51 0.5
		1 41 1
		1 51 1
		1 41 1
		2 41 0.5 51 0.5
		1 41 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		1 31 1
		2 22 0.16466784477233887 31 0.83533215522766113
		2 22 0.1084096133708954 31 0.89159038662910461
		2 22 0.23129644989967343 31 0.76870355010032654
		2 22 0.19358649849891665 31 0.80641350150108337
		1 31 1
		2 22 0.59023416042327881 31 0.40976583957672119
		2 22 0.5 31 0.5
		2 22 0.5 31 0.5
		1 22 1
		1 22 1
		1 41 1
		2 41 0.5 51 0.5
		1 41 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		1 51 1
		3 22 0.25 31 0.25 32 0.5
		1 22 1
		1 31 1
		1 31 1
		1 31 1
		2 31 0.5 41 0.5
		2 31 0.5 41 0.5
		1 41 1
		1 41 1
		2 41 0.5 51 0.5
		1 41 1
		1 51 1
		1 41 1
		2 31 0.5 41 0.5
		1 41 1
		2 41 0.5 51 0.5
		1 41 1
		1 51 1
		1 51 1
		1 31 1
		1 31 1
		2 22 0.5 31 0.5
		2 22 0.5 31 0.5
		2 22 0.5 31 0.5
		1 51 1
		1 51 1
		1 51 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 22 0.90824288874864578 31 0.091757111251354218
		2 22 0.91338280588388443 32 0.08661719411611557
		2 22 0.5 32 0.5
		2 22 0.5 32 0.5
		3 20 0.43938319318531777 22 0.56050731248182628 42 0.00010949433285598974
		3 20 0.75564183296808318 22 0.24427257664782295 42 8.5590384093901838e-05
		3 20 0.95164431324196053 22 0.048314074442079934 42 4.1612315959788803e-05
		2 20 0.99999954663095758 33 4.5336904234500198e-07
		3 20 0.99099760367036316 22 0.0089833562716073092 42 1.9040058029429221e-05
		3 17 0.00071441627819153258 20 0.99927650929109679 33 9.0744307116596396e-06
		3 17 0.02369787218230027 20 0.97629728613964284 33 4.8416780569126854e-06
		2 22 0.5 32 0.5
		1 32 1
		1 32 1
		2 22 0.5 32 0.5
		2 32 0.5 42 0.5
		2 32 0.5 42 0.5
		2 32 0.5 42 0.5
		2 32 0.5 42 0.5
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 42 0.5 52 0.5
		2 42 0.5 52 0.5
		1 52 1
		1 52 1
		1 32 1
		2 32 0.5 42 0.5
		2 32 0.5 42 0.5
		1 42 1
		1 42 1
		2 42 0.5 52 0.5
		1 42 1
		1 52 1
		2 32 0.99260052200406801 42 0.0073994779959321022
		1 42 1
		2 32 0.91205023974180222 42 0.087949760258197798
		2 32 0.045878555625677109 42 0.95412144437432289
		2 32 0.864800825715065 42 0.135199174284935
		2 32 0.096897035837173462 42 0.90310296416282654
		1 42 1
		2 42 0.5 52 0.5
		1 42 1
		1 52 1
		1 42 1
		2 42 0.5 52 0.5
		1 42 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		2 22 0.5 32 0.5
		2 22 0.96402055025100708 32 0.03597944974899292
		2 22 0.95659622177481651 32 0.043403778225183487;
	setAttr ".wl[2149:2195].w"
		1 22 1
		1 22 1
		1 42 1
		2 42 0.5 52 0.5
		1 42 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		1 52 1
		1 22 1
		1 22 1
		1 32 1
		2 22 0.5 32 0.5
		2 32 0.5 42 0.5
		2 32 0.5 42 0.5
		1 42 1
		1 42 1
		2 42 0.5 52 0.5
		1 42 1
		1 52 1
		1 42 1
		2 32 0.90500664710998524 42 0.094993352890014662
		1 42 1
		2 42 0.5 52 0.5
		1 42 1
		1 52 1
		1 52 1
		2 22 0.5 32 0.5
		1 22 1
		1 52 1
		1 52 1
		1 52 1
		1 22 1
		1 22 1
		3 20 0.31962854772725813 22 0.67999055488879512 42 0.00038089738394677297
		3 20 0.61009817022619084 22 0.38981647638666361 42 8.5353387145443153e-05
		2 9 0.72983023524284363 14 0.27016976475715637
		2 7 1.551121703291397e-05 17 0.99998448878296708
		2 7 0.0038977152702882999 17 0.99610228472971163
		3 4 4.0792140853144881e-05 7 0.090605317041792352 17 0.90935389081735452
		4 7 2.6735713616350857e-06 15 8.6280600243145939e-05 17 0.97729314153687852 
		20 0.022617904291516472
		3 15 1.7146241121462452e-06 17 0.59575673684913855 20 0.40424154852674937
		3 15 2.033800846921564e-06 17 0.56130282200391934 20 0.43869514419523387
		2 3 0.056138172544997415 6 0.94386182745500258
		2 3 0.1094457507133484 6 0.89055424928665172;
	setAttr -s 54 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503126e-16 1.3322676295501878e-15 -1 0
		 1 -2.9582283945787943e-31 2.2204460492503131e-16 0 2.8349688781380103e-31 -1 -1.2767564783189298e-15 0
		 -33.48401950703397 -0.20044987473045472 -7.6908715588817258e-15 1;
	setAttr ".pm[1]" -type "matrix" 3.5522640853776063e-16 1.3030944102408521e-15 -1 0
		 0.99490514928266183 -0.1008153953066928 2.2204460492503136e-16 0 -0.1008153953066928 -0.99490514928266183 -1.2767564783189298e-15 0
		 -35.485074830883157 3.6426459723079603 -8.374134216588901e-15 1;
	setAttr ".pm[2]" -type "matrix" -0.18375618967478902 0.10289865170247949 0.97757124049043898 0
		 -0.98220723152406331 -0.058439300674464248 -0.17847633590623563 0 0.038763605328179268 -0.99297367317290519 0.11180638303544999 0
		 31.26538804047749 3.6419527280103079 9.0391487410447606 1;
	setAttr ".pm[3]" -type "matrix" -0.18375618967478885 0.10289865170247954 0.97757124049043853 0
		 0.98220723152406308 0.058439300674462985 0.17847633590623563 0 -0.038763605328178019 0.9929736731729053 -0.11180638303544994 0
		 -31.26535421969038 -3.6419518145476033 -9.0391408345567115 1;
	setAttr ".pm[4]" -type "matrix" 4.8522687267504101e-16 1.2604744048799998e-15 -1 0
		 0.97960270064149069 -0.20094414372132918 2.2204460492503136e-16 0 -0.20094414372132918 -0.97960270064149069 -1.2767564783189296e-15 0
		 -39.08006358124554 7.6352055143849622 -8.5081738510660119e-15 1;
	setAttr ".pm[5]" -type "matrix" -0.13533596892965491 0.16136494439579097 0.97757124049043898 0
		 -0.93911952025366763 0.29359959843297934 -0.1784763359062356 0 -0.31581434766709637 -0.9422105022340479 0.11180638303544997 0
		 16.65163480305635 -2.419049332355061 9.0391487410447606 1;
	setAttr ".pm[6]" -type "matrix" -0.13533596892965494 0.16136496918238485 0.97757123639898458 0
		 0.93911952025366718 -0.29359959390766149 0.17847634335053608 0 0.31581434766709632 0.94221049939916524 -0.11180640692546251 0
		 -16.651602392431997 2.4190394210792405 -9.0391402481217735 1;
	setAttr ".pm[7]" -type "matrix" 2.2204460492503121e-16 1.3322676295501878e-15 -1 0
		 1 5.5511151231257544e-17 2.2204460492503131e-16 0 5.5511151231258123e-17 -1 -1.2767564783189296e-15 0
		 -43.898838853138187 -1.2107041645994421 -8.6742943468869127e-15 1;
	setAttr ".pm[8]" -type "matrix" 0.98480775301220846 -6.2801064510880155e-17 -0.17364817766693044 0
		 3.6370853166370436e-17 1.0000000000000004 4.6431368728476766e-17 0 0.17364817766693041 3.6486556217303373e-17 0.98480775301220813 0
		 8.6723007886028896 -3.4054462129044367 1.442023389691506 1;
	setAttr ".pm[9]" -type "matrix" 0.9848077530122078 -2.9888656494584887e-17 0.17364817766693044 0
		 2.2244236098325417e-16 1 -3.0250538016949983e-16 0 -0.17364817766693019 3.1000697460329653e-16 0.98480775301220791 0
		 -8.6722941638217748 -3.405446996235665 1.4420260975982464 1;
	setAttr ".pm[10]" -type "matrix" -2.2906054692117367e-16 1.3310793023587151e-15 -1 0
		 0.94422412180703397 0.32930351926108559 2.2204460492503123e-16 0 0.32930351926108559 -0.94422412180703397 -1.2767564783189298e-15 0
		 -48.862229846432967 -18.793639528335543 -1.3032180278899553e-14 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503121e-16 1.3322676295501878e-15 -1 0
		 1 5.5511151231257544e-17 2.2204460492503131e-16 0 5.5511151231258123e-17 -1 -1.2767564783189296e-15 0
		 -50.625873370797024 1.7368062488777625 -1.0157244001578962 1;
	setAttr ".pm[12]" -type "matrix" -2.2204460492503104e-16 -1.3322676295501878e-15 -1 0
		 -1 -1.7797583114599288e-16 2.2204460492503131e-16 0 -1.7797583114599344e-16 1 -1.2767564783189296e-15 0
		 50.62589409565966 -1.7368043908670137 1.0157258027320453 1;
	setAttr ".pm[13]" -type "matrix" 0.98480775301220846 -6.2801064510880155e-17 -0.17364817766693044 0
		 3.6370853166370436e-17 1.0000000000000004 4.6431368728476766e-17 0 0.17364817766693041 3.6486556217303373e-17 0.98480775301220813 0
		 8.6723007886028878 -1.1141759727946854 -3.5949759306889431 1;
	setAttr ".pm[14]" -type "matrix" 0.9848077530122078 5.1154424990342612e-17 -0.17364817766693044 0
		 2.2244236098325417e-16 -1 1.8004070025476451e-16 0 -0.17364817766693019 -1.8940280835310679e-16 -0.98480775301220791 0
		 -8.6722941638217748 1.114173016430041 3.5949755355976354 1;
	setAttr ".pm[15]" -type "matrix" -6.4455060120260963e-17 1.3491057736695385e-15 -1 0
		 0.97742469656079345 0.21128408021675726 2.2204460492503121e-16 0 0.21128408021675726 -0.97742469656079345 -1.2767564783189296e-15 0
		 -53.141764573171173 -12.383758155330097 -1.3032180278899535e-14 1;
	setAttr ".pm[16]" -type "matrix" -0.70710678118654813 0.11345594346820219 -0.69794537672495516 0
		 -0.68566502987478595 0.13120897610973153 0.71599418391146541 0 0.17281049391402301 0.98484108031701045 -0.014985983892138045 0
		 29.746782005946176 -4.1576070511766119 -40.9209142675195 1;
	setAttr ".pm[17]" -type "matrix" -0.70710678118654691 0.11345594346820302 -0.6979453767249556 0
		 0.68566502987478628 -0.13120897610973095 -0.71599418391146452 0 -0.17281049391402317 -0.98484108031701012 0.014985983892136935 0
		 -29.746769437850681 4.1576066712625579 40.9209030088292 1;
	setAttr ".pm[18]" -type "matrix" 2.2204460492503101e-16 1.3322676295501878e-15 -1 0
		 1 1.9428902930940215e-16 2.2204460492503118e-16 0 1.9428902930940272e-16 -1 -1.2767564783189294e-15 0
		 -56.869931567999153 -0.37654764944093289 -1.2228409148876488e-14 1;
	setAttr ".pm[19]" -type "matrix" -0.57792935374681975 0.42293015166342057 -0.69794537672495505 0
		 -0.55075630090509664 0.42897532052355863 0.71599418391146541 0 0.60221687048032646 0.79819186991328495 -0.014985983892138045 0
		 16.128426875719317 -12.916261040108267 -40.920914267519542 1;
	setAttr ".pm[20]" -type "matrix" -0.57792935374681875 0.42293015166342052 -0.69794537672495571 0
		 0.55075630090509753 -0.42897532052355802 -0.71599418391146441 0 -0.60221687048032602 -0.79819186991328495 0.014985983892136949 0
		 -16.128422928361321 12.916257633237544 40.920937462560204 1;
	setAttr ".pm[21]" -type "matrix" -0.57792935374681975 0.28439523170661818 -0.76492941782907165 0
		 -0.55075630090509664 0.55575405362145758 0.62273985651847685 0 0.60221687048032646 0.78118933944713886 -0.16455411524183938 0
		 6.1980389336600163 -20.368218943672115 -37.768858611408085 1;
	setAttr ".pm[22]" -type "matrix" -0.57792935374681875 0.28439523170661879 -0.76492941782907187 0
		 0.55075630090509753 -0.55575405362145613 -0.62273985651847674 0 -0.60221687048032591 -0.78118933944713931 0.16455411524183747 0
		 -6.1980363919754788 20.368212413383109 37.768865050449307 1;
	setAttr ".pm[23]" -type "matrix" -0.44630232917668178 -0.80727638182537331 -0.38615938978406728 0
		 -0.57539833436039278 0.5893647081328337 -0.56706789507323208 0 0.68536923463688904 -0.030888252693123584 -0.72754032744502295 0
		 5.7570851165089323 -38.276818909399239 19.255233018770337 1;
	setAttr ".pm[24]" -type "matrix" -0.42807002287424895 -0.85797663791030232 -0.28395799745133798 0
		 -0.65226654035645215 0.51078729305957826 -0.56003991070306258 0 0.62554329654138696 -0.054519996781021672 -0.77828218154030238 0
		 9.3631470180050265 -36.481055241559829 20.574753156507693 1;
	setAttr ".pm[25]" -type "matrix" -0.42537697590527407 -0.89813991266591964 -0.11135136122265497 0
		 -0.7356667238456791 0.41481353515510772 -0.53546634112546054 0 0.52711374464706362 -0.14585756178058273 -0.83718377425483692 0
		 13.355532194513687 -33.18251173248855 23.005237034176549 1;
	setAttr ".pm[26]" -type "matrix" -0.44631772687857246 -0.87287149765423577 0.19722027090741881 0
		 -0.83419531398152602 0.32605155717223755 -0.44475674272215732 0 0.32391150767641469 -0.36302304423880699 -0.87366790289353158 0
		 17.935926706298247 -27.867676962054457 25.911224796476379 1;
	setAttr ".pm[27]" -type "matrix" 0.2611683858478584 0.30716471814132201 -0.9151179760898519 0
		 -0.22313852001166976 0.94155485449395493 0.25235621027799193 0 0.93914869702333414 0.13829060672377816 0.31444464214125761 0
		 6.6330894299551799 -30.857096412102031 -29.210213474259977 1;
	setAttr ".pm[28]" -type "matrix" -0.57792935374681875 0.28439523170661879 -0.76492941782907187 0
		 0.55075630090509753 -0.55575405362145613 -0.62273985651847674 0 -0.60221687048032591 -0.78118933944713931 0.16455411524183747 0
		 -3.0893672451038694 20.368221009432922 37.7688956137453 1;
	setAttr ".pm[29]" -type "matrix" -0.44630232917667984 -0.80727638182537487 -0.38615938978406616 0
		 0.57539833436039434 -0.58936470813283148 0.56706789507323196 0 -0.68536923463688826 0.030888252693122606 0.72754032744502306 0
		 -5.7570984146645037 38.276859939074868 -19.255236311176606 1;
	setAttr ".pm[30]" -type "matrix" -0.42807002287424684 -0.8579766379103031 -0.28395799745133704 0
		 0.65226654035645315 -0.51078729305957626 0.56003991070306203 0 -0.62554329654138618 0.054519996781020742 0.77828218154030238 0
		 -9.3631634747126729 36.481023440543382 -20.574744074329725 1;
	setAttr ".pm[31]" -type "matrix" -0.42537697590527224 -0.89813991266592053 -0.11135136122265372 0
		 0.73566672384567999 -0.4148135351551055 0.53546634112546032 0 -0.52711374464706306 0.14585756178058262 0.83718377425483714 0
		 -13.355554271725264 33.182486577203953 -23.00522418418527 1;
	setAttr ".pm[32]" -type "matrix" -0.44631772687857008 -0.87287149765423655 0.19722027090741959 0
		 0.83419531398152658 -0.32605155717223522 0.44475674272215659 0 -0.32391150767641458 0.36302304423880655 0.87366790289353158 0
		 -17.935975286770226 27.867678643244325 -25.911204134152502 1;
	setAttr ".pm[33]" -type "matrix" 0.26116838584785967 0.30716471814132462 -0.91511797608985068 0
		 0.22313852001166984 -0.94155485449395371 -0.25235621027799443 0 -0.93914869702333359 -0.13829060672377702 -0.314444642141259 0
		 -6.633107566945732 30.85711026964259 29.210207059253353 1;
	setAttr ".pm[34]" -type "matrix" -0.20208014284941003 -0.9000247449640254 -0.38615938978406733 0
		 -0.71755407133159177 0.40441334930077616 -0.56706789507323196 0 0.66654314982709084 0.16249708108076755 -0.72754032744502284 0
		 14.906361650218077 -35.522319830339718 19.255233018770333 1;
	setAttr ".pm[35]" -type "matrix" -0.17035198408566329 -0.94358256512162408 -0.28395799745133798 0
		 -0.76931425180241142 0.30742621943061804 -0.56003991070306247 0 0.61574002914523474 0.12304902439716288 -0.77828218154030226 0
		 17.664748688489045 -32.845783760287084 20.57475315650769 1;
	setAttr ".pm[36]" -type "matrix" -0.031119369337440743 -0.99329374265919046 -0.11135136122265496 0
		 -0.84013080232971982 0.086348320762674693 -0.53546634112546054 0 0.54149036910074566 0.076886333607244506 -0.83718377425483692 0
		 23.996327598201969 -25.738801876959268 23.00523703417657 1;
	setAttr ".pm[37]" -type "matrix" -0.15815570626148695 -0.96751792609756571 0.19722027090741875 0
		 -0.893932233320756 0.055467125699308048 -0.44475674272215721 0 0.41937087977957671 -0.24664237398817451 -0.87366790289353158 0
		 24.6345521621123 -21.360167485185606 25.911224796476382 1;
	setAttr ".pm[38]" -type "matrix" 0.17304772413383882 0.3641614683204587 -0.9151179760898519 0
		 -0.45857616817414087 0.85207056111383928 0.25235621027799199 0 0.87164349544686071 0.37598162704291221 0.31444464214125756 0
		 12.720322654793963 -28.541105059414644 -29.210213474259955 1;
	setAttr ".pm[39]" -type "matrix" -0.20208014284940815 -0.90002474496402618 -0.38615938978406611 0
		 0.71755407133159232 -0.40441334930077383 0.56706789507323185 0 -0.66654314982709006 -0.16249708108076807 0.72754032744502306 0
		 -14.906395527705218 35.522315905428769 -19.255236108223706 1;
	setAttr ".pm[40]" -type "matrix" -0.17035198408566152 -0.94358256512162408 -0.28395799745133704 0
		 0.76931425180241186 -0.30742621943061627 0.56003991070306214 0 -0.61574002914523396 -0.12304902439716321 0.77828218154030226 0
		 -17.664768477221276 32.845774277149026 -20.574748205413396 1;
	setAttr ".pm[41]" -type "matrix" -0.031119369337438654 -0.99329374265919057 -0.11135136122265377 0
		 0.84013080232971982 -0.086348320762672334 0.53546634112546043 0 -0.54149036910074522 -0.076886333607244436 0.83718377425483714 0
		 -23.996318094620133 25.738805558916845 -23.005233049948441 1;
	setAttr ".pm[42]" -type "matrix" -0.15815570626148506 -0.96751792609756571 0.19722027090741967 0
		 0.89393223332075589 -0.055467125699306202 0.44475674272215665 0 -0.41937087977957654 0.24664237398817437 0.87366790289353158 0
		 -24.634533442776245 21.360137373128989 -25.91119659579676 1;
	setAttr ".pm[43]" -type "matrix" 0.17304772413383956 0.36416146832046148 -0.91511797608985068 0
		 0.45857616817414026 -0.85207056111383828 -0.25235621027799443 0 -0.87164349544686071 -0.37598162704291049 -0.31444464214125895 0
		 -12.720306972291766 28.541086254855564 29.210245412808131 1;
	setAttr ".pm[44]" -type "matrix" -0.096400926261501249 -0.91738093892206074 -0.38615938978406733 0
		 -0.75959146580424508 0.31851971281943159 -0.56706789507323208 0 0.64321665595138622 0.23865750658193313 -0.72754032744502295 0
		 17.809623433940249 -33.685124591512583 19.255233018770351 1;
	setAttr ".pm[45]" -type "matrix" -0.075747034434194185 -0.955840071590353 -0.28395799745133798 0
		 -0.79605503551189216 0.2294595364238903 -0.56003991070306247 0 0.60046545879891011 0.18362483134446286 -0.77828218154030226 0
		 19.652705790682539 -31.046592275066089 20.574753156507693 1;
	setAttr ".pm[46]" -type "matrix" 0.038625125256261758 -0.99303019795613467 -0.11135136122265496 0
		 -0.84411811510492119 0.027210389071592855 -0.53546634112546054 0 0.53476416058918308 0.11467615564611801 -0.83718377425483692 0
		 24.647794109780438 -24.069325387863557 23.00523703417657 1;
	setAttr ".pm[47]" -type "matrix" -0.013566407231725705 -0.98026533007039873 0.19722027090741884 0
		 -0.89232402135694244 -0.077131580513773432 -0.44475674272215732 0 0.45119152641001459 -0.18201813632003805 -0.87366790289353158 0
		 26.676317545765912 -17.614424403976511 25.91122479647639 1;
	setAttr ".pm[48]" -type "matrix" 0.1136032902761705 0.38685059425525209 -0.91511797608985179 0
		 -0.5869129859536425 0.76931754825501664 0.25235621027799188 0 0.80164046763958208 0.50842612803754372 0.31444464214125756 0
		 15.770001638988166 -26.388778640139844 -29.210213474259962 1;
	setAttr ".pm[49]" -type "matrix" -0.096400926261500333 -0.91738094888866795 -0.38615936610685997 0
		 0.75959146580424508 -0.31851969818365239 0.56706790329408807 0 -0.64321665595138533 -0.23865748780443097 0.72754033360467008 0
		 -17.809617296949863 33.685100399764494 -19.255226455896988 1;
	setAttr ".pm[50]" -type "matrix" -0.075747034434192381 -0.95584007159035278 -0.28395799745133704 0
		 0.79605503551189249 -0.22945953642388847 0.56003991070306214 0 -0.60046545879890934 -0.18362483134446317 0.77828218154030238 0
		 -19.652722691157447 31.04663754759283 -20.574761088698097 1;
	setAttr ".pm[51]" -type "matrix" 0.038625125256263437 -0.99303019795613467 -0.11135136122265374 0
		 0.84411811510492096 -0.027210389071590835 0.53546634112546032 0 -0.53476416058918264 -0.11467615564611763 0.83718377425483714 0
		 -24.647813581508508 24.069317204652027 -23.005230332409827 1;
	setAttr ".pm[52]" -type "matrix" -0.013566407231723527 -0.98026533007039829 0.19722027090741967 0
		 0.89232402135694178 0.077131580513775527 0.44475674272215665 0 -0.45119152641001431 0.18201813632003777 0.87366790289353169 0
		 -26.676304606226967 17.614400973600151 -25.911202506203704 1;
	setAttr ".pm[53]" -type "matrix" 0.1136032902761705 0.38685059425525509 -0.91511797608985057 0
		 0.5869129859536425 -0.76931754825501542 -0.25235621027799437 0 -0.80164046763958208 -0.50842612803754283 -0.31444464214125895 0
		 -15.770026250526874 26.388788362082316 29.21023204637212 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 54 ".ma";
	setAttr -s 54 ".dpf[0:53]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 54 ".lw";
	setAttr -s 54 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E4ED06C9-4D46-3294-53A8-1A9BB12EB9E2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4053165A-4522-E2EA-5932-A3B7986F4B7E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2186C7EA-4626-BBF7-0235-5793FDBEA53A";
createNode network -n "MetaRoot";
	rename -uid "996355C4-4E65-1BF0-1580-38BC166BFD97";
	addAttr -ci true -sn "version" -ln "version" -at "long";
	addAttr -ci true -sn "meta_type" -ln "meta_type" -dt "string";
	addAttr -s false -ci true -sn "meta_parent" -ln "meta_parent" -at "message";
	addAttr -ci true -sn "meta_children" -ln "meta_children" -dt "string";
	addAttr -ci true -sn "object_type" -ln "object_type" -dt "string";
	addAttr -ci true -sn "object_type_value" -ln "object_type_value" -dt "string";
	addAttr -ci true -sn "base_dir" -ln "base_dir" -dt "string";
	addAttr -ci true -sn "source_file_path" -ln "source_file_path" -dt "string";
	addAttr -ci true -sn "object_id" -ln "object_id" -dt "string";
	addAttr -s false -ci true -sn "root_joint" -ln "root_joint" -at "message";
	setAttr ".version" 1;
	setAttr ".meta_type" -type "string" "MetaRoot";
	setAttr ".object_type" -type "string" "character";
	setAttr ".object_type_value" -type "string" "greydude";
	setAttr ".base_dir" -type "string" "characters/greydude";
	setAttr ".source_file_path" -type "string" "characters/greydude/greydude_render.ma";
	setAttr ".object_id" -type "string" "characters/greydude";
createNode network -n "MetaAnimRender";
	rename -uid "50F1EEB4-4761-9499-BB4C-86A911E5E0B0";
	addAttr -ci true -sn "version" -ln "version" -at "long";
	addAttr -ci true -sn "meta_type" -ln "meta_type" -dt "string";
	addAttr -s false -ci true -sn "meta_parent" -ln "meta_parent" -at "message";
	addAttr -ci true -sn "meta_children" -ln "meta_children" -dt "string";
	addAttr -ci true -sn "group_skins" -ln "group_skins" -dt "string";
	setAttr ".version" 1;
	setAttr ".meta_type" -type "string" "MetaAnimRender";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "BC3730F7-4E36-4608-A2E9-D8AF4C1EAC9F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -613.49203911408006 -210.31745196019557 ;
	setAttr ".tgi[0].vh" -type "double2" 611.90473758985229 233.33332406150009 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 55.714286804199219;
	setAttr ".tgi[0].ni[0].y" 88.571426391601563;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" -251.42857360839844;
	setAttr ".tgi[0].ni[1].y" 38.571430206298828;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 55.714286804199219;
	setAttr ".tgi[0].ni[2].y" -12.857142448425293;
	setAttr ".tgi[0].ni[2].nvs" 18304;
select -ne :time1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".mcfr" 30;
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr ".ep" 1;
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3333332538604736;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
connectAttr "MetaRoot.root_joint" "b_root.metaroot";
connectAttr "b_root.s" "b_pelvis.is";
connectAttr "b_pelvis.s" "b_spine_1.is";
connectAttr "b_spine_1.s" "b_spine_2.is";
connectAttr "b_spine_2.s" "b_spine_3.is";
connectAttr "b_spine_3.s" "b_neck_1.is";
connectAttr "b_neck_1.s" "b_neck_2.is";
connectAttr "b_neck_2.s" "b_head.is";
connectAttr "b_head.s" "b_head_null.is";
connectAttr "b_spine_3.s" "b_r_clavicle.is";
connectAttr "b_r_clavicle.s" "b_r_upperarm.is";
connectAttr "b_r_upperarm.s" "b_r_forearm.is";
connectAttr "b_r_forearm.s" "b_r_hand.is";
connectAttr "b_r_hand.s" "b_r_hand_null.is";
connectAttr "b_r_hand.s" "b_r_index_1.is";
connectAttr "b_r_index_1.s" "b_r_index_2.is";
connectAttr "b_r_index_2.s" "b_r_index_3.is";
connectAttr "b_r_index_3.s" "b_r_index_null.is";
connectAttr "b_r_hand.s" "b_r_middle_1.is";
connectAttr "b_r_middle_1.s" "b_r_middle_2.is";
connectAttr "b_r_middle_2.s" "b_r_middle_3.is";
connectAttr "b_r_middle_3.s" "b_r_middle_null.is";
connectAttr "b_r_hand.s" "b_r_ring_1.is";
connectAttr "b_r_ring_1.s" "b_r_ring_2.is";
connectAttr "b_r_ring_2.s" "b_r_ring_3.is";
connectAttr "b_r_ring_3.s" "b_r_ring_null.is";
connectAttr "b_r_hand.s" "b_r_pinky_1.is";
connectAttr "b_r_pinky_1.s" "b_r_pinky_2.is";
connectAttr "b_r_pinky_2.s" "b_r_pinky_3.is";
connectAttr "b_r_pinky_3.s" "b_r_pinky_null.is";
connectAttr "b_r_hand.s" "b_r_thumb_1.is";
connectAttr "b_r_thumb_1.s" "b_r_thumb_2.is";
connectAttr "b_r_thumb_2.s" "b_r_thumb_3.is";
connectAttr "b_r_thumb_3.s" "b_r_thumb_null.is";
connectAttr "b_r_hand.s" "b_r_grip.is";
connectAttr "b_spine_3.s" "b_l_clavicle.is";
connectAttr "b_l_clavicle.s" "b_l_upperarm.is";
connectAttr "b_l_upperarm.s" "b_l_forearm.is";
connectAttr "b_l_forearm.s" "b_l_hand.is";
connectAttr "b_l_hand.s" "b_l_hand_null.is";
connectAttr "b_l_hand.s" "b_l_index_1.is";
connectAttr "b_l_index_1.s" "b_l_index_2.is";
connectAttr "b_l_index_2.s" "b_l_index_3.is";
connectAttr "b_l_index_3.s" "b_l_index_null.is";
connectAttr "b_l_hand.s" "b_l_middle_1.is";
connectAttr "b_l_middle_1.s" "b_l_middle_2.is";
connectAttr "b_l_middle_2.s" "b_l_middle_3.is";
connectAttr "b_l_middle_3.s" "b_l_middle_null.is";
connectAttr "b_l_hand.s" "b_l_ring_1.is";
connectAttr "b_l_ring_1.s" "b_l_ring_2.is";
connectAttr "b_l_ring_2.s" "b_l_ring_3.is";
connectAttr "b_l_ring_3.s" "b_l_ring_null.is";
connectAttr "b_l_hand.s" "b_l_pinky_1.is";
connectAttr "b_l_pinky_1.s" "b_l_pinky_2.is";
connectAttr "b_l_pinky_2.s" "b_l_pinky_3.is";
connectAttr "b_l_pinky_3.s" "b_l_pinky_null.is";
connectAttr "b_l_hand.s" "b_l_thumb_1.is";
connectAttr "b_l_thumb_1.s" "b_l_thumb_2.is";
connectAttr "b_l_thumb_2.s" "b_l_thumb_3.is";
connectAttr "b_l_thumb_3.s" "b_l_thumb_null.is";
connectAttr "b_l_hand.s" "b_l_grip.is";
connectAttr "b_pelvis.s" "b_r_thigh.is";
connectAttr "b_r_thigh.s" "b_r_calf.is";
connectAttr "b_r_calf.s" "b_r_foot.is";
connectAttr "b_r_foot.s" "b_r_toe.is";
connectAttr "b_r_toe.s" "b_r_ball_contact.is";
connectAttr "b_r_toe.s" "b_r_toe_contact.is";
connectAttr "b_r_foot.s" "b_r_heel_contact.is";
connectAttr "b_pelvis.s" "b_cog_null.is";
connectAttr "b_pelvis.s" "b_l_thigh.is";
connectAttr "b_l_thigh.s" "b_l_calf.is";
connectAttr "b_l_calf.s" "b_l_foot.is";
connectAttr "b_l_foot.s" "b_l_toe.is";
connectAttr "b_l_toe.s" "b_l_ball_contact.is";
connectAttr "b_l_toe.s" "b_l_toe_contact.is";
connectAttr "b_l_foot.s" "b_l_heel_contact.is";
connectAttr "b_root.s" "b_aim.is";
connectAttr "MetaAnimRender.group_skins" "group_skins.meta_parent";
connectAttr "skinCluster4GroupId.id" "greydude_meshShape.iog.og[5].gid";
connectAttr "skinCluster4Set.mwc" "greydude_meshShape.iog.og[5].gco";
connectAttr "groupId9.id" "greydude_meshShape.iog.og[6].gid";
connectAttr "tweakSet4.mwc" "greydude_meshShape.iog.og[6].gco";
connectAttr "skinCluster4.og[0]" "greydude_meshShape.i";
connectAttr "tweak4.vl[0].vt[0]" "greydude_meshShape.twl";
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "grey_material.msg" "materialInfo2.m";
connectAttr "grey_material.oc" "lambert2SG.ss";
connectAttr "greydude_meshShape.iog" "lambert2SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "b_root.msg" "bindPose3.m[0]";
connectAttr "b_pelvis.msg" "bindPose3.m[1]";
connectAttr "b_spine_1.msg" "bindPose3.m[2]";
connectAttr "b_r_thigh.msg" "bindPose3.m[3]";
connectAttr "b_l_thigh.msg" "bindPose3.m[4]";
connectAttr "b_spine_2.msg" "bindPose3.m[5]";
connectAttr "b_r_calf.msg" "bindPose3.m[6]";
connectAttr "b_l_calf.msg" "bindPose3.m[7]";
connectAttr "b_spine_3.msg" "bindPose3.m[8]";
connectAttr "b_r_foot.msg" "bindPose3.m[9]";
connectAttr "b_l_foot.msg" "bindPose3.m[10]";
connectAttr "b_neck_1.msg" "bindPose3.m[11]";
connectAttr "b_r_clavicle.msg" "bindPose3.m[12]";
connectAttr "b_l_clavicle.msg" "bindPose3.m[13]";
connectAttr "b_r_toe.msg" "bindPose3.m[14]";
connectAttr "b_l_toe.msg" "bindPose3.m[15]";
connectAttr "b_neck_2.msg" "bindPose3.m[16]";
connectAttr "b_r_upperarm.msg" "bindPose3.m[17]";
connectAttr "b_l_upperarm.msg" "bindPose3.m[18]";
connectAttr "b_head.msg" "bindPose3.m[19]";
connectAttr "b_r_forearm.msg" "bindPose3.m[20]";
connectAttr "b_l_forearm.msg" "bindPose3.m[21]";
connectAttr "b_r_hand.msg" "bindPose3.m[22]";
connectAttr "b_l_hand.msg" "bindPose3.m[23]";
connectAttr "b_r_index_1.msg" "bindPose3.m[24]";
connectAttr "b_r_middle_1.msg" "bindPose3.m[25]";
connectAttr "b_r_ring_1.msg" "bindPose3.m[26]";
connectAttr "b_r_pinky_1.msg" "bindPose3.m[27]";
connectAttr "b_r_thumb_1.msg" "bindPose3.m[28]";
connectAttr "b_l_hand_null.msg" "bindPose3.m[29]";
connectAttr "b_l_index_1.msg" "bindPose3.m[30]";
connectAttr "b_l_middle_1.msg" "bindPose3.m[31]";
connectAttr "b_l_ring_1.msg" "bindPose3.m[32]";
connectAttr "b_l_pinky_1.msg" "bindPose3.m[33]";
connectAttr "b_l_thumb_1.msg" "bindPose3.m[34]";
connectAttr "b_r_index_2.msg" "bindPose3.m[35]";
connectAttr "b_r_middle_2.msg" "bindPose3.m[36]";
connectAttr "b_r_ring_2.msg" "bindPose3.m[37]";
connectAttr "b_r_pinky_2.msg" "bindPose3.m[38]";
connectAttr "b_r_thumb_2.msg" "bindPose3.m[39]";
connectAttr "b_l_index_2.msg" "bindPose3.m[40]";
connectAttr "b_l_middle_2.msg" "bindPose3.m[41]";
connectAttr "b_l_ring_2.msg" "bindPose3.m[42]";
connectAttr "b_l_pinky_2.msg" "bindPose3.m[43]";
connectAttr "b_l_thumb_2.msg" "bindPose3.m[44]";
connectAttr "b_r_index_3.msg" "bindPose3.m[45]";
connectAttr "b_r_middle_3.msg" "bindPose3.m[46]";
connectAttr "b_r_ring_3.msg" "bindPose3.m[47]";
connectAttr "b_r_pinky_3.msg" "bindPose3.m[48]";
connectAttr "b_r_thumb_3.msg" "bindPose3.m[49]";
connectAttr "b_l_index_3.msg" "bindPose3.m[50]";
connectAttr "b_l_middle_3.msg" "bindPose3.m[51]";
connectAttr "b_l_ring_3.msg" "bindPose3.m[52]";
connectAttr "b_l_pinky_3.msg" "bindPose3.m[53]";
connectAttr "b_l_thumb_3.msg" "bindPose3.m[54]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[1]" "bindPose3.p[3]";
connectAttr "bindPose3.m[1]" "bindPose3.p[4]";
connectAttr "bindPose3.m[2]" "bindPose3.p[5]";
connectAttr "bindPose3.m[3]" "bindPose3.p[6]";
connectAttr "bindPose3.m[4]" "bindPose3.p[7]";
connectAttr "bindPose3.m[5]" "bindPose3.p[8]";
connectAttr "bindPose3.m[6]" "bindPose3.p[9]";
connectAttr "bindPose3.m[7]" "bindPose3.p[10]";
connectAttr "bindPose3.m[8]" "bindPose3.p[11]";
connectAttr "bindPose3.m[8]" "bindPose3.p[12]";
connectAttr "bindPose3.m[8]" "bindPose3.p[13]";
connectAttr "bindPose3.m[9]" "bindPose3.p[14]";
connectAttr "bindPose3.m[10]" "bindPose3.p[15]";
connectAttr "bindPose3.m[11]" "bindPose3.p[16]";
connectAttr "bindPose3.m[12]" "bindPose3.p[17]";
connectAttr "bindPose3.m[13]" "bindPose3.p[18]";
connectAttr "bindPose3.m[16]" "bindPose3.p[19]";
connectAttr "bindPose3.m[17]" "bindPose3.p[20]";
connectAttr "bindPose3.m[18]" "bindPose3.p[21]";
connectAttr "bindPose3.m[20]" "bindPose3.p[22]";
connectAttr "bindPose3.m[21]" "bindPose3.p[23]";
connectAttr "bindPose3.m[22]" "bindPose3.p[24]";
connectAttr "bindPose3.m[22]" "bindPose3.p[25]";
connectAttr "bindPose3.m[22]" "bindPose3.p[26]";
connectAttr "bindPose3.m[22]" "bindPose3.p[27]";
connectAttr "bindPose3.m[22]" "bindPose3.p[28]";
connectAttr "bindPose3.m[23]" "bindPose3.p[29]";
connectAttr "bindPose3.m[23]" "bindPose3.p[30]";
connectAttr "bindPose3.m[23]" "bindPose3.p[31]";
connectAttr "bindPose3.m[23]" "bindPose3.p[32]";
connectAttr "bindPose3.m[23]" "bindPose3.p[33]";
connectAttr "bindPose3.m[23]" "bindPose3.p[34]";
connectAttr "bindPose3.m[24]" "bindPose3.p[35]";
connectAttr "bindPose3.m[25]" "bindPose3.p[36]";
connectAttr "bindPose3.m[26]" "bindPose3.p[37]";
connectAttr "bindPose3.m[27]" "bindPose3.p[38]";
connectAttr "bindPose3.m[28]" "bindPose3.p[39]";
connectAttr "bindPose3.m[30]" "bindPose3.p[40]";
connectAttr "bindPose3.m[31]" "bindPose3.p[41]";
connectAttr "bindPose3.m[32]" "bindPose3.p[42]";
connectAttr "bindPose3.m[33]" "bindPose3.p[43]";
connectAttr "bindPose3.m[34]" "bindPose3.p[44]";
connectAttr "bindPose3.m[35]" "bindPose3.p[45]";
connectAttr "bindPose3.m[36]" "bindPose3.p[46]";
connectAttr "bindPose3.m[37]" "bindPose3.p[47]";
connectAttr "bindPose3.m[38]" "bindPose3.p[48]";
connectAttr "bindPose3.m[39]" "bindPose3.p[49]";
connectAttr "bindPose3.m[40]" "bindPose3.p[50]";
connectAttr "bindPose3.m[41]" "bindPose3.p[51]";
connectAttr "bindPose3.m[42]" "bindPose3.p[52]";
connectAttr "bindPose3.m[43]" "bindPose3.p[53]";
connectAttr "bindPose3.m[44]" "bindPose3.p[54]";
connectAttr "b_root.msg" "bindPose2.m[0]";
connectAttr "b_pelvis.msg" "bindPose2.m[1]";
connectAttr "b_spine_1.msg" "bindPose2.m[2]";
connectAttr "b_r_thigh.msg" "bindPose2.m[3]";
connectAttr "b_l_thigh.msg" "bindPose2.m[4]";
connectAttr "b_spine_2.msg" "bindPose2.m[5]";
connectAttr "b_r_calf.msg" "bindPose2.m[6]";
connectAttr "b_l_calf.msg" "bindPose2.m[7]";
connectAttr "b_spine_3.msg" "bindPose2.m[8]";
connectAttr "b_r_foot.msg" "bindPose2.m[9]";
connectAttr "b_l_foot.msg" "bindPose2.m[10]";
connectAttr "b_neck_1.msg" "bindPose2.m[11]";
connectAttr "b_r_clavicle.msg" "bindPose2.m[12]";
connectAttr "b_l_clavicle.msg" "bindPose2.m[13]";
connectAttr "b_r_toe.msg" "bindPose2.m[14]";
connectAttr "b_l_toe.msg" "bindPose2.m[15]";
connectAttr "b_neck_2.msg" "bindPose2.m[16]";
connectAttr "b_r_upperarm.msg" "bindPose2.m[17]";
connectAttr "b_l_upperarm.msg" "bindPose2.m[18]";
connectAttr "b_head.msg" "bindPose2.m[19]";
connectAttr "b_r_forearm.msg" "bindPose2.m[20]";
connectAttr "b_l_forearm.msg" "bindPose2.m[21]";
connectAttr "b_r_hand.msg" "bindPose2.m[22]";
connectAttr "b_l_hand.msg" "bindPose2.m[23]";
connectAttr "b_r_index_1.msg" "bindPose2.m[24]";
connectAttr "b_r_middle_1.msg" "bindPose2.m[25]";
connectAttr "b_r_ring_1.msg" "bindPose2.m[26]";
connectAttr "b_r_pinky_1.msg" "bindPose2.m[27]";
connectAttr "b_r_thumb_1.msg" "bindPose2.m[28]";
connectAttr "b_l_hand_null.msg" "bindPose2.m[29]";
connectAttr "b_l_index_1.msg" "bindPose2.m[30]";
connectAttr "b_l_middle_1.msg" "bindPose2.m[31]";
connectAttr "b_l_ring_1.msg" "bindPose2.m[32]";
connectAttr "b_l_pinky_1.msg" "bindPose2.m[33]";
connectAttr "b_l_thumb_1.msg" "bindPose2.m[34]";
connectAttr "b_r_index_2.msg" "bindPose2.m[35]";
connectAttr "b_r_middle_2.msg" "bindPose2.m[36]";
connectAttr "b_r_ring_2.msg" "bindPose2.m[37]";
connectAttr "b_r_pinky_2.msg" "bindPose2.m[38]";
connectAttr "b_r_thumb_2.msg" "bindPose2.m[39]";
connectAttr "b_l_index_2.msg" "bindPose2.m[40]";
connectAttr "b_l_middle_2.msg" "bindPose2.m[41]";
connectAttr "b_l_ring_2.msg" "bindPose2.m[42]";
connectAttr "b_l_pinky_2.msg" "bindPose2.m[43]";
connectAttr "b_l_thumb_2.msg" "bindPose2.m[44]";
connectAttr "b_r_index_3.msg" "bindPose2.m[45]";
connectAttr "b_r_middle_3.msg" "bindPose2.m[46]";
connectAttr "b_r_ring_3.msg" "bindPose2.m[47]";
connectAttr "b_r_pinky_3.msg" "bindPose2.m[48]";
connectAttr "b_r_thumb_3.msg" "bindPose2.m[49]";
connectAttr "b_l_index_3.msg" "bindPose2.m[50]";
connectAttr "b_l_middle_3.msg" "bindPose2.m[51]";
connectAttr "b_l_ring_3.msg" "bindPose2.m[52]";
connectAttr "b_l_pinky_3.msg" "bindPose2.m[53]";
connectAttr "b_l_thumb_3.msg" "bindPose2.m[54]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[1]" "bindPose2.p[3]";
connectAttr "bindPose2.m[1]" "bindPose2.p[4]";
connectAttr "bindPose2.m[2]" "bindPose2.p[5]";
connectAttr "bindPose2.m[3]" "bindPose2.p[6]";
connectAttr "bindPose2.m[4]" "bindPose2.p[7]";
connectAttr "bindPose2.m[5]" "bindPose2.p[8]";
connectAttr "bindPose2.m[6]" "bindPose2.p[9]";
connectAttr "bindPose2.m[7]" "bindPose2.p[10]";
connectAttr "bindPose2.m[8]" "bindPose2.p[11]";
connectAttr "bindPose2.m[8]" "bindPose2.p[12]";
connectAttr "bindPose2.m[8]" "bindPose2.p[13]";
connectAttr "bindPose2.m[9]" "bindPose2.p[14]";
connectAttr "bindPose2.m[10]" "bindPose2.p[15]";
connectAttr "bindPose2.m[11]" "bindPose2.p[16]";
connectAttr "bindPose2.m[12]" "bindPose2.p[17]";
connectAttr "bindPose2.m[13]" "bindPose2.p[18]";
connectAttr "bindPose2.m[16]" "bindPose2.p[19]";
connectAttr "bindPose2.m[17]" "bindPose2.p[20]";
connectAttr "bindPose2.m[18]" "bindPose2.p[21]";
connectAttr "bindPose2.m[20]" "bindPose2.p[22]";
connectAttr "bindPose2.m[21]" "bindPose2.p[23]";
connectAttr "bindPose2.m[22]" "bindPose2.p[24]";
connectAttr "bindPose2.m[22]" "bindPose2.p[25]";
connectAttr "bindPose2.m[22]" "bindPose2.p[26]";
connectAttr "bindPose2.m[22]" "bindPose2.p[27]";
connectAttr "bindPose2.m[22]" "bindPose2.p[28]";
connectAttr "bindPose2.m[23]" "bindPose2.p[29]";
connectAttr "bindPose2.m[23]" "bindPose2.p[30]";
connectAttr "bindPose2.m[23]" "bindPose2.p[31]";
connectAttr "bindPose2.m[23]" "bindPose2.p[32]";
connectAttr "bindPose2.m[23]" "bindPose2.p[33]";
connectAttr "bindPose2.m[23]" "bindPose2.p[34]";
connectAttr "bindPose2.m[24]" "bindPose2.p[35]";
connectAttr "bindPose2.m[25]" "bindPose2.p[36]";
connectAttr "bindPose2.m[26]" "bindPose2.p[37]";
connectAttr "bindPose2.m[27]" "bindPose2.p[38]";
connectAttr "bindPose2.m[28]" "bindPose2.p[39]";
connectAttr "bindPose2.m[30]" "bindPose2.p[40]";
connectAttr "bindPose2.m[31]" "bindPose2.p[41]";
connectAttr "bindPose2.m[32]" "bindPose2.p[42]";
connectAttr "bindPose2.m[33]" "bindPose2.p[43]";
connectAttr "bindPose2.m[34]" "bindPose2.p[44]";
connectAttr "bindPose2.m[35]" "bindPose2.p[45]";
connectAttr "bindPose2.m[36]" "bindPose2.p[46]";
connectAttr "bindPose2.m[37]" "bindPose2.p[47]";
connectAttr "bindPose2.m[38]" "bindPose2.p[48]";
connectAttr "bindPose2.m[39]" "bindPose2.p[49]";
connectAttr "bindPose2.m[40]" "bindPose2.p[50]";
connectAttr "bindPose2.m[41]" "bindPose2.p[51]";
connectAttr "bindPose2.m[42]" "bindPose2.p[52]";
connectAttr "bindPose2.m[43]" "bindPose2.p[53]";
connectAttr "bindPose2.m[44]" "bindPose2.p[54]";
connectAttr "b_root.bps" "bindPose2.wm[0]";
connectAttr "b_pelvis.bps" "bindPose2.wm[1]";
connectAttr "b_spine_1.bps" "bindPose2.wm[2]";
connectAttr "b_r_thigh.bps" "bindPose2.wm[3]";
connectAttr "b_l_thigh.bps" "bindPose2.wm[4]";
connectAttr "b_spine_2.bps" "bindPose2.wm[5]";
connectAttr "b_r_calf.bps" "bindPose2.wm[6]";
connectAttr "b_l_calf.bps" "bindPose2.wm[7]";
connectAttr "b_spine_3.bps" "bindPose2.wm[8]";
connectAttr "b_r_foot.bps" "bindPose2.wm[9]";
connectAttr "b_l_foot.bps" "bindPose2.wm[10]";
connectAttr "b_neck_1.bps" "bindPose2.wm[11]";
connectAttr "b_r_clavicle.bps" "bindPose2.wm[12]";
connectAttr "b_l_clavicle.bps" "bindPose2.wm[13]";
connectAttr "b_r_toe.bps" "bindPose2.wm[14]";
connectAttr "b_l_toe.bps" "bindPose2.wm[15]";
connectAttr "b_neck_2.bps" "bindPose2.wm[16]";
connectAttr "b_r_upperarm.bps" "bindPose2.wm[17]";
connectAttr "b_l_upperarm.bps" "bindPose2.wm[18]";
connectAttr "b_head.bps" "bindPose2.wm[19]";
connectAttr "b_r_forearm.bps" "bindPose2.wm[20]";
connectAttr "b_l_forearm.bps" "bindPose2.wm[21]";
connectAttr "b_r_hand.bps" "bindPose2.wm[22]";
connectAttr "b_l_hand.bps" "bindPose2.wm[23]";
connectAttr "b_r_index_1.bps" "bindPose2.wm[24]";
connectAttr "b_r_middle_1.bps" "bindPose2.wm[25]";
connectAttr "b_r_ring_1.bps" "bindPose2.wm[26]";
connectAttr "b_r_pinky_1.bps" "bindPose2.wm[27]";
connectAttr "b_r_thumb_1.bps" "bindPose2.wm[28]";
connectAttr "b_l_hand_null.bps" "bindPose2.wm[29]";
connectAttr "b_l_index_1.bps" "bindPose2.wm[30]";
connectAttr "b_l_middle_1.bps" "bindPose2.wm[31]";
connectAttr "b_l_ring_1.bps" "bindPose2.wm[32]";
connectAttr "b_l_pinky_1.bps" "bindPose2.wm[33]";
connectAttr "b_l_thumb_1.bps" "bindPose2.wm[34]";
connectAttr "b_r_index_2.bps" "bindPose2.wm[35]";
connectAttr "b_r_middle_2.bps" "bindPose2.wm[36]";
connectAttr "b_r_ring_2.bps" "bindPose2.wm[37]";
connectAttr "b_r_pinky_2.bps" "bindPose2.wm[38]";
connectAttr "b_r_thumb_2.bps" "bindPose2.wm[39]";
connectAttr "b_l_index_2.bps" "bindPose2.wm[40]";
connectAttr "b_l_middle_2.bps" "bindPose2.wm[41]";
connectAttr "b_l_ring_2.bps" "bindPose2.wm[42]";
connectAttr "b_l_pinky_2.bps" "bindPose2.wm[43]";
connectAttr "b_l_thumb_2.bps" "bindPose2.wm[44]";
connectAttr "b_r_index_3.bps" "bindPose2.wm[45]";
connectAttr "b_r_middle_3.bps" "bindPose2.wm[46]";
connectAttr "b_r_ring_3.bps" "bindPose2.wm[47]";
connectAttr "b_r_pinky_3.bps" "bindPose2.wm[48]";
connectAttr "b_r_thumb_3.bps" "bindPose2.wm[49]";
connectAttr "b_l_index_3.bps" "bindPose2.wm[50]";
connectAttr "b_l_middle_3.bps" "bindPose2.wm[51]";
connectAttr "b_l_ring_3.bps" "bindPose2.wm[52]";
connectAttr "b_l_pinky_3.bps" "bindPose2.wm[53]";
connectAttr "b_l_thumb_3.bps" "bindPose2.wm[54]";
connectAttr "groupId9.msg" "tweakSet4.gn" -na;
connectAttr "greydude_meshShape.iog.og[6]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "greydude_meshShape.iog.og[5]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "greydude_meshShapeOrig2.w" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "groupParts9.og" "tweak4.ip[0].ig";
connectAttr "groupId9.id" "tweak4.ip[0].gi";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster4.bp";
connectAttr "b_pelvis.wm" "skinCluster4.ma[0]";
connectAttr "b_spine_1.wm" "skinCluster4.ma[1]";
connectAttr "b_r_thigh.wm" "skinCluster4.ma[2]";
connectAttr "b_l_thigh.wm" "skinCluster4.ma[3]";
connectAttr "b_spine_2.wm" "skinCluster4.ma[4]";
connectAttr "b_r_calf.wm" "skinCluster4.ma[5]";
connectAttr "b_l_calf.wm" "skinCluster4.ma[6]";
connectAttr "b_spine_3.wm" "skinCluster4.ma[7]";
connectAttr "b_r_foot.wm" "skinCluster4.ma[8]";
connectAttr "b_l_foot.wm" "skinCluster4.ma[9]";
connectAttr "b_neck_1.wm" "skinCluster4.ma[10]";
connectAttr "b_r_clavicle.wm" "skinCluster4.ma[11]";
connectAttr "b_l_clavicle.wm" "skinCluster4.ma[12]";
connectAttr "b_r_toe.wm" "skinCluster4.ma[13]";
connectAttr "b_l_toe.wm" "skinCluster4.ma[14]";
connectAttr "b_neck_2.wm" "skinCluster4.ma[15]";
connectAttr "b_r_upperarm.wm" "skinCluster4.ma[16]";
connectAttr "b_l_upperarm.wm" "skinCluster4.ma[17]";
connectAttr "b_head.wm" "skinCluster4.ma[18]";
connectAttr "b_r_forearm.wm" "skinCluster4.ma[19]";
connectAttr "b_l_forearm.wm" "skinCluster4.ma[20]";
connectAttr "b_r_hand.wm" "skinCluster4.ma[21]";
connectAttr "b_l_hand.wm" "skinCluster4.ma[22]";
connectAttr "b_r_index_1.wm" "skinCluster4.ma[23]";
connectAttr "b_r_middle_1.wm" "skinCluster4.ma[24]";
connectAttr "b_r_ring_1.wm" "skinCluster4.ma[25]";
connectAttr "b_r_pinky_1.wm" "skinCluster4.ma[26]";
connectAttr "b_r_thumb_1.wm" "skinCluster4.ma[27]";
connectAttr "b_l_hand_null.wm" "skinCluster4.ma[28]";
connectAttr "b_l_index_1.wm" "skinCluster4.ma[29]";
connectAttr "b_l_middle_1.wm" "skinCluster4.ma[30]";
connectAttr "b_l_ring_1.wm" "skinCluster4.ma[31]";
connectAttr "b_l_pinky_1.wm" "skinCluster4.ma[32]";
connectAttr "b_l_thumb_1.wm" "skinCluster4.ma[33]";
connectAttr "b_r_index_2.wm" "skinCluster4.ma[34]";
connectAttr "b_r_middle_2.wm" "skinCluster4.ma[35]";
connectAttr "b_r_ring_2.wm" "skinCluster4.ma[36]";
connectAttr "b_r_pinky_2.wm" "skinCluster4.ma[37]";
connectAttr "b_r_thumb_2.wm" "skinCluster4.ma[38]";
connectAttr "b_l_index_2.wm" "skinCluster4.ma[39]";
connectAttr "b_l_middle_2.wm" "skinCluster4.ma[40]";
connectAttr "b_l_ring_2.wm" "skinCluster4.ma[41]";
connectAttr "b_l_pinky_2.wm" "skinCluster4.ma[42]";
connectAttr "b_l_thumb_2.wm" "skinCluster4.ma[43]";
connectAttr "b_r_index_3.wm" "skinCluster4.ma[44]";
connectAttr "b_r_middle_3.wm" "skinCluster4.ma[45]";
connectAttr "b_r_ring_3.wm" "skinCluster4.ma[46]";
connectAttr "b_r_pinky_3.wm" "skinCluster4.ma[47]";
connectAttr "b_r_thumb_3.wm" "skinCluster4.ma[48]";
connectAttr "b_l_index_3.wm" "skinCluster4.ma[49]";
connectAttr "b_l_middle_3.wm" "skinCluster4.ma[50]";
connectAttr "b_l_ring_3.wm" "skinCluster4.ma[51]";
connectAttr "b_l_pinky_3.wm" "skinCluster4.ma[52]";
connectAttr "b_l_thumb_3.wm" "skinCluster4.ma[53]";
connectAttr "b_pelvis.liw" "skinCluster4.lw[0]";
connectAttr "b_spine_1.liw" "skinCluster4.lw[1]";
connectAttr "b_r_thigh.liw" "skinCluster4.lw[2]";
connectAttr "b_l_thigh.liw" "skinCluster4.lw[3]";
connectAttr "b_spine_2.liw" "skinCluster4.lw[4]";
connectAttr "b_r_calf.liw" "skinCluster4.lw[5]";
connectAttr "b_l_calf.liw" "skinCluster4.lw[6]";
connectAttr "b_spine_3.liw" "skinCluster4.lw[7]";
connectAttr "b_r_foot.liw" "skinCluster4.lw[8]";
connectAttr "b_l_foot.liw" "skinCluster4.lw[9]";
connectAttr "b_neck_1.liw" "skinCluster4.lw[10]";
connectAttr "b_r_clavicle.liw" "skinCluster4.lw[11]";
connectAttr "b_l_clavicle.liw" "skinCluster4.lw[12]";
connectAttr "b_r_toe.liw" "skinCluster4.lw[13]";
connectAttr "b_l_toe.liw" "skinCluster4.lw[14]";
connectAttr "b_neck_2.liw" "skinCluster4.lw[15]";
connectAttr "b_r_upperarm.liw" "skinCluster4.lw[16]";
connectAttr "b_l_upperarm.liw" "skinCluster4.lw[17]";
connectAttr "b_head.liw" "skinCluster4.lw[18]";
connectAttr "b_r_forearm.liw" "skinCluster4.lw[19]";
connectAttr "b_l_forearm.liw" "skinCluster4.lw[20]";
connectAttr "b_r_hand.liw" "skinCluster4.lw[21]";
connectAttr "b_l_hand.liw" "skinCluster4.lw[22]";
connectAttr "b_r_index_1.liw" "skinCluster4.lw[23]";
connectAttr "b_r_middle_1.liw" "skinCluster4.lw[24]";
connectAttr "b_r_ring_1.liw" "skinCluster4.lw[25]";
connectAttr "b_r_pinky_1.liw" "skinCluster4.lw[26]";
connectAttr "b_r_thumb_1.liw" "skinCluster4.lw[27]";
connectAttr "b_l_hand_null.liw" "skinCluster4.lw[28]";
connectAttr "b_l_index_1.liw" "skinCluster4.lw[29]";
connectAttr "b_l_middle_1.liw" "skinCluster4.lw[30]";
connectAttr "b_l_ring_1.liw" "skinCluster4.lw[31]";
connectAttr "b_l_pinky_1.liw" "skinCluster4.lw[32]";
connectAttr "b_l_thumb_1.liw" "skinCluster4.lw[33]";
connectAttr "b_r_index_2.liw" "skinCluster4.lw[34]";
connectAttr "b_r_middle_2.liw" "skinCluster4.lw[35]";
connectAttr "b_r_ring_2.liw" "skinCluster4.lw[36]";
connectAttr "b_r_pinky_2.liw" "skinCluster4.lw[37]";
connectAttr "b_r_thumb_2.liw" "skinCluster4.lw[38]";
connectAttr "b_l_index_2.liw" "skinCluster4.lw[39]";
connectAttr "b_l_middle_2.liw" "skinCluster4.lw[40]";
connectAttr "b_l_ring_2.liw" "skinCluster4.lw[41]";
connectAttr "b_l_pinky_2.liw" "skinCluster4.lw[42]";
connectAttr "b_l_thumb_2.liw" "skinCluster4.lw[43]";
connectAttr "b_r_index_3.liw" "skinCluster4.lw[44]";
connectAttr "b_r_middle_3.liw" "skinCluster4.lw[45]";
connectAttr "b_r_ring_3.liw" "skinCluster4.lw[46]";
connectAttr "b_r_pinky_3.liw" "skinCluster4.lw[47]";
connectAttr "b_r_thumb_3.liw" "skinCluster4.lw[48]";
connectAttr "b_l_index_3.liw" "skinCluster4.lw[49]";
connectAttr "b_l_middle_3.liw" "skinCluster4.lw[50]";
connectAttr "b_l_ring_3.liw" "skinCluster4.lw[51]";
connectAttr "b_l_pinky_3.liw" "skinCluster4.lw[52]";
connectAttr "b_l_thumb_3.liw" "skinCluster4.lw[53]";
connectAttr "MetaRoot.meta_children" "MetaAnimRender.meta_parent";
connectAttr "MetaAnimRender.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "MetaRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "b_root.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "grey_material.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of greydude_render.ma
