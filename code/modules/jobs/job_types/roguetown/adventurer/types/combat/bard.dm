
/datum/advclass/bard
	name = "Bard"
	tutorial = "Bards make up one of the largest populations of \
	registered adventurers in Enigma, mostly because they are \
	the last ones in a party to die. Their wish is to experience \
	the greatest adventures of the age and write amazing songs about them."
	allowed_sexes = list("male", "female")
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/bard
	traits_applied = list(RTRAIT_MEDIUMARMOR)

/datum/outfit/job/roguetown/adventurer/bard/pre_equip(mob/living/carbon/human/H)
	..() // The entertaining jack of all trades, uniquely handy with crossbows and swords. They're incredibly well travelled, can sneak, steal and survive on their own. 
	H.adjust_blindness(-3)
	var/classes = list("Bard","Skald",)
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes

	switch(classchoice)
	
		if("Bard")
			H.set_blindness(0)
			to_chat(H, "<span class='warning'>Bards make their fortunes in brothels, flop houses and taverns -- gaining fame for their songs and legends. If there is any truth to them, that is.</span>")
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/music, rand(3,5), TRUE)
			head = /obj/item/clothing/head/roguetown/bardhat
			shoes = /obj/item/clothing/shoes/roguetown/boots
			pants = /obj/item/clothing/under/roguetown/tights/random
			shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt
			gloves = /obj/item/clothing/gloves/roguetown/fingerless
			belt = /obj/item/storage/belt/rogue/leather
			armor = /obj/item/clothing/suit/roguetown/armor/leather/vest
			cloak = /obj/item/clothing/cloak/raincloak/blue
			if(prob(50))
				cloak = /obj/item/clothing/cloak/raincloak/red
			backl = /obj/item/storage/backpack/rogue/satchel
			l_hand = /obj/item/rogueweapon/huntingknife/idagger/steel
			beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
			l_hand = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
			beltr = /obj/item/quiver/bolts
			H.change_stat("intelligence", 1)
			H.change_stat("perception", 2)
			H.change_stat("endurance", 1)
			H.change_stat("speed", 2)
		if("Skald")
			H.set_blindness(0)
			to_chat(H, "<span class='warning'>Skalds are wandering storytellers, and for many villages they are local historians keeping the tales of great legends and heroes alive.</span>")
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/music, rand(3,5), TRUE)
			head = /obj/item/clothing/head/roguetown/bardhat
			shoes = /obj/item/clothing/shoes/roguetown/boots
			pants = /obj/item/clothing/under/roguetown/tights/random
			shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt
			gloves = /obj/item/clothing/gloves/roguetown/fingerless
			belt = /obj/item/storage/belt/rogue/leather
			armor = /obj/item/clothing/suit/roguetown/armor/leather/vest
			cloak = /obj/item/clothing/cloak/raincloak/blue
			if(prob(50))
				cloak = /obj/item/clothing/cloak/raincloak/red
			backl = /obj/item/storage/backpack/rogue/satchel
			l_hand = /obj/item/rogueweapon/huntingknife/idagger/steel
			beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
			l_hand = /obj/item/rogueweapon/sword/iron
			H.change_stat("constitution", 2)
			H.change_stat("strength", 1)
			H.change_stat("speed", 1)

	if(H.dna?.species)
		if(H.dna.species.id == "human")
			backr = /obj/item/rogue/instrument/lute
		if(H.dna.species.id == "dwarf")
			backr = /obj/item/rogue/instrument/accord
		if(H.dna.species.id == "elf")
			backr = /obj/item/rogue/instrument/harp
		if(H.dna.species.id == "tiefling" || H.dna.species.id == "argonian")
			backr = /obj/item/rogue/instrument/guitar
	ADD_TRAIT(H, RTRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, RTRAIT_EMPATH, TRAIT_GENERIC)
