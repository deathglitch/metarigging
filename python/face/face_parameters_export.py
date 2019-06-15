'''
purpose: Creating Face Parameters
'''

import os
import metautil.json_util


class DefaultFaceParameters():
	def __init__(self):
		'''
		parameter: [pose_frame, pose_sdk_multiplier, control_opposite_parameter(if any), mirror_parameter(if any), regions]
		control_opposite_parameter means if this parameter has a value, the control_opposite_parameter must equal 0
		'''
		self.pose_data = {}
		face_regions = {}
		###### Phonemes #####
		phonemes = ["p", 1, 1.0, None, None, "center", "p"],\
					["td", 2, 1.0, None, None, "center", "td"],\
					["k", 3, 1.0, None, None, "center", "k"],\
					["flap", 4, 1.0, None, None, "center", "flap"],\
					["fph", 5, 1.0, None, None, "center", "fph"],\
					["th", 6, 1.0, None, None, "center", "th"],\
					["ss", 7, 1.0, None, None, "center", "ss"],\
					["shch", 8, 1.0, None, None, "center", "shch"], \
					["rr", 9, 1.0, None, None, "center", "rr"], \
					["er", 10, 1.0, None, None, "center", "er"], \
					["y", 11, 1.0, None, None, "center", "y"], \
					["ww", 12, 1.0, None, None, "center", "ww"], \
					["h", 13, 1.0, None, None, "center", "h"], \
					["ee", 14, 1.0, None, None, "center", "ee"], \
					["ei", 15, 1.0, None, None, "center", "ei"], \
					["eh", 16, 1.0, None, None, "center", "eh"], \
					["ah", 17, 1.0, None, None, "center", "ah"], \
					["ao", 18, 1.0, None, None, "center", "ao"], \
					["oo", 19, 1.0, None, None, "center", "oo"]
		face_regions['phonemes'] = phonemes
		###### Tongue #####
		tongue = ["tongue_throat", 20,1.0, None, None,"center", "tongue_throat"], \
				["tongue_roof", 21,1.0, None, None,"center", "tongue_roof"], \
				["tongue_teeth", 22,1.0, None, None,"center", "tongue_teeth"],\
				["tongue_up", 23, 1.0, "tongue_down", None, "center", "tongue_up"], \
				["tongue_out", 24, 1.0, "tongue_in", None, "center", "tongue_out"], \
				["tongue_curl_up", 25, 1.0, "tongue_curl_down", None, "center", "tongue_curl_up"], \
				["tongue_curl_down", 26, 1.0, "tongue_curl_up", None, "center", "tongue_curl_down"], \
				["tongue_right", 27, 1.5, None, "tongue_left", "center", "tongue_right"], \
				["tongue_left", 28, 1.5, None, "tongue_right", "center", "tongue_left"], \
				["tongue_down", 29, 1.0, "tongue_up", None, "center", "tongue_down"], \
				["tongue_in", 30, 1.0, "tongue_out", None, "center", "tongue_in"], \
				["tongue_twist_right", 31, 1.0, None, "tongue_twist_left", "center", "tongue_twist_right"], \
				["tongue_twist_left", 32, 1.0, None, "tongue_twist_right", "center", "tongue_twist_left"],\
				["tongue_wide", 33, 1.0, None, "tongue_twist_right", "center", "tongue_wide"]
		face_regions['tongue'] = tongue
		###### jaw #####
		jaw = ["jaw_stretch", 35, 1.0, "jaw_squash", None, "center", "jaw_stretch"], \
			["jaw_squash", 36, 1.0, "jaw_stretch", None, "center", "jaw_squash"], \
			["left_jaw_squash_tilt", 37, 1.0, None, 'right_jaw_squash_tilt', "center", "left_jaw_squash_tilt"], \
			["right_jaw_squash_tilt", 38, 1.0, None, 'left_jaw_squash_tilt', "center", "right_jaw_squash_tilt"],\
			["jaw_open", 39, 1.0, "jaw_clench", None, "center", "jaw_open"], \
			["jaw_clench", 40, 1.0, "jaw_open", None, "center", "jaw_clench"], \
			["jaw_down", 41, 1.0, "jaw_up", None, "center", "jaw_down"], \
			["jaw_up", 42, 1.0, "jaw_down", None, "center", "jaw_up"], \
			["right_jaw_tilt", 43, 1.0, None, "left_jaw_tilt", "center", "right_jaw_tilt"], \
			["left_jaw_tilt", 44, 1.0, None, "right_jaw_tilt", "center", "left_jaw_tilt"], \
			["jaw_forward", 45, 1.0, "jaw_back", None, "center", "jaw_forward"], \
			["jaw_back", 46, 1.0, "jaw_forward", None, "center", "jaw_back"], \
			["left_jaw", 47, 1.0, None, "right_jaw", "center", "left_jaw"], \
			["right_jaw", 48, 1.0, None, "left_jaw", "center", "right_jaw"], \
			["chin_up", 49, 1.0, "chin_down", None, "center", "chin_up"], \
			["chin_down", 50, 1.0, "chin_up", None, "center", "chin_down"]
		face_regions['jaw'] = jaw
		###### Mouth #####
		mouth = ["right_mouth_stretch", 55, 1.0, "right_mouth_oo", "left_mouth_stretch", "right", "right_mouth_stretch"], \
			["left_mouth_stretch", 56, 1.0, "left_mouth_oo", "right_mouth_stretch", "left", "left_mouth_stretch"], \
			["right_mouth_oo", 57, 1.0, "right_mouth_stretch", "left_mouth_oo", "right", "right_mouth_oo"], \
			["left_mouth_oo", 58, 1.0, "left_mouth_stretch", "right_mouth_oo", "left", "left_mouth_oo"], \
			["right_mouth_up", 59, 1.0, "right_mouth_down", "left_mouth_up", "right", "right_mouth_up"], \
			["left_mouth_up", 60, 1.0, "left_mouth_down", "right_mouth_up", "left", "left_mouth_up"], \
			["right_mouth_down", 61, 1.0, "right_mouth_up", "left_mouth_down", "right", "right_mouth_down"], \
			["left_mouth_down", 62, 1.0, "left_mouth_up", "right_mouth_down", "left", "left_mouth_down"], \
			["right_upper_lip_outer_up", 63, 1.0, "right_upper_lip_outer_down", "left_upper_lip_outer_up", "right", "right_upper_lip_outer_up"], \
			["center_upper_lip_up", 64, 1.0, "center_upper_lip_down", None, "center", "center_upper_lip_up"], \
			["left_upper_lip_outer_up", 65, 1.0, "left_upper_lip_outer_down", "right_upper_lip_outer_up", "left", "left_upper_lip_outer_up"], \
			["right_upper_lip_inner_up", 66, 1.0, "right_upper_lip_inner_down", "left_upper_lip_inner_up", "right", "right_upper_lip_inner_up"], \
			["left_upper_lip_inner_up", 67, 1.0, "left_upper_lip_inner_down", 'right_upper_lip_inner_up', "left", "left_upper_lip_inner_up"], \
			["right_upper_lip_outer_down", 68, 1.0, "right_upper_lip_outer_up", "left_upper_lip_outer_down", "right", "right_upper_lip_outer_down"], \
			["center_upper_lip_down", 69, 1.0, "center_upper_lip_up", None, "center", "center_upper_lip_down"], \
			["left_upper_lip_outer_down", 70, 1.0, "left_upper_lip_outer_up", "right_upper_lip_outer_down", "left", "left_upper_lip_outer_down"], \
			["right_upper_lip_inner_down", 71, 1.0, "right_upper_lip_inner_up", "left_upper_lip_inner_down", "right", "right_upper_lip_inner_down"], \
			["left_upper_lip_inner_down", 72, 1.0, "left_upper_lip_inner_up", "right_upper_lip_inner_down", "left", "left_upper_lip_inner_down"], \
			["right_lower_lip_inner_down", 73, 1.0, "right_lower_lip_inner_up", "left_lower_lip_inner_down", "right", "right_lower_lip_inner_down"], \
			["center_lower_lip_down", 74, 1.0, "center_lower_lip_up", None, "center", "center_lower_lip_down"], \
			["left_lower_lip_inner_down", 75, 1.0, "left_lower_lip_inner_up", "right_lower_lip_inner_down", "left", "left_lower_lip_inner_down"], \
			["right_lower_lip_outer_down", 76, 1.0, "right_lower_lip_outer_up", "left_lower_lip_outer_down", "right", "right_lower_lip_outer_down"], \
			["left_lower_lip_outer_down", 77, 1.0, "left_lower_lip_outer_up", "right_lower_lip_outer_down", "left", "left_lower_lip_outer_down"], \
			["right_lower_lip_inner_up", 78, 1.0, "right_lower_lip_inner_down", "left_lower_lip_inner_up", "right", "right_lower_lip_inner_up"], \
			["center_lower_lip_up", 79, 1.0, "center_lower_lip_down", None, "center", "center_lower_lip_up"], \
			["left_lower_lip_inner_up", 80, 1.0, "left_lower_lip_inner_down", "right_lower_lip_inner_up", "left", "left_lower_lip_inner_up"], \
			["right_lower_lip_outer_up", 81, 1.0, "right_lower_lip_outer_down", "left_lower_lip_outer_up", "right", "right_lower_lip_outer_up"], \
			["left_lower_lip_outer_up", 82, 1.0, "left_lower_lip_outer_down", "right_lower_lip_outer_up", "left", "left_lower_lip_outer_up"], \
			["right_upper_corner_adjust_up", 83, 1.0, "right_upper_corner_adjust_down", "left_upper_corner_adjust_up", "right", "right_upper_corner_adjust_up"], \
			["left_upper_corner_adjust_up", 84, 1.0, "left_upper_corner_adjust_down", "right_upper_corner_adjust_up", "left", "left_upper_corner_adjust_up"], \
			["right_upper_corner_adjust_down", 85, 1.0, "right_upper_corner_adjust_up", "left_upper_corner_adjust_down", "right", "right_upper_corner_adjust_down"], \
			["left_upper_corner_adjust_down", 86, 1.0, "left_upper_corner_adjust_up", "right_upper_corner_adjust_down", "left", "left_upper_corner_adjust_down"], \
			["right_lower_corner_adjust_down", 87, 1.0, "right_lower_corner_adjust_up", "left_lower_corner_adjust_down", "right", "right_lower_corner_adjust_down"], \
			["left_lower_corner_adjust_down", 88, 1.0, "left_lower_corner_adjust_up", "right_lower_corner_adjust_down", "left", "left_lower_corner_adjust_down"], \
			["right_lower_corner_adjust_up", 89, 1.0, "right_lower_corner_adjust_down", "left_lower_corner_adjust_up", "right", "right_lower_corner_adjust_up"], \
			["left_lower_corner_adjust_up", 90, 1.0, "left_lower_corner_adjust_down", "right_lower_corner_adjust_up", "left", "left_lower_corner_adjust_up"], \
			["lips_up", 91, 1.0, "lips_down", None, "center", "lips_up"], \
			["lips_down", 92, 1.0, "lips_up", None, "center", "lips_down"], \
			["upper_lip_forward", 93, 1.0, "upper_lip_back", None, "center", "upper_lip_forward"], \
			["lower_lip_forward", 94, 1.0, "lower_lip_back", None, 'center', "lower_lip_forward"], \
			["upper_lip_back", 95, 1.0, "upper_lip_forward", None, "center", "upper_lip_back"], \
			["lower_lip_back", 96, 1.0, "lower_lip_forward", None, "center", "lower_lip_back"], \
			["left_lips", 97, 1.0, "right_lips", "right_lips", "left", "left_lips"], \
			["right_lips", 98, 1.0, "left_lips", "left_lips", "right", "right_lips"], \
			["upper_lip_funnel", 99, 1.0, "upper_lip_curl", None, "center", "upper_lip_funnel"], \
			["lower_lip_funnel", 100, 1.0, "lower_lip_curl", None, "center", "lower_lip_funnel"], \
			["upper_lip_curl", 101, 1.0, "upper_lip_funnel", None, "center", "upper_lip_curl"], \
			["lower_lip_curl", 102, 1.0, "lower_lip_funnel", None, "center", "lower_lip_curl"], \
			["right_pucker", 103, 1.0, None, "left_pucker", "right", "right_pucker", ], \
			["left_pucker", 104, 1.0, None, "right_pucker", "left", "left_pucker"]
		face_regions['mouth'] = mouth
		# #############    CHEEK     #################
		cheeks = ["right_blow", 108, 1.0, "right_suck", "left_blow", "right", "right_blow"], \
			["left_blow", 109, 1.0, "left_suck", "right_blow", "left", "left_blow"], \
			["right_suck", 110, 1.0, "right_blow", "left_suck", "right", "right_suck"], \
			["left_suck", 111, 1.0, "left_blow", "right_suck", "left", "left_suck"], \
			["right_nasolabial_out", 112, 1.0, None, "left_nasolabial_out", "right", "right_nasolabial_out"], \
			["left_nasolabial_out", 113, 1.0, None, "right_nasolabial_out", "left", "left_nasolabial_out"],\
			["right_cheek_outer_up", 114, 1.0, "right_cheek_outer_down", "left_cheek_outer_up", "right", "right_cheek_outer_up"], \
			["right_cheek_inner_up", 115, 1.0, "right_cheek_inner_down", "left_cheek_inner_up", "right", "right_cheek_inner_up"], \
			["left_cheek_outer_up", 116, 1.0, "left_cheek_outer_down", "right_cheek_outer_up", "left", "left_cheek_outer_up"], \
			["left_cheek_inner_up", 117, 1.0, "left_cheek_down", "right_cheek_inner_up", "left", "left_cheek_inner_up"], \
			["right_cheek_inner_down", 118, 1.0, "right_cheek_inner_up", "left_cheek_inner_down", "right", "right_cheek_inner_down"], \
			["right_cheek_outer_down", 119, 1.0, "right_cheek_outer_up", "left_cheek_outer_down", "right", "right_cheek_outer_down"], \
			["left_cheek_inner_down", 120, 1.0, "left_cheek_inner_up", "right_cheek_inner_up", "left", "left_cheek_inner_down"], \
			["left_cheek_outer_down", 121, 1.0, "left_cheek_outer_up", "right_cheek_outer_down", "left", "left_cheek_outer_down"]
		face_regions['cheeks'] = cheeks
		###### nose #####
		nose = ["nose_tip_up", 125, 1.0, "nose_tip_down", None, "center", "nose_tip_up"],\
			["nose_tip_down", 126, 1.0, "nose_tip_up", None, "center", "nose_tip_down"], \
			["nose_tip_right", 127, 1.0, "nose_tip_left", "nose_tip_left", "center", "nose_tip_right"], \
			["nose_tip_left", 128, 1.0, "nose_tip_right", "nose_tip_right", "center", "nose_tip_left"],\
			["right_nose_flare", 129, 1.0, "right_nose_suck", "left_nose_flare", "right", "right_nose_flare"], \
			["left_nose_flare", 130, 1.0, "left_nose_suck", "right_nose_flare", "left", "left_nose_flare"], \
			["right_nose_sneer", 131, 1.0, "right_nose_down", "left_nose_sneer", "right", "right_nose_sneer"], \
			["left_nose_sneer", 132, 1.0, "left_nose_down", "right_nose_sneer", "left", "left_nose_sneer"], \
			["right_nose_suck", 133, 1.0, "right_nose_flare", "left_nose_suck", "right", "right_nose_suck"], \
			["left_nose_suck", 134, 1.0, "left_nose_flare", "right_nose_suck", "left", "left_nose_suck"], \
			["right_nose_down", 135, 1.0, "right_nose_sneer", "left_nose_down", "right", "right_nose_down"], \
			["left_nose_down", 136, 1.0, "left_nose_sneer", "right_nose_down", "left", "left_nose_down"]
		face_regions['nose'] = nose
		# ################# EYES ################
		eyes = ["right_eye_right", 138, 1.0, "right_eye_left", "left_eye_left", "right", "right_eye_right"], \
			["left_eye_right", 139, 1.0, "left_eye_left", "right_eye_left", "left", "left_eye_right"], \
			["right_eye_left", 140, 1.0, "right_eye_right", "left_eye_right", "right", "right_eye_left"], \
			["left_eye_left", 141, 1.0, "left_eye_right", "right_eye_right", "left", "left_eye_left"], \
			["right_eye_up", 142, 1.0, "right_eye_down", "left_eye_up", "right", "right_eye_up"], \
			["left_eye_up", 143, 1.0, "left_eye_down", "right_eye_up", "left", "left_eye_up"], \
			["right_eye_down", 144, 1.0, "right_eye_up", "left_eye_down", "right", "right_eye_down"], \
			["left_eye_down", 145, 1.0, "left_eye_up", "right_eye_down", "left", "left_eye_down"]
		face_regions['eyes'] = eyes
		# #############    BROWS       #################
		########    Pose Name        Frame, multiplier, opposite pose,    mirror_pose,          side,    stage_position
		brows = ["right_outer_brow_down", 147, 1.0, "right_outer_brow_up", "left_outer_brow_down", 'right', "right_outer_brow_down"],\
				["right_inner_brow_down", 148, 1.0, "right_inner_brow_up", "left_inner_brow_down", "right", "right_inner_brow_down"],\
				["left_inner_brow_down", 149, 1.0, "left_inner_brow_up", "right_inner_brow_down", "left", "left_inner_brow_down"],\
				["left_outer_brow_down", 150, 1.0, "left_outer_brow_up", "right_outer_brow_down", "left", "left_outer_brow_down"],\
				["right_outer_brow_up", 151, 1.0, "right_outer_brow_down", "left_outer_brow_up", "right", "right_outer_brow_up"],\
				["right_inner_brow_up", 152, 1.0, "right_inner_brow_down", "left_inner_brow_up", "right", "right_inner_brow_up"],\
				["left_inner_brow_up", 153, 1.0, "left_inner_brow_down", "right_inner_brow_up", "left", "left_inner_brow_up"],\
				["left_outer_brow_up", 154, 1.0, "left_outer_brow_down", "right_outer_brow_up", "left", "left_outer_brow_up"], \
				["right_middle_brow_down", 155, 1.0, "right_middle_brow_up", "left_middle_brow_down", "right", "right_middle_brow_down"], \
				["right_middle_brow_up", 156, 1.0, "right_middle_brow_down", "left_middle_brow_up", "right", "right_middle_brow_up"], \
				["left_middle_brow_down", 157, 1.0, "left_middle_brow_up", "right_middle_brow_down", "left", "left_middle_brow_down"], \
				["left_middle_brow_up", 158, 1.0, "left_middle_brow_down", "right_middle_brow_up", "left", "left_middle_brow_up"], \
				["right_outer_brow_tilt_sad", 159, 1.0, "right_outer_brow_tilt_anger", "left_outer_brow_tilt_sad", "right", "right_outer_brow_tilt_sad"],\
				["right_inner_brow_tilt_sad", 160, 1.0, "right_inner_brow_tilt_anger", "left_inner_brow_tilt_sad", "right", "right_inner_brow_tilt_sad"],\
				["left_inner_brow_tilt_sad", 161, 1.0, "left_inner_brow_tilt_anger", "right_inner_brow_tilt_sad", "left", "left_inner_brow_tilt_sad"],\
				["left_outer_brow_tilt_sad", 162, 1.0, "left_outer_brow_tilt_anger", "right_outer_brow_tilt_sad", "left", "left_outer_brow_tilt_sad"],\
				["right_outer_brow_tilt_anger", 163, 1.0, "right_outer_brow_tilt_sad", "left_outer_brow_tilt_anger", "right", "right_outer_brow_tilt_anger"],\
				["right_inner_brow_tilt_anger", 164, 1.0, "right_inner_brow_tilt_sad", "left_inner_brow_tilt_anger", "right", "right_inner_brow_tilt_anger"],\
				["left_inner_brow_tilt_anger", 165, 1.0, "left_inner_brow_tilt_sad", "right_inner_brow_tilt_anger", "left", "left_inner_brow_tilt_anger"],\
				["left_outer_brow_tilt_anger", 166, 1.0, "left_outer_brow_tilt_sad", "right_outer_brow_tilt_anger", "left", "left_outer_brow_tilt_anger"],\
				["right_brow_squeeze", 167, 1.0, None, "left_brow_squeeze", "right", "right_brow_squeeze"],\
				["left_brow_squeeze", 168, 1.0, None, "right_brow_squeeze", "left", "left_brow_squeeze"]
		face_regions['brows'] = brows
		# #############    EYELIDS      #################
		eyelids = ["right_upper_eyelid_down", 170, 1.0, "right_upper_eyelid_up", "left_upper_eyelid_down", "right", "right_upper_eyelid_down"], \
				["left_upper_eyelid_down", 171, 1.0, "left_upper_eyelid_up", "right_upper_eyelid_down", "left", "left_upper_eyelid_down"], \
				["right_lower_eyelid_down", 172, 1.0, "right_lower_eyelid_up", "left_lower_eyelid_down", "right", "right_lower_eyelid_down"], \
				["left_lower_eyelid_down", 173, 1.0, "left_lower_eyelid_up", "right_lower_eyelid_down", "left", "left_lower_eyelid_down"], \
				["right_upper_eyelid_up", 174, 1.0, "right_upper_eyelid_down", "left_upper_eyelid_up", "right", "right_upper_eyelid_up"], \
				["left_upper_eyelid_up", 175, 1.0, "left_upper_eyelid_down", "right_upper_eyelid_up", "left", "left_upper_eyelid_up"], \
				["right_lower_eyelid_up", 176, 1.0, "right_lower_eyelid_down", "left_lower_eyelid_up", "right", "right_lower_eyelid_up"], \
				["left_lower_eyelid_up", 177, 1.0, "left_lower_eyelid_down", "right_lower_eyelid_up", "left", "left_lower_eyelid_up"], \
				["right_upper_eyelid_twist_sad", 178, 1.0, "right_upper_eyelid_twist_anger", "left_upper_eyelid_twist_sad", "right", "right_upper_eyelid_twist_sad"], \
				["left_upper_eyelid_twist_sad", 179, 1.0, "left_upper_eyelid_twist_anger", "right_upper_eyelid_twist_sad", "left", "left_upper_eyelid_twist_sad"], \
				["right_upper_eyelid_twist_anger", 180, 1.0, "right_upper_eyelid_twist_sad", "left_upper_eyelid_twist_anger", "right", "right_upper_eyelid_twist_anger"], \
				["left_upper_eyelid_twist_anger", 181, 1.0, "left_upper_eyelid_twist_sad", "right_upper_eyelid_twist_anger", "left", "left_upper_eyelid_twist_anger"], \
				["right_lower_eyelid_twist_sad", 182, 1.0, "right_lower_eyelid_twist_anger", "left_lower_eyelid_twist_sad", "right", "right_lower_eyelid_twist_sad"], \
				["left_lower_eyelid_twist_sad", 183, 1.0, "left_lower_eyelid_twist_anger", "right_lower_eyelid_twist_sad", "left", "left_lower_eyelid_twist_sad"],\
				["right_lower_eyelid_twist_anger", 184, 1.0, "right_lower_eyelid_twist_sad", "left_lower_eyelid_twist_anger", "right", "right_lower_eyelid_twist_anger"], \
				["left_lower_eyelid_twist_anger", 185, 1.0, "left_lower_eyelid_twist_sad", "right_lower_eyelid_twist_anger", "left", "left_lower_eyelid_twist_anger"]
		face_regions['eyelids'] = eyelids
		custom_parameter = ["custom_parameter_01", 188, 1.0, None, None, "center", "custom_parameter_01"], \
				["custom_parameter_02", 171, 1.0,None, None, "center", "custom_parameter_02"], \
				["custom_parameter_03", 171, 1.0,None, None, "center", "custom_parameter_03"], \
				["custom_parameter_04", 171, 1.0,None, None, "center", "custom_parameter_04"], \
				["custom_parameter_05", 171, 1.0,None, None, "center", "custom_parameter_05"], \
				["custom_parameter_06", 171, 1.0,None, None, "center", "custom_parameter_06"], \
				["custom_parameter_07", 171, 1.0,None, None, "center", "custom_parameter_07"], \
				["custom_parameter_08", 171, 1.0,None, None, "center", "custom_parameter_08"], \
				["custom_parameter_09", 171, 1.0,None, None, "center", "custom_parameter_09"], \
				["custom_parameter_10", 171, 1.0,None, None, "center", "custom_parameter_10"]
		face_regions['custom_parameter'] = custom_parameter

		for region in face_regions:
			self.pose_data[region] = {}
			for parameter in face_regions[region]:
				self.pose_data[region][parameter[0]] = {}
				self.pose_data[region][parameter[0]]['frame'] = parameter[1]
				self.pose_data[region][parameter[0]]['multiplier'] = parameter[2]
				self.pose_data[region][parameter[0]]['opposite_parameter'] = parameter[3]
				self.pose_data[region][parameter[0]]['mirror_parameter'] = parameter[4]
				self.pose_data[region][parameter[0]]['side'] = parameter[5]
				self.pose_data[region][parameter[0]]['connection'] = parameter[6]

	def export(self, path, file_name = 'default_face_parameters'):
		if not os.path.isdir(path):
			os.makedirs(path)
		''' Export Default Face Parameters to a JSON File'''
		metautil.json_util.write_json(self.pose_data, path, file_name)


