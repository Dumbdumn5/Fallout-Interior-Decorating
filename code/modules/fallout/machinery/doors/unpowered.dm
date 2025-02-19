// ID locked Fallout doors, CANNOT be padlocked. Its a sort of simulated key and lock system for semi-public areas.
// Unpowered being as the name says, simple mechanical doors. Works exactly like airlocks, and less space age, so better.

/obj/machinery/door/unpowered
	icon = 'icons/fallout/structures/doors.dmi'
	armor = list("melee" = 25, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 25, "bio" = 100, "rad" = 100, "fire" = 80, "acid" = 70)
	autoclose = TRUE // Difficulty: Monkey to reduce amount of secure doors left open.
	max_integrity = 500
	obj_integrity = 500
	req_one_access_txt = null // Add the channel for the ID you want to lock this door to, check defines.

// ------------------------------------
// SECURE DOOR

/obj/machinery/door/unpowered/securedoor
	name = "secure door"
	desc = "Door with a built-in lock. Can't be padlocked."
	icon_state = "secure"
	assemblytype = /obj/item/stack/sheet/mineral/wood/five
	opacity = TRUE
	explosion_block = TRUE

/obj/machinery/door/unpowered/securedoor/update_icon()
	if(density)
		icon_state = "secure"
	else
		icon_state = "secureopen"

