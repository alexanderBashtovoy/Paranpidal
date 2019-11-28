local preMK1, preMK2, preMK3
if mods["bobplates"] then
    preMK2 = {"titanium-processing"}
    preMK3 = {"nitinol-processing", "tungsten-alloy-processing"}
end
data:extend(
{
  {
    type = "technology",
    name = "bucket-wheel-excavator",
    localised_name = {"technology-name.bucket-wheel-excavator"},
    localised_description = {"technology-description.bw-mk-1"},
    icon = "__bucketwheels-withvisual__/graphics/technology/BigWheelTech-MKI.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bucket-wheel-excavator"
      },
    },
    prerequisites = { "electric-engine", "logistics-2"},
    unit = {
      count = 80,
      ingredients = {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2}
      },
      time = 35
    },
    order = "c-g-b-z",
  },
  {
    type = "technology",
    name = "bucket-wheel-excavator-mk2",
    localised_name = {"technology-name.bucket-wheel-excavator-mk2"},
    localised_description = {"technology-description.bw-mk-2"},
    icon = "__bucketwheels-withvisual__/graphics/technology/BigWheelTech-MKII.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bucket-wheel-excavator-mk2"
      },
    },
    prerequisites = {"logistics-2", "bucket-wheel-excavator", "advanced-material-processing-2", unpack(preMK2 or {})},
    unit = {
      count = 60,
      ingredients = {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
		{"chemical-science-pack", 1}
      },
      time = 60
    },
    order = "c-g-b-z",
  },
  {
    type = "technology",
    name = "bucket-wheel-excavator-mk3",
    localised_name = {"technology-name.bucket-wheel-excavator-mk3"},
    localised_description = {"technology-description.bw-mk-3"},
    icon = "__bucketwheels-withvisual__/graphics/technology/BigWheelTech-MKIII.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bucket-wheel-excavator-mk3"
      },
    },
    prerequisites = {"logistics-3", "bucket-wheel-excavator-mk2", unpack(preMK3 or {})},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
		{"chemical-science-pack", 2},
		{"production-science-pack", 1}
      },
      time = 70
    },
    order = "c-g-b-z",
  }
})
