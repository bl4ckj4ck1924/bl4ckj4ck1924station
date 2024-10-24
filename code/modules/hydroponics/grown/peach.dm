// Peach
/obj/item/seeds/peach
	name = "peach seed pack"
	desc = "After a serious of inexplicable and disastrous events during shipping, Nanotrasen's suppliers refuse to transport these. How it got aboard the station is a mystery."
	icon_state = "seed-peach"
	species = "peach"
	plantname = "Peach Tree"
	product = /obj/item/food/grown/peach
	lifespan = 55
	endurance = 35
	yield = 5
	growing_icon = 'icons/obj/service/hydroponics/growing_fruits.dmi'
	icon_grow = "peach-grow"
	icon_dead = "peach-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	reagents_add = list(/datum/reagent/consumable/nutriment/vitamin = 0.04, /datum/reagent/consumable/nutriment = 0.1)

/obj/item/food/grown/peach
	seed = /obj/item/seeds/peach
	name = "peach"
	desc = "A fuzzy and sweet fruit."
	icon_state = "peach"
	foodtypes = FRUIT
	juice_typepath = /datum/reagent/consumable/peachjuice
	tastes = list("peach" = 1)