/obj/machinery/door/unpowered/securedoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("secure_opening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("secure_closing", src)


// SECURE DOOR - LEGION

/obj/machinery/door/unpowered/securedoor/legion
	name = "Legion Castrum"
	req_access_txt = "123"

//khoor
/obj/machinery/door/unpowered/securedoor/khandoor
	name = "khan door"
	req_access_txt = "125"

//bdoor
/obj/machinery/door/unpowered/securedoor/sheriff_door
	name = "secure door"
	req_access_txt = "62"
	icon_state = "secure_steel"

/obj/machinery/door/unpowered/securedoor/sheriff_door/update_icon()
	if(density)
		icon_state = "secure_steel"
	else
		icon_state = "secure_steel_open"

/obj/machinery/door/unpowered/securedoor/sheriff_door/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorshutter_open.ogg',40,1)
			flick("secure_steel_opening", src)
		if("closing")
			playsound(src,'sound/f13machines/doorshutter_close.ogg',40,1)
			flick("secure_steel_closing", src)

//bdoor2
/obj/machinery/door/unpowered/securedoor/mayoral_door
	name = "secure door"
	req_access_txt = "4"
	icon_state = "houseclean"

/obj/machinery/door/unpowered/securedoor/mayoral_door/update_icon()
	if(density)
		icon_state = "houseclean"
	else
		icon_state = "housecleanopen"

/obj/machinery/door/unpowered/securedoor/mayoral_door/do_animate(animation)
	switch(animation)
		if("opening")
			flick("housecleanopening", src)
		if("closing")
			flick("housecleanclosing", src)


//bdoor3
/obj/machinery/door/unpowered/securedoor/bank_door
	name = "secure door"
	req_access_txt = "48"
	icon_state = "metal"

/obj/machinery/door/unpowered/securedoor/bank_door/update_icon()
	if(density)
		icon_state = "metal"
	else
		icon_state = "metalopen"

/obj/machinery/door/unpowered/securedoor/bank_door/do_animate(animation)
	switch(animation)
		if("opening")
			flick("metalopening", src)
		if("closing")
			flick("metalclosing", src)

//bdoor3
/obj/machinery/door/unpowered/securedoor/bighorn_door
	name = "secure door"
	req_access_txt = "25"

// ------------------------------------
// NCR SECURE REINFORCED DOOR - tough airlock replacement

/obj/machinery/door/unpowered/secure_NCR
	name = "reinforced door"
	desc = "Solid oak and metal reinforcements make this style of door a favoured method to secure Republic buildings. Has a built in lock."
	icon_state = "secure_NCR"
	assemblytype = /obj/item/stack/sheet/metal/ten
	max_integrity = 800
	obj_integrity = 800
	explosion_block = TRUE
	req_access_txt = "121"

/obj/machinery/door/unpowered/secure_NCR/update_icon()
	if(density)
		icon_state = "secure_NCR"
	else
		icon_state = "secure_NCR_open"

/obj/machinery/door/unpowered/secure_NCR/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("secure_NCR_opening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("secure_NCR_closing", src)


// ------------------------------------
// SECURE STEEL DOOR - tougher

/obj/machinery/door/unpowered/secure_steeldoor
	name = "locked steel door"
	desc = "Steel-plated door with a built-in lock. Can't be padlocked."
	icon_state = "secure_steel"
	assemblytype = /obj/item/stack/sheet/metal/ten
	max_integrity = 1000
	obj_integrity = 1000
	explosion_block = TRUE

/obj/machinery/door/unpowered/secure_steeldoor/update_icon()
	if(density)
		icon_state = "secure_steel"
	else
		icon_state = "secure_steel_open"

/obj/machinery/door/unpowered/secure_steeldoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("secure_steel_opening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("secure_steel_closing", src)


// ------------------------------------
// CELL DOOR

/obj/machinery/door/unpowered/celldoor
	name = "cell door"
	desc = "Celldoor with a built-in lock. Can't be padlocked."
	icon_state = "cell"
	max_integrity = 1000
	obj_integrity = 1000
	assemblytype = /obj/item/stack/rods
	visible = FALSE
	explosion_block = FALSE
	pass_flags_self = LETPASSTHROW
	barricade = TRUE
	proj_pass_rate = 95

/obj/machinery/door/unpowered/celldoor/update_icon()
	if(density)
		icon_state = "cell"
	else
		icon_state = "cellopen"

/obj/machinery/door/unpowered/celldoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorchainlink_open.ogg',40,1)
			flick("cell_opening", src)
		if("closing")
			playsound(src,'sound/f13machines/doorchainlink_close.ogg',40,1)
			flick("cell_closing", src)


// CELL DOOR - LEGION

/obj/machinery/door/unpowered/celldoor/legion
	name = "cell door"
	req_access_txt = "123"

// CELL DOOR - RAIDER

/obj/machinery/door/unpowered/celldoor/outlaw
	name = "cell door"
	req_access_txt = "141"


// ------------------------------------
// LEGION SECURE REINFORCED DOOR - tough airlock replacement

/obj/machinery/door/unpowered/secure_legion
	name = "iron gate"
	desc = "Thick iron rods with sharp tips make for a fitting gate for the Legion castrum."
	icon_state = "secure_legion"
	max_integrity = 800
	obj_integrity = 800
	assemblytype = /obj/item/stack/rods
	visible = FALSE
	explosion_block = FALSE
	barricade = TRUE
	proj_pass_rate = 95
	req_access_txt = "123"

/obj/machinery/door/unpowered/secure_legion/update_icon()
	if(density)
		icon_state = "secure_legion"
	else
		icon_state = "secure_legion_open"

/obj/machinery/door/unpowered/secure_legion/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorchainlink_open.ogg',40,1)
			flick("secure_legion_opening", src)
		if("closing")
			playsound(src,'sound/f13machines/doorchainlink_close.ogg',40,1)
			flick("secure_legion_closing", src)


// ------------------------------------
// BOS SECURE REINFORCED DOOR - tough airlock replacement

/obj/machinery/door/unpowered/secure_bos
	name = "steel security door"
	desc = "Hard steel makes a statement. The statement in this case is stay out."
	icon_state = "secure_bos"
	max_integrity = 1000
	obj_integrity = 1000
	assemblytype = /obj/item/stack/sheet/metal/ten
	req_access_txt = "120"

/obj/machinery/door/unpowered/secure_bos/update_icon()
	if(density)
		icon_state = "secure_bos"
	else
		icon_state = "secure_bos_open"

/obj/machinery/door/unpowered/secure_bos/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("secure_bos_opening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("secure_bos_closing", src)


// ------------------------------------
// TRIBALS & OUTLAWS
/obj/machinery/door/unpowered/securedoor/tribal
	name = "secure door"
	req_access_txt = "131"
	icon_state = "metal"

/obj/machinery/door/unpowered/securedoor/tribal/update_icon()
	if(density)
		icon_state = "metal"
	else
		icon_state = "metalopen"

/obj/machinery/door/unpowered/securedoor/tribal/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("metalopening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("metalclosing", src)

/obj/machinery/door/unpowered/securedoor/outlaw
	name = "secure door"
	req_access_txt = "141"
	icon_state = "metal"

/obj/machinery/door/unpowered/securedoor/outlaw/update_icon()
	if(density)
		icon_state = "metal"
	else
		icon_state = "metalopen"

/obj/machinery/door/unpowered/securedoor/outlaw/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("metalopening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("metalclosing", src)

/obj/machinery/door/unpowered/securedoor/outlaw/boss
	req_access_txt = "142"


// ------------------------------------
// Badlands
// GMB

/obj/machinery/door/unpowered/securedoor/gmb_exterior_door
	name = "heavy secure door"
	req_access_txt = "143"
	icon_state = "secure_steel"

/obj/machinery/door/unpowered/securedoor/gmb_exterior_door/update_icon()
	if(density)
		icon_state = "secure_steel"
	else
		icon_state = "secure_steel_open"

/obj/machinery/door/unpowered/securedoor/gmb_exterior_door/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorshutter_open.ogg',40,1)
			flick("secure_steel_opening", src)
		if("closing")
			playsound(src,'sound/f13machines/doorshutter_close.ogg',40,1)
			flick("secure_steel_closing", src)

/obj/machinery/door/unpowered/securedoor/gmb_mp_door
	name = "large secure door"
	req_access_txt = "145"

/obj/machinery/door/unpowered/securedoor/gmb_door
	name = "secure door"
	req_access_txt = "143"

/obj/machinery/door/unpowered/celldoor/gmb_gate
	name = "cell door"
	req_access_txt = "143"

/obj/machinery/door/unpowered/securedoor/gmb_command
	name = "secure door"
	req_access_txt = "144"
	icon_state = "metal"

/obj/machinery/door/unpowered/securedoor/gmb_command/update_icon()
	if(density)
		icon_state = "metal"
	else
		icon_state = "metalopen"

/obj/machinery/door/unpowered/securedoor/gmb_command/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("metalopening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("metalclosing", src)

// ------------------------------------
// Badlands
// DFS

/obj/machinery/door/unpowered/securedoor/dfs_exterior_door
	name = "heavy secure door"
	req_access_txt = "146"
	icon_state = "secure_steel"

/obj/machinery/door/unpowered/securedoor/dfs_exterior_door/update_icon()
	if(density)
		icon_state = "secure_steel"
	else
		icon_state = "secure_steel_open"

/obj/machinery/door/unpowered/securedoor/dfs_exterior_door/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorshutter_open.ogg',40,1)
			flick("secure_steel_opening", src)
		if("closing")
			playsound(src,'sound/f13machines/doorshutter_close.ogg',40,1)
			flick("secure_steel_closing", src)

/obj/machinery/door/unpowered/securedoor/dfs_door
	name = "secure door"
	req_access_txt = "146"

/obj/machinery/door/unpowered/celldoor/dfs_gate
	name = "cell door"
	req_access_txt = "146"

/obj/machinery/door/unpowered/securedoor/dfs_command
	name = "secure door"
	req_access_txt = "147"
	icon_state = "metal"

/obj/machinery/door/unpowered/securedoor/dfs_command/update_icon()
	if(density)
		icon_state = "metal"
	else
		icon_state = "metalopen"

/obj/machinery/door/unpowered/securedoor/dfs_command/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			flick("metalopening", src)
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			flick("metalclosing", src)

// ------------------------------------
// Badlands
// LBJ

/obj/machinery/door/unpowered/securedoor/lbj_exterior_door
	name = "heavy secure door"
	req_access_txt = "148"
	icon_state = "secure_steel"

/obj/machinery/door/unpowered/securedoor/lbj_exterior_door/update_icon()
	if(density)
		icon_state = "secure_steel"
	else
		icon_state = "secure_steel_open"

/obj/machinery/door/unpowered/securedoor/lbj_exterior_door/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorshutter_open.ogg',40,1)
			flick("secure_steel_opening", src)
		if("closing")
			playsound(src,'sound/f13machines/doorshutter_close.ogg',40,1)
			flick("secure_steel_closing", src)

/obj/machinery/door/unpowered/securedoor/lbj_door
	name = "secure door"
	req_access_txt = "148"

/obj/machinery/door/unpowered/celldoor/lbj_gate
	name = "cell door"
	req_access_txt = "148"
