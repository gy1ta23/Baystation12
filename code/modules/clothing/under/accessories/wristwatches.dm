/obj/item/clothing/accessory/wristwatch
	name = "black wrist watch"
	desc = "A simple, analog time keeping device. Its nylon strap fits snugly on the wrist."
	icon_state = "wristwatch_black"
	body_location = HANDS


/obj/item/clothing/accessory/wristwatch/leather
	name = "leather wrist watch"
	desc = "A simple, analog time keeping device. Its leather strap is quite fashionable."
	icon_state = "wristwatch_leather"


/obj/item/clothing/accessory/wristwatch/fancy
	name = "fancy wrist watch"
	desc = "An extravagant time keeping device. It probably cost more than your education."
	icon_state = "wristwatch_fancy"

/obj/item/clothing/accessory/wristwatch/examine(mob/user)
	..()
	if (in_range(src, user))
		checktime()

/obj/item/clothing/accessory/wristwatch/verb/checktime()
	set name = "Check Time"
	set category = "Object"
	set src in usr

	to_chat(usr, "You check your watch. The analog hands tell you the time is '[stationtime2text()]'.")
