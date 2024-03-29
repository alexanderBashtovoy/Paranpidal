local bob_coefficient = 10
local researchCost = settings.startup["SpaceX-research"].value
if researchCost == nil then
	researchCost = 1
end

local SpaceXTechs = {
"space-assembly",
"space-construction",
"space-casings",
"protection-fields",
"fusion-reactor",
"space-thrusters",
"fuel-cells",
"habitation",
"life-support-systems",
"spaceship-command",
"astrometrics",
"ftl-theory-A",
"ftl-theory-B",
"ftl-theory-C",
"ftl-propulsion",
}

if data.raw.tool["logistic-science-pack"] then

	table.insert(SpaceXTechs, "ftl-theory-D")

    data:extend(
    {
		{
		type = "technology",
		name = "ftl-theory-D",
		icon = "__SpaceMod__/graphics/technology/ftl.png",	
		icon_size = 64,
		prerequisites = {"ftl-theory-C"},
		unit =
		{
		count = 100000 * researchCost,
		ingredients =
		{
			{"science-pack-1", 2},
			{"science-pack-2", 2},
			{"science-pack-3", 1},
			{"logistic-science-pack", 1},
		},
		time = 120
		},
		order = "k-o-a"
	}
	}
	)

	bobmods.lib.tech.add_science_pack("space-assembly", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("space-construction", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("space-casings", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("protection-fields", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("fusion-reactor", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("space-thrusters", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("fuel-cells", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("habitation", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("life-support-systems", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("spaceship-command", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("astrometrics", "logistic-science-pack", 1)
	bobmods.lib.tech.add_science_pack("ftl-propulsion", "logistic-science-pack", 1)


    data.raw.technology["ftl-theory-A"].unit.count = 200000 * researchCost
    data.raw.technology["ftl-theory-B"].unit.count = 200000 * researchCost
    data.raw.technology["ftl-theory-C"].unit.count = 100000 * researchCost
    data.raw.technology["ftl-propulsion"].unit.count = 100000 * researchCost

    bobmods.lib.tech.replace_prerequisite("ftl-propulsion", "ftl-theory-C", "ftl-theory-D")

end

bobmods.lib.tech.add_prerequisite("space-assembly", "bob-robots-3")	

if bobmods.modules.EnableGodModules == true then
	bobmods.lib.tech.add_prerequisite("space-assembly", "god-module-5")
--    data.raw.technology["space-assembly"].prerequisites = {"god-module-5","rocket-silo","bob-robots-3"}
else
	bobmods.lib.tech.add_prerequisite("space-assembly", "speed-module-8")
	bobmods.lib.tech.add_prerequisite("space-assembly", "effectivity-module-8")
--    data.raw.technology["space-assembly"].prerequisites = {"speed-module-8","effectivity-module-8","rocket-silo","bob-robots-3"}
	bobmods.lib.tech.add_prerequisite("ftl-propulsion", "productivity-module-8")
--    data.raw.technology["ftl-propulsion"].prerequisites = {"productivity-module-8","ftl-theory-D"}	
end

bobmods.lib.tech.add_prerequisite("space-construction", "bob-robo-modular-4")	
-- data.raw.technology["space-construction"].prerequisites = {"space-assembly","bob-robo-modular-4"}
bobmods.lib.tech.add_prerequisite("protection-fields", "energy-shield-equipment-6")
-- data.raw.technology["protection-fields"].prerequisites = {"space-construction","energy-shield-equipment-6"}
bobmods.lib.tech.add_prerequisite("fusion-reactor", "fusion-reactor-equipment-4")
-- data.raw.technology["fusion-reactor"].prerequisites = {"space-construction","fusion-reactor-equipment-4"}

bobmods.lib.tech.add_prerequisite("rocket-silo", "titanium-processing")
bobmods.lib.tech.add_prerequisite("rocket-silo", "nitinol-processing")
bobmods.lib.tech.add_prerequisite("rocket-silo", "electric-energy-accumulators-4")
bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-solar-energy-4")
bobmods.lib.tech.add_prerequisite("rocket-silo", "advanced-electronics-3")
bobmods.lib.tech.add_prerequisite("rocket-silo", "radars-4")

-- alternate protection field recipe enabler
bobmods.lib.tech.add_recipe_unlock("protection-fields", "protection-field-goopless")

-- Nerf Bob's end game
for i, tech in pairs(SpaceXTechs) do
	local rootTech = data.raw.technology[tech]
	if rootTech ~= nil then
		rootTech.unit.count = rootTech.unit.count * bob_coefficient
	end
end