class SolveParameters():
	'''
	parameter: [pose_frame, pose_sdk_multiplier, control_opposite_parameter(if any), mirror_parameter(if any), regions]
	control_opposite_parameter means if this parameter has a value, the control_opposite_parameter must equal 0
	'''
	def __init__(self):
		self.pose_data = {}
		face_regions = {}
		# #############    HEAD       #################
		head = ["left_twist_head_solve", 22, 1.0, None, 'right_twist_head_solve', "center", "left_twist_head_solve"],\
				["right_twist_head_solve", 21, 1.0, None, 'left_twist_head_solve', "center", "right_twist_head_solve"],\
				["back_head_solve", 20, 1.0, "forward_head_solve", None, "center", "back_head_solve"],\
				["forward_head_solve", 19, 1.0, "back_head_solve", None, "center", "forward_head_solve"],\
				["left_head_solve", 18, 1.0, None, "right_head_solve", "center", "left_head_solve"],\
				["right_head_solve", 17, 1.0, None, "left_head_solve", "center","right_head_solve"], \
				["left_twist_neck_2_solve", 16, 1.0, None, "right_twist_neck_2_solve", "center", "left_twist_neck_2_solve"], \
				["right_twist_neck_2_solve", 15, 1.0, None, "left_twist_neck_2_solve", "center", "right_twist_neck_2_solve"], \
				["back_neck_2_solve", 14, 1.0, "forward_neck_2_solve",None, "center", "back_neck_2_solve"],\
				["forward_neck_2_solve", 13, 1.0, "back_neck_2_solve", None, "center", "forward_neck_2_solve"], \
				["left_neck_2_solve", 12, 1.0, None, "right_neck_2_solve", "center", "left_neck_2_solve"], \
				["right_neck_2_solve", 11, 1.0, None, "left_neck_2_solve", "center", "right_neck_2_solve"], \
				["left_twist_neck_1_solve", 10, 1.0, None, 'right_twist_neck_1_solve', "center", "left_twist_neck_1_solve"], \
				["right_twist_neck_1_solve", 9, 1.0, None, 'left_twist_neck_1_solve', "center", "right_twist_neck_1_solve"], \
				["back_neck_1_solve", 8, 1.0, "forward_neck_1_solve", None, "center", "back_neck_1_solve"], \
				["forward_neck_1_solve", 7, 1.0, "back_neck_1_solve", None, "center", "forward_neck_1_solve"], \
				["left_neck_1_solve", 6, 1.0, None, "right_neck_1_solve", "center", "left_neck_1_solve"], \
				["right_neck_1_solve", 5, 1.0, None, "left_neck_1_solve", "center", "right_neck_1_solve"], \
				["back_spine_3_solve", 4, 1.0, "forward_spine_3_solve", None, "center", "back_spine_3_solve"],\
				["forward_spine_3_solve", 3, 1.0, "back_spine_3_solve", None, "center", "forward_spine_3_solve"],\
				["left_spine_3_solve", 2, 1.0, None, "right_spine_3_solve", "center", "left_spine_3_solve"],\
				["right_spine_3_solve", 1, 1.0, None, "left_spine_3_solve", "center", "right_spine_3_solve"]
		face_regions['head'] = head

		eyelids = ["left_eyelid_lower_inner_up_solve", 73, 1.0, None, 'right_eyelid_lower_inner_up_solve', "left", "left_eyelid_lower_inner_up_solve"], \
				["right_eyelid_lower_inner_up_solve", 74, 1.0, None, 'left_eyelid_lower_inner_up_solve', "right", "right_eyelid_lower_inner_up_solve"], \
				["left_eyelid_upper_inner_down_solve", 75, 1.0, None, 'right_eyelid_upper_inner_down_solve', "left", "left_eyelid_upper_inner_down_solve"], \
				["right_eyelid_upper_inner_down_solve", 76, 1.0, None, 'left_eyelid_upper_inner_down_solve', "right", "right_eyelid_upper_inner_down_solve"], \
				["left_upper_eyelid_extend_down_solve", 77, 1.0, None, 'right_upper_eyelid_extend_down_solve', "left", "left_upper_eyelid_extend_down_solve"],\
				["right_upper_eyelid_extend_down_solve", 78, 1.0, None, 'left_upper_eyelid_extend_down_solve', "right", "right_upper_eyelid_extend_down_solve"]
		face_regions['eyelids'] = eyelids
		cheeks = ["right_cheek_out_solve", 38, 1.0, None, 'left_cheek_out_solve', "right", "right_cheek_out_solve"], \
				["left_cheek_out_solve", 39, 1.0, None, 'right_cheek_out_solve', "left", "left_cheek_out_solve"],\
				["left_buccinator_01_solve", 40, 1.0, None, 'right_buccinator_01_solve', "left", "left_buccinator_01_solve"],\
				["right_buccinator_01_solve", 41, 1.0, None, 'left_buccinator_01_solve', "right", "right_buccinator_01_solve"],\
				["left_buccinator_lower_01_solve", 42, 1.0, None, 'right_buccinator_lower_01_solve', "left", "left_buccinator_lower_01_solve"],\
				["right_buccinator_lower_01_solve", 43, 1.0, None, 'left_buccinator_lower_01_solve', "right", "right_buccinator_lower_01_solve"],\
				["left_buccinator_out_solve", 44, 1.0, None, 'right_buccinator_out_solve', "left", "left_buccinator_out_solve"],\
				["right_buccinator_out_solve", 45, 1.0, None, 'left_buccinator_out_solve', "right", "right_buccinator_out_solve"],\
				["left_buccinator_upper_02_out_solve", 46, 1.0, None, 'right_buccinator_upper_02_out_solve', "left", "left_buccinator_upper_02_out_solve"],\
				["right_buccinator_upper_02_out_solve", 47, 1.0, None, 'left_buccinator_upper_02_out_solve', "right", "right_buccinator_upper_02_out_solve"],\
				["left_cheekbone_01_out_solve", 48, 1.0, None, 'right_cheekbone_01_out_solve', "left", "left_cheekbone_01_out_solve"],\
				["right_cheekbone_01_out_solve", 49, 1.0, None, 'left_cheekbone_01_out_solve', "right", "right_cheekbone_01_out_solve"],\
				["left_cheekbone_02_out_solve", 50, 1.0, None, 'right_cheekbone_02_out_solve', "left", "left_cheekbone_02_out_solve"],\
				["right_cheekbone_02_out_solve", 51, 1.0, None, 'left_cheekbone_02_out_solve', "right", "right_cheekbone_02_out_solve"],\
				["left_lower_nasolabial_solve", 52, 1.0, None, 'right_lower_nasolabial_solve', "left", "left_lower_nasolabial_solve"],\
				["right_lower_nasolabial_solve", 53, 1.0, None, 'left_lower_nasolabial_solve', "right", "right_lower_nasolabial_solve"]
		face_regions['cheeks'] = cheeks
		nose = ["nose_out_solve", 56, 1.0, None, None, "center", "nose_out_solve"],\
				["left_nose_solve", 57, 1.0, None, 'right_nose_solve', "left", "left_nose_solve"],\
				["right_nose_solve", 58, 1.0, None, 'left_nose_solve', "right", "right_nose_solve"],\
				["left_nose_bridge_out", 59, 1.0, None, 'right_nose_bridge_out', "left", "left_nose_bridge_out"],\
				["right_nose_bridge_out", 60, 1.0, None, 'left_nose_bridge_out', "right", "right_nose_bridge_out"]
		face_regions['nose'] = nose

		brows = ["left_brow_inner_up_solve", 63, 1.0, None, 'right_brow_inner_up_solve', "left", "left_brow_inner_up_solve"],\
				["right_brow_inner_up_solve", 64, 1.0, None, 'left_brow_inner_up_solve', "right", "right_brow_inner_up_solve"],\
				["right_inner_brow_out_solve", 65, 1.0, None, 'left_inner_brow_out_solve', "right", "right_inner_brow_out_solve"], \
				["left_inner_brow_out_solve", 66, 1.0, None, 'right_inner_brow_out_solve', "left", "left_inner_brow_out_solve"],\
				["left_brow_middle_up_solve", 67, 1.0, None, 'right_brow_middle_up_solve', "left", "left_brow_middle_up_solve"],\
				["right_brow_middle_up_solve", 68, 1.0, None, 'left_brow_middle_up_solve', "right", "right_brow_middle_up_solve"],\
				["left_brow_outer_up_solve", 69, 1.0, None, 'right_brow_outer_up_solve', "left", "left_brow_outer_up_solve"],\
				["right_brow_outer_up_solve", 70, 1.0, None, 'left_brow_outer_up_solve', "right", "right_brow_outer_up_solve"]
		face_regions['brows'] = brows

		jaw = ["jaw_down_solve", 25, 1.0, None, None, "center", "jaw_down_solve"],\
				["jaw_open_solve", 26, 1.0, None, None, "center", "jaw_open_solve"],\
				["jaw_open_left_solve", 27, 1.0, None, 'jaw_open_right_solve', "left", "jaw_open_left_solve"],\
				["jaw_open_right_solve", 28, 1.0, None, 'jaw_open_left_solve', "right", "jaw_open_right_solve"],\
				["jaw_open_slide_left_solve", 29, 1.0, None, 'jaw_open_slide_right_solve', "left", "jaw_open_slide_left_solve"],\
				["jaw_open_slide_right_solve", 30, 1.0, None, 'jaw_open_slide_left_solve', "right", "jaw_open_slide_right_solve"],\
				["center_chin_solve", 31, 1.0, None, None, "center", "center_chin_solve"]
		face_regions['jaw'] = jaw

		lips = ["left_upper_lip_corner_down_solve", 34, 1.0, None, 'right_upper_lip_corner_down_solve', "left", "left_upper_lip_corner_down_solve"], \
				["right_upper_lip_corner_down_solve", 35, 1.0, None, 'left_upper_lip_corner_down_solve', "right", "right_upper_lip_corner_down_solve"]
		face_regions['lips'] = lips

		for region in face_regions:
			self.pose_data[region] = {}
			for parameter in face_regions[region]:
				self.pose_data[region][parameter[0]] = {}
				self.pose_data[region][parameter[0]]['frame'] = parameter[1]
				self.pose_data[region][parameter[0]]['multiplier'] = parameter[2]
				self.pose_data[region][parameter[0]]['opposite_parameter'] = parameter[3]
				self.pose_data[region][parameter[0]]['mirror_parameter'] = parameter[4]
				self.pose_data[region][parameter[0]]['side'] = parameter[5]
				self.pose_data[region][parameter[0]]['connection'] = parameter[6]

	def export(self, path, file_name = 'solve_parameters'):
		''' Export Cinematics Face Parameters to a JSON File'''
		if not os.path.isdir(path):
			os.makedirs(path)
		metautil.json_util.write_json(path, file_name, self.pose_data)
