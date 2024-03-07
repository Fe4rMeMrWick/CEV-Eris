//Prosthesis ====================================

/datum/design/research/item/mechfab/prosthesis
	category = CAT_PROSTHESIS
	starts_unlocked = TRUE

/datum/design/research/item/mechfab/prosthesis/r_arm
	build_path = /obj/item/organ/external/robotic/moebius/r_arm

/datum/design/research/item/mechfab/prosthesis/l_arm
	build_path = /obj/item/organ/external/robotic/moebius/l_arm

/datum/design/research/item/mechfab/prosthesis/r_leg
	build_path = /obj/item/organ/external/robotic/moebius/r_leg

/datum/design/research/item/mechfab/prosthesis/l_leg
	build_path = /obj/item/organ/external/robotic/moebius/l_leg

/datum/design/research/item/mechfab/prosthesis/groin
	build_path = /obj/item/organ/external/robotic/moebius/groin

/datum/design/research/item/mechfab/prosthesis/torso
	build_path = /obj/item/organ/external/robotic/moebius/torso

/datum/design/research/item/mechfab/prosthesis/head
	build_path = /obj/item/organ/external/robotic/moebius/head

//Upgraded prosthesis ========================
/datum/design/research/item/mechfab/prosthesis_moebius
	category = CAT_PROSTHESIS

/datum/design/research/item/mechfab/prosthesis_moebius/r_arm
	build_path = /obj/item/organ/external/robotic/moebius/reinforced/r_arm

/datum/design/research/item/mechfab/prosthesis_moebius/l_arm
	build_path = /obj/item/organ/external/robotic/moebius/reinforced/l_arm

/datum/design/research/item/mechfab/prosthesis_moebius/r_leg
	build_path = /obj/item/organ/external/robotic/moebius/reinforced/r_leg

/datum/design/research/item/mechfab/prosthesis_moebius/l_leg
	build_path = /obj/item/organ/external/robotic/moebius/reinforced/l_leg

/datum/design/research/item/mechfab/prosthesis_moebius/groin
	build_path = /obj/item/organ/external/robotic/moebius/reinforced/groin

/datum/design/research/item/mechfab/prosthesis_moebius/torso
	build_path = /obj/item/organ/external/robotic/moebius/reinforced/torso

/datum/design/research/item/mechfab/prosthesis_moebius/head
	build_path = /obj/item/organ/external/robotic/moebius/reinforced/head

//One Star prosthesis =======================
/datum/design/research/item/mechfab/prosthesis_one_star
	category = CAT_PROSTHESIS

/datum/design/research/item/organ/external/robotic/one_star/l_arm
	build_path = /obj/item/organ/external/robotic/one_star/l_arm

/datum/design/research/item/organ/external/robotic/one_star/r_arm
	build_path = /obj/item/organ/external/robotic/one_star/r_arm

/datum/design/research/item/organ/external/robotic/one_star/l_leg
	build_path = /obj/item/organ/external/robotic/one_star/l_leg

/datum/design/research/item/organ/external/robotic/one_star/r_leg
	build_path = /obj/item/organ/external/robotic/one_star/r_leg

//Modules ====================================

/datum/design/research/item/mechfab/modules
	category = CAT_PROSTHESIS

/datum/design/research/item/mechfab/modules/armor
	name = "subdermal body armor"
	build_path = /obj/item/organ_module/armor

/datum/design/research/item/mechfab/modules/armblade
	name = "Embedded armblade"
	build_path = /obj/item/organ_module/active/simple/armblade

/datum/design/research/item/mechfab/modules/runner
	name = "Mechanical muscles"
	build_path = /obj/item/organ_module/muscle


/datum/design/research/item/mechfab/modules/multitool/surgical
	build_path = /obj/item/organ_module/active/simple/surgical
	name = "Embedded surgical multitool"

/datum/design/research/item/mechfab/modules/multitool/engineer
	build_path = /obj/item/organ_module/active/simple/engineer
	name = "Embedded Technomancer multitool"

/datum/design/research/item/mechfab/modules/multitool/miner
	build_path = /obj/item/organ_module/active/multitool/miner
	name = "Embedded mining multitool"

/datum/design/research/item/mechfab/modules/multitool/ossurgical
	build_path = /obj/item/tool/medmultitool
	name = "One Star surgical multitool"
//Implants
/datum/design/research/item/implant
	build_type = PROTOLATHE | MECHFAB
	name_category = "implantable biocircuit"
	category = CAT_PROSTHESIS

/datum/design/research/item/implant/chemical
	name = "chemical"
	build_path = /obj/item/implantcase/chem
	sort_string = "MFAAA"

/datum/design/research/item/implant/freedom
	name = "freedom"
	build_path = /obj/item/implantcase/freedom
	sort_string = "MFAAB"
