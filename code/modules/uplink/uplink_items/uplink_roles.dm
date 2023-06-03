
/*
	Uplink Items:
	Unlike categories, uplink item entries are automatically sorted alphabetically on server init in a global list,
	When adding new entries to the file, please keep them sorted by category.
*/

// Role-specific items

/datum/uplink_item/role_restricted/ancient_jumpsuit
	name = "Ancient Jumpsuit"
	desc = "A tattered old jumpsuit that will provide absolutely no benefit to you. It fills the wearer with a strange compulsion to blurt out 'glorf'."
	item = /obj/item/clothing/under/color/grey/glorf
	cost = 20
	restricted_roles = list("Assistant")

/datum/uplink_item/role_restricted/alientech
	name = "Alien Research Disk"
	desc = "A technology disk holding a terabyte of highly confidential abductor technology. \
			Simply insert into research console of choice and import the files from the disk. Because of its foreign nature, it may require multiple uploads to work properly."
	item = /obj/item/disk/tech_disk/abductor
	cost = 12
	restricted_roles = list("Research Director", "Scientist", "Roboticist")

/datum/uplink_item/device_tools/brainwash_disk
	name = "Brainwashing Surgery Program"
	desc = "A disk containing the procedure to perform a brainwashing surgery, allowing you to implant an objective onto a target. \
	Insert into an Operating Console to enable the procedure."
	item = /obj/item/disk/surgery/brainwashing
	restricted_roles = list("Medical Doctor", "Roboticist")
	cost = 5

/datum/uplink_item/role_restricted/haunted_magic_eightball
	name = "Haunted Magic Eightball"
	desc = "Most magic eightballs are toys with dice inside. Although identical in appearance to the harmless toys, this occult device reaches into the spirit world to find its answers. \
			Be warned, that spirits are often capricious or just little assholes. To use, simply speak your question aloud, then begin shaking."
	item = /obj/item/toy/eightball/haunted
	cost = 2
	restricted_roles = list("Curator")
	limited_stock = 1 //please don't spam deadchat

/datum/uplink_item/role_restricted/his_grace
	name = "His Grace"
	desc = "An incredibly dangerous weapon recovered from a station overcome by the grey tide. Once activated, He will thirst for blood and must be used to kill to sate that thirst. \
	His Grace grants gradual regeneration and complete stun immunity to His wielder, but be wary: if He gets too hungry, He will become impossible to drop and eventually kill you if not fed. \
	However, if left alone for long enough, He will fall back to slumber. \
	To activate His Grace, simply unlatch Him."
	item = /obj/item/his_grace
	cost = 20
	restricted_roles = list("Chaplain")
	surplus = 5 //Very low chance to get it in a surplus crate even without being the chaplain

/datum/uplink_item/role_restricted/clockwork_slab
	name = "Clockwork Slab"
	desc = "A reverse engineered clockwork slab. Is this really a good idea?."
	item = /obj/item/clockwork/slab/traitor
	cost = 20
	player_minimum = 20
	refundable = TRUE
	restricted_roles = list("Chaplain")
	exclude_modes = list(/datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/role_restricted/arcane_tome
	name = "Arcane Tome"
	desc = "A replica of a Nar'sian tome. This is probably a bad idea.."
	item = /obj/item/tome/traitor
	cost = 20
	player_minimum = 20
	refundable = TRUE
	restricted_roles = list("Chaplain")
	exclude_modes = list(/datum/game_mode/traitor/internal_affairs)

/datum/uplink_item/role_restricted/explosive_hot_potato
	name = "Exploding Hot Potato"
	desc = "A potato rigged with explosives. On activation, a special mechanism is activated that prevents it from being dropped. \
			The only way to get rid of it if you are holding it is to attack someone else with it, causing it to latch to that person instead."
	item = /obj/item/hot_potato/syndicate
	cost = 4
	restricted_roles = list("Cook", "Botanist")

/datum/uplink_item/role_restricted/strange_seeds_10pack
	name = "Pack of strange seeds"
	desc = "Mysterious seeds as strange as their name implies. Spooky. These come in bulk"
	item = /obj/item/storage/box/strange_seeds_10pack
	cost = 10
	restricted_roles = list("Botanist")

/datum/uplink_item/role_restricted/ez_clean_bundle
	name = "EZ Clean Grenade Bundle"
	desc = "A box with three cleaner grenades using the trademark Waffle Co. formula. Serves as a cleaner and causes acid damage to anyone standing nearby. \
			The acid only affects carbon-based creatures."
	item = /obj/item/storage/box/syndie_kit/ez_clean
	cost = 6
	surplus = 20
	restricted_roles = list("Janitor")

/datum/uplink_item/role_restricted/kitchen_gun
	name = "Kitchen Gun (TM)"
	desc = "A revolutionary .45 caliber cleaning solution! Say goodbye to daily stains and dirty surfaces with Kitchen Gun (TM)! \
	Just three shots from Kitchen Gun (TM), and it'll sparkle like new! Includes two extra ammunition clips!"
	cost = 10
	surplus = 40
	restricted_roles = list("Cook", "Janitor")
	item = /obj/item/storage/box/syndie_kit/kitchen_gun

/datum/uplink_item/role_restricted/kitchen_gun_ammo
	name = "Kitchen Gun (TM) .45 Magazine"
	desc = "An extra eight bullets for an extra eight uses of Kitchen Gun (TM)!"
	cost = 1
	restricted_roles = list("Cook", "Janitor")

/datum/uplink_item/role_restricted/modified_syringe_gun
	name = "Modified Syringe Gun"
	desc = "A syringe gun that fires DNA injectors instead of normal syringes."
	item = /obj/item/gun/syringe/dna
	cost = 14
	restricted_roles = list("Geneticist", "Chief Medical Officer")

/datum/uplink_item/role_restricted/chemical_gun
	name = "Reagent Dartgun"
	desc = "A heavily modified syringe gun which is capable of synthesizing its own chemical darts using input reagents. Can hold 100u of reagents."
	item = /obj/item/gun/chem
	cost = 12
	restricted_roles = list("Chemist", "Chief Medical Officer")

/datum/uplink_item/role_restricted/reverse_bear_trap
	name = "Reverse Bear Trap"
	desc = "An ingenious execution device worn on (or forced onto) the head. Arming it starts a 1-minute kitchen timer mounted on the bear trap. When it goes off, the trap's jaws will \
	violently open, instantly killing anyone wearing it by tearing their jaws in half. To arm, attack someone with it while they're not wearing headgear, and you will force it onto their \
	head after three seconds uninterrupted."
	cost = 5
	item = /obj/item/reverse_bear_trap
	restricted_roles = list("Clown")

/datum/uplink_item/role_restricted/reverse_revolver
	name = "Reverse Revolver"
	desc = "A revolver that always fires at its user. \"Accidentally\" drop your weapon, then watch as the greedy corporate pigs blow their own brains all over the wall. \
	The revolver itself is actually real. Only clumsy people, and clowns, can fire it normally. Comes in a box of hugs. Honk."
	cost = 14
	item = /obj/item/storage/box/hug/reverse_revolver
	restricted_roles = list("Clown")

/datum/uplink_item/role_restricted/crushmagboots
	name = "Crushing Magboots"
	desc = "A pair of extra-strength magboots that crush anyone you walk over."
	cost = 2
	item = /obj/item/clothing/shoes/magboots/crushing
	restricted_roles = list("Chief Engineer", "Station Engineer", "Atmospheric Technician")
