data:extend({
	{
		type = "recipe",
		name = "w93-slowdown-magazine",
		enabled = false,
		energy_required = 24,
		ingredients = {{"piercing-rounds-magazine", 8}, {"slowdown-capsule", 3}},
		result = "w93-slowdown-magazine",
		result_count = 8,
		icon = "__scattergun_turret__/graphics/icons/slowdown-magazine.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-uranium-shotgun-shell",
		enabled = false,
		energy_required = 12,
		ingredients = {{"piercing-shotgun-shell", 1}, {"uranium-238", 1}},
		result = "w93-uranium-shotgun-shell",
		icon = "__scattergun_turret__/graphics/icons/uranium-shotgun-shell.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-turret-cannon-shells",
		normal =
		{
			enabled = false,
			energy_required = 8,
			ingredients = {{"steel-plate", 10}, {"plastic-bar", 10}, {"explosives", 20}},
			result = "w93-turret-cannon-shells",
		},
		expensive =
		{

			enabled = false,
			energy_required = 8,
			ingredients = {{"steel-plate", 20}, {"plastic-bar", 20}, {"explosives", 40}},
			result = "w93-turret-cannon-shells",
		},
		icon = "__scattergun_turret__/graphics/icons/turret-cannon-shells.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-turret-slowdown-shells",
		enabled = false,
		energy_required = 8,
		ingredients = {{"plastic-bar", 8}, {"steel-plate", 8}, {"explosives", 16}, {"slowdown-capsule", 1}},
		result = "w93-turret-slowdown-shells",
		icon = "__scattergun_turret__/graphics/icons/slowdown-cannon-shells.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-turret-light-uranium-cannon-shells",
		enabled = false,
		energy_required = 12,
		ingredients = {{"w93-turret-light-cannon-shells", 1}, {"uranium-238", 1}},
		result = "w93-turret-light-uranium-cannon-shells",
		icon = "__scattergun_turret__/graphics/icons/turret-light-uranium-cannon-shells.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-turret-uranium-cannon-shells",
		enabled = false,
		energy_required = 12,
		ingredients = {{"w93-turret-cannon-shells", 1}, {"uranium-238", 1}},
		result = "w93-turret-uranium-cannon-shells",
		icon = "__scattergun_turret__/graphics/icons/turret-uranium-cannon-shells.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-turret-rocket",
		enabled = false,
		energy_required = 16,
		ingredients = {{"rocket", 4}, {"solid-fuel", 1}},
		result = "w93-turret-rocket",
		icon = "__scattergun_turret__/graphics/icons/turret-rocket.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-turret-explosive-rocket",
		enabled = false,
		energy_required = 16,
		ingredients = {{"explosive-rocket", 4}, {"solid-fuel", 1}},
		result = "w93-turret-explosive-rocket",
		icon = "__scattergun_turret__/graphics/icons/turret-explosive-rocket.png",
    		icon_size = 32,
	},
	{
		type = "recipe",
		name = "w93-turret-slowdown-rocket",
		enabled = false,
		energy_required = 16,
		ingredients = {{"iron-plate", 8}, {"electronic-circuit", 4}, {"solid-fuel", 1}, {"slowdown-capsule", 1}},
		result = "w93-turret-slowdown-rocket",
		icon = "__scattergun_turret__/graphics/icons/slowdown-turret-rocket.png",
    		icon_size = 32,
	}
})