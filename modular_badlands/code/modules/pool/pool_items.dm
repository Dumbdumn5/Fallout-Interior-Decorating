/obj/item/twohanded/required/pool
	icon = 'modular_badlands/code/modules/pool/icons/pool.dmi'
	lefthand_file = 'modular_badlands/code/modules/pool/icons/items_lefthand.dmi'
	righthand_file = 'modular_badlands/code/modules/pool/icons/items_righthand.dmi'
	force = 0
	damtype = STAMINA
	w_class = WEIGHT_CLASS_BULKY
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")

/obj/item/twohanded/pool/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, force_unwielded = 0, force_wielded = 0, icon_wielded="[icon_prefix]")

/obj/item/twohanded/required/pool/Initialize()
	. = ..()
	//Pick a random color
	color = pick(COLOR_YELLOW, COLOR_LIME, COLOR_RED, COLOR_BLUE_LIGHT, COLOR_CYAN, COLOR_MAGENTA)

/obj/item/twohanded/required/pool/rubber_ring
	name = "inflatable"
	desc = "An inflatable ring used for keeping people afloat. Throw at drowning people to save them."
	icon_state = "rubber_ring"

/obj/item/twohanded/required/pool/rubber_ring/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	. = ..()
	if(ishuman(hit_atom))
		var/mob/living/carbon/human/H = hit_atom
		//Make sure they are in a pool
		if(!istype(get_turf(H), /turf/open/indestructible/sound/pool))
			return
		//Make sure they are alive and can pick it up
		if(H.stat)
			return
		//Try shove it in their inventory
		if(H.put_in_active_hand(src))
			visible_message("<span class='notice'>The [src] lands over [H]'s head!</span>")

/obj/item/twohanded/required/pool/pool_noodle
	icon_state = "pool_noodle"
	lefthand_file = 'modular_badlands/code/modules/pool/icons/melee_lefthand.dmi'
	righthand_file = 'modular_badlands/code/modules/pool/icons/melee_righthand.dmi'
	name = "pool noodle"
	desc = "A long noodle made of foam. Helping those with fears of swimming swim since the 1980s."
	var/suiciding = FALSE

/obj/item/twohanded/required/pool/pool_noodle/attack(mob/target, mob/living/carbon/human/user)
	. = ..()
	if(wielded && prob(50))
		INVOKE_ASYNC(src, .proc/jedi_spin, user)

/obj/item/twohanded/required/pool/pool_noodle/proc/jedi_spin(mob/living/user) //rip complex code, but this fucked up blocking
	user.emote("flip")

/obj/item/twohanded/required/pool/pool_noodle/suicide_act(mob/user)
	if(suiciding)
		return SHAME
	suiciding = TRUE
	user.visible_message("<span class='notice'>[user] begins kicking their legs to stay afloat!</span>")
	var/mob/living/L = user
	if(istype(L))
		L.Immobilize(63)
	animate(user, time=2 SECONDS, pixel_y=18)
	sleep(2 SECONDS)
	animate(user, time=1 SECONDS, pixel_y=12)
	sleep(1 SECONDS)
	user.visible_message("<span class='notice'>[user] keeps swimming higher and higher!</span>")
	animate(user, time=1 SECONDS, pixel_y=22)
	sleep(1 SECONDS)
	animate(user, time=1 SECONDS, pixel_y=16)
	sleep(1 SECONDS)
	animate(user, time=1.5 SECONDS, pixel_y=32)
	sleep(1.5 SECONDS)
	user.visible_message("<span class='suicide'>[user] suddenly realised they aren't in the water and cannot float.</span>")
	animate(user, time=0.1 SECONDS, pixel_y=0)
	sleep(0.1 SECONDS)
	user.ghostize()
	user.gib()
	suiciding = FALSE
	return MANUAL_SUICIDE
