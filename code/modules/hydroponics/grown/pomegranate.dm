// Pomegranate
/obj/item/seeds/pomegranate
	name = "pomegranate seed pack"
	desc = "These seeds grow into pomegranate bushes. Not edible."
	icon_state = "seed-pomegranate"
	species = "pomegranate"
	plantname = "Pomegranate Bush"
	product = /obj/item/food/grown/pomegranate
	lifespan = 60
	endurance = 40
	yield = 3
	growing_icon = 'icons/obj/service/hydroponics/growing_fruits.dmi'
	icon_grow = "pomegranate-grow"
	icon_dead = "pomegranate-dead"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	mutatelist = list(/obj/item/seeds/pomegranate/chthonic)
	reagents_add = list(/datum/reagent/consumable/nutriment/vitamin = 0.04, /datum/reagent/consumable/nutriment = 0.1)

/obj/item/food/grown/pomegranate
	seed = /obj/item/seeds/pomegranate
	name = "pomegranate"
	desc = "Full of juicy seeds."
	icon_state = "pomegranate"
	foodtypes = FRUIT
	juice_typepath = /datum/reagent/consumable/pomegranatejuice
	tastes = list("pomegranate" = 1)

/obj/item/food/grown/pomegranate/make_processable()
	AddElement(/datum/element/processable, /obj/item/kitchen/spoon, /obj/item/food/grown/pomegranateseed, 5, 20, screentip_verb = "Scoop out seeds")

/obj/item/food/grown/pomegranateseed
	name = "pomegranate seed"
	seed = /obj/item/seeds/pomegranate
	desc = "A sweet and juicy seed."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "pomegranateseed"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 0.2,
		/datum/reagent/consumable/nutriment = 0.5,
	)
	tastes = list("pomegranate" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	juice_typepath = /datum/reagent/consumable/pomegranatejuice
	w_class = WEIGHT_CLASS_SMALL

// Chthonic pomegranate
/obj/item/seeds/pomegranate/chthonic
	name = "chthonic pomegranate seed pack"
	desc = "These seeds grow into chthonic pomegranate bushes. They yearn for the deep earth."
	icon_state = "seed-chthonicpomegranate"
	species = "chthonicpomegranate"
	plantname = "chthonic Pomegranate Bush"
	product = /obj/item/food/grown/pomegranate/chthonic
	lifespan = 60
	endurance = 40
	yield = 3
	genes = list(/datum/plant_gene/trait/repeated_harvest, /datum/plant_gene/trait/glow/purple)
	reagents_add = list(/datum/reagent/inverse/helgrasp = 0.08, /datum/reagent/consumable/nutriment/vitamin = 0.04, /datum/reagent/consumable/nutriment = 0.1)
	rarity = 20

/obj/item/food/grown/pomegranate/chthonic
	seed = /obj/item/seeds/pomegranate/chthonic
	name = "chthonic pomegranate"
	desc = "Full of juicy seeds that the underworld wants back."
	icon_state = "chthonicpomegranate"
	foodtypes = FRUIT
	juice_typepath = /datum/reagent/consumable/pomegranatejuice
	tastes = list("the underworld" = 2,"pomegranate" = 1)

/obj/item/food/grown/pomegranate/chthonic/make_processable()
	AddElement(/datum/element/processable, /obj/item/kitchen/spoon, /obj/item/food/grown/pomegranateseed/chthonic, 5, 20, screentip_verb = "Scoop out seeds")

/obj/item/food/grown/pomegranateseed/chthonic
	name = "chthonic pomegranate seed"
	seed = /obj/item/seeds/pomegranate/chthonic
	desc = "A sweet and juicy seed that belongs to the underworld."
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "chthonicpomegranateseed"
	food_reagents = list(
		/datum/reagent/inverse/helgrasp = 0.4,
		/datum/reagent/consumable/nutriment/vitamin = 0.2,
		/datum/reagent/consumable/nutriment = 0.5,
	)
	tastes = list("the underworld" = 2, "pomegranate" = 1)
	foodtypes = FRUIT
	food_flags = FOOD_FINGER_FOOD
	juice_typepath = /datum/reagent/consumable/pomegranatejuice
	w_class = WEIGHT_CLASS_SMALL
