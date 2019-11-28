
data:extend(
{
  {
    type = "technology",
    name = "tile-miner",
    icon = "__bucketwheels-withvisual__/graphics/technology/BigWheelTech-MKI.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tile-miner"
      },
      {
        type = "unlock-recipe",
        recipe = "tile-miner-3e"
      },
      {
        type = "unlock-recipe",
        recipe = "tile-miner-e3"
      }
    },
    prerequisites = {"tile-miner-b"},
    unit = {
      count = 60,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "c-g-b-z",
  },{
    type = "technology",
    name = "tile-miner-b",
    icon = "__bucketwheels-withvisual__/graphics/technology/BigWheelTech-MKI.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tile-miner-b"
      },
      {
        type = "unlock-recipe",
        recipe = "tile-miner-b3"
      },
      {
        type = "unlock-recipe",
        recipe = "tile-miner-3b"
      },
      {
        type = "unlock-recipe",
        recipe = "tile-miner-bl"
      },
      {
        type = "unlock-recipe",
        recipe = "tile-miner-lb"
      },
    },
    prerequisites = {},
    unit = {
      count = 2,
      ingredients = {
        {"automation-science-pack", 20},
      },
      time = 10
    },
    order = "c-g-b-z",
  },{
    type = "technology",
    name = "tile-miner-op",
    icon = "__bucketwheels-withvisual__/graphics/technology/BigWheelTech-MKI.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tile-miner-op"
      }
    },
    prerequisites = {"tile-miner"},
    unit = {
      count = 2,
      ingredients = {
        {"space-science-pack", 20},
      },
      time = 10
    },
    order = "c-g-b-z",
  }
})
