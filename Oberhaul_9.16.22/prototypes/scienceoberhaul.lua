--Clear Science Pack Recipes
if mods.bobplates and mods.bobtech then
data.raw.recipe['science-pack-1'].ingredients = {
    {"iron-gear-wheel",1},
    {"copper-plate",2}
}

data.raw.recipe["science-pack-2"].result_count = 2
data.raw.recipe['science-pack-2'].ingredients = {
    {"fast-inserter",1},
    {"small-electric-pole",1}
}

data.raw.recipe['science-pack-3'].ingredients = {
    {"advanced-circuit",4},
    {"steel-axe",2},
    {"gold-plate",4},
    {"aluminium-plate",4}
}

data.raw.recipe['military-science-pack'].ingredients = {
    {"gunmetal-alloy",4},
    {"invar-alloy",3},
    {"grenade",1}
}

data.raw.recipe["logistic-science-pack"].ingredients = {
    --{"car", 1},
    {"express-transport-belt", 1},
    {"flying-robot-frame", 1},
    {"brass-chest", 1}
}

data.raw.recipe['production-science-pack'].ingredients = {
    {"bob-pump-4",2},
    {"cobalt-axe",1},
    {"processing-unit",4},
    {"ruby-5",2},
    {"sapphire-5",2}
}
data.raw.recipe["high-tech-science-pack"].energy_required = 28
data.raw.recipe["high-tech-science-pack"].result_count = 4
data.raw.recipe['high-tech-science-pack'].ingredients = {
    {"angels-wire-silver",30},
    --{"tungsten-pipe-to-ground",2},
    --{"electrum-alloy",8},
    --{"advanced-processing-unit",4},
    {"uranium-238",5},
    {"rubber",10},
    {"bob-mining-drill-4",1},
}

data.raw.recipe["rocket-control-unit"].ingredients = {
    {"advanced-processing-unit",1},
    {"productivity-module-2",1}
}
if mods.bobtech then
data.raw.recipe["lab-2"].ingredients = {
    {"express-stack-inserter", 2},
    {"turbo-transport-belt",2},
    {"advanced-processing-unit",2},
    {"lab",1}
}
end
if data.raw.recipe['science-pack-1'].normal then
--Clear Science Pack Recipes
data.raw.recipe['science-pack-1'].normal.ingredients = {
    {"iron-gear-wheel",1},
    {"copper-plate",2}
}

data.raw.recipe["science-pack-2"].normal.result_count = 2
data.raw.recipe['science-pack-2'].normal.ingredients = {
    {"fast-inserter",1},
    {"small-electric-pole",1}
}

data.raw.recipe['science-pack-3'].normal.ingredients = {
    {"advanced-circuit",4},
    {"steel-axe",2},
    {"gold-plate",4},
    {"aluminium-plate",4}
}

data.raw.recipe['military-science-pack'].normal.ingredients = {
    {"gunmetal-alloy",4},
    {"invar-alloy",3},
    {"grenade",1}
}

data.raw.recipe["logistic-science-pack"].normal.ingredients = {
    --{"car", 1},
    {"express-transport-belt", 1},
    {"flying-robot-frame", 1},
    {"brass-chest", 1}
}

data.raw.recipe['production-science-pack'].normal.ingredients = {
    {"bob-pump-4",2},
    {"cobalt-axe",1},
    {"processing-unit",4},
    {"ruby-5",2},
    {"sapphire-5",2}
}
data.raw.recipe["high-tech-science-pack"].normal.energy_required = 28
data.raw.recipe["high-tech-science-pack"].normal.result_count = 4
data.raw.recipe['high-tech-science-pack'].normal.ingredients = {
    {"angels-wire-silver",30},
    {"tungsten-pipe-to-ground",2},
    {"electrum-alloy",8},
    {"advanced-processing-unit",4},
    {"uranium-238",5},
    {"rubber",10},
    --{"bob-mining-drill-4",1},
}
data.raw.recipe["rocket-control-unit"].ingredients = {
    {"advanced-processing-unit",1},
    {"productivity-module-2",1}
}
end
end
--Technology
--Make Lazy Bastard Possible
if mods["aai-industry"] then
  data.raw.technology["basic-automation"].unit = {count=1,ingredients={{"science-pack-1",1}},time=30}
  data.raw.technology["basic-logistics"].unit = {count=1,ingredients={{"science-pack-1",1}},time=30}
  data.raw.lab["burner-lab"].inputs = {"science-pack-1"}
end

if mods.bobelectronics then
data.raw.technology['advanced-electronics-3'].unit =
{
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 30,
      count = 100
}
end

--Require Lab Mk2 for High tech and Space science
data.raw.lab["lab"].inputs = {"science-pack-1","science-pack-2","science-pack-3","military-science-pack","logistic-science-pack","production-science-pack","token-bio"}

--Reorder the dependancies of science packs
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "production-science-pack")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "high-tech-science-pack")
bobmods.lib.tech.remove_recipe_unlock("advanced-electronics-2","high-tech-science-pack")
bobmods.lib.tech.remove_recipe_unlock("advanced-material-processing-2","production-science-pack")
data.raw.technology["advanced-research"].prerequisites = {"advanced-electronics-2","bob-logistics-4"}
bobmods.lib.tech.add_new_science_pack("advanced-research","production-science-pack",1)
bobmods.lib.tech.add_new_science_pack("advanced-research","logistic-science-pack",1)
data.raw.technology["advanced-electronics-3"].prerequisites = {"advanced-electronics-2","advanced-research"}

if mods.SpaceMod then
bobmods.lib.tech.add_new_science_pack("spaceship-command","military-science-pack",1)
bobmods.lib.tech.add_new_science_pack("ftl-theory-D","military-science-pack",1)
bobmods.lib.tech.add_new_science_pack("ftl-propulsion","military-science-pack",1)
end