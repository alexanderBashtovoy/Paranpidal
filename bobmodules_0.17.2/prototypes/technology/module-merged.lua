if settings.startup["bobmods-modules-enablegreenmodules"].value == true or
    settings.startup["bobmods-modules-enablerawspeedmodules"].value == true or
    settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true or
    settings.startup["bobmods-modules-enablegodmodules"].value == true
then

data:extend(
{
  {
    type = "technology",
    name = "module-merging",
    icon = "__base__/graphics/technology/module.png",
    icon_size = 128,
    effects =
    {
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 10,
      ingredients =
      {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
        {"productivity-processor", 1},
        {"pollution-clean-processor", 1},
        {"pollution-create-processor", 1},
        {"module-circuit-board", 1},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-a"
  },
}
)

end

if settings.startup["bobmods-modules-enablerawspeedmodules"].value == true then

data:extend(
{
  {
    type = "technology",
    name = "raw-speed-module-1",
    icon = "__bobmodules__/graphics/icons/cyan-module-1.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-1-combine"
      }
    },
    prerequisites = {"module-merging", "speed-module", "effectivity-module"},
    unit =
    {
      count = 25,
      ingredients = {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-m-a"
  },
  {
    type = "technology",
    name = "raw-speed-module-2",
    icon = "__bobmodules__/graphics/icons/cyan-module-2.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-2-combine"
      }
    },
    prerequisites = {"raw-speed-module-1", "speed-module-2", "effectivity-module-2"},
    unit =
    {
      count = 50,
      ingredients = {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-m-b"
  },
  {
    type = "technology",
    name = "raw-speed-module-3",
    icon = "__bobmodules__/graphics/icons/cyan-module-3.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-3-combine"
      }
    },
    prerequisites = {"raw-speed-module-2", "speed-module-3", "effectivity-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"speed-processor", 2},
        {"effectivity-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-m-c"
  },
  {
    type = "technology",
    name = "raw-speed-module-4",
    icon = "__bobmodules__/graphics/icons/cyan-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-4-combine"
      }
    },
    prerequisites = {"raw-speed-module-3", "speed-module-4", "effectivity-module-4"},
    unit =
    {
      count = 100,
      ingredients = {
        {"speed-processor", 2},
        {"effectivity-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-m-d"
  },
  {
    type = "technology",
    name = "raw-speed-module-5",
    icon = "__bobmodules__/graphics/icons/cyan-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-5"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-5-combine"
      }
    },
    prerequisites = {"raw-speed-module-4", "speed-module-5", "effectivity-module-5"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-e"
  },
  {
    type = "technology",
    name = "raw-speed-module-6",
    icon = "__bobmodules__/graphics/icons/cyan-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-6"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-6-combine"
      }
    },
    prerequisites = {"raw-speed-module-5", "speed-module-6", "effectivity-module-6"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-f"
  },
  {
    type = "technology",
    name = "raw-speed-module-7",
    icon = "__bobmodules__/graphics/icons/cyan-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-7"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-7-combine"
      }
    },
    prerequisites = {"raw-speed-module-6", "speed-module-7", "effectivity-module-7"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-g"
  },
  {
    type = "technology",
    name = "raw-speed-module-8",
    icon = "__bobmodules__/graphics/icons/cyan-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-8"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-8-combine"
      }
    },
    prerequisites = {"raw-speed-module-7", "speed-module-8", "effectivity-module-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-h"
  },
}
)

end
if settings.startup["bobmods-modules-enablegreenmodules"].value == true then

data:extend(
{
  {
    type = "technology",
    name = "green-module-1",
    icon = "__bobmodules__/graphics/icons/yellow-module-1.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-1-combine"
      }
    },
    prerequisites = {"module-merging", "effectivity-module", "pollution-clean-module-1"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"effectivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-o-a"
  },
  {
    type = "technology",
    name = "green-module-2",
    icon = "__bobmodules__/graphics/icons/yellow-module-2.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-2-combine"
      }
    },
    prerequisites = {"green-module-1", "effectivity-module-2", "pollution-clean-module-2"},
    unit =
    {
      count = 50,
      ingredients = {
        {"effectivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-o-b"
  },
  {
    type = "technology",
    name = "green-module-3",
    icon = "__bobmodules__/graphics/icons/yellow-module-3.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-3-combine"
      }
    },
    prerequisites = {"green-module-2", "effectivity-module-3", "pollution-clean-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"effectivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-o-c"
  },
  {
    type = "technology",
    name = "green-module-4",
    icon = "__bobmodules__/graphics/icons/yellow-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-4-combine"
      }
    },
    prerequisites = {"green-module-3", "effectivity-module-4", "pollution-clean-module-4"},
    unit =
    {
      count = 100,
      ingredients = {
        {"effectivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-o-d"
  },
  {
    type = "technology",
    name = "green-module-5",
    icon = "__bobmodules__/graphics/icons/yellow-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-5"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-5-combine"
      }
    },
    prerequisites = {"green-module-4", "effectivity-module-5", "pollution-clean-module-5"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-e"
  },
  {
    type = "technology",
    name = "green-module-6",
    icon = "__bobmodules__/graphics/icons/yellow-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-6"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-6-combine"
      }
    },
    prerequisites = {"green-module-5", "effectivity-module-6", "pollution-clean-module-6"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-f"
  },
  {
    type = "technology",
    name = "green-module-7",
    icon = "__bobmodules__/graphics/icons/yellow-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-7"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-7-combine"
      }
    },
    prerequisites = {"green-module-6", "effectivity-module-7", "pollution-clean-module-7"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-g"
  },
  {
    type = "technology",
    name = "green-module-8",
    icon = "__bobmodules__/graphics/icons/yellow-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-8"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-8-combine"
      }
    },
    prerequisites = {"green-module-7", "effectivity-module-8", "pollution-clean-module-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-h"
  },
}
)


end

if settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true then

data:extend(
{
  {
    type = "technology",
    name = "raw-productivity-module-1",
    icon = "__bobmodules__/graphics/icons/red-module-1.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-1-combine"
      }
    },
    prerequisites = {"module-merging", "productivity-module", "effectivity-module", "pollution-clean-module-1"},
    unit =
    {
      count = 25,
      ingredients = {
        {"effectivity-processor", 1},
        {"productivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-q-a"
  },
  {
    type = "technology",
    name = "raw-productivity-module-2",
    icon = "__bobmodules__/graphics/icons/red-module-2.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-2-combine"
      }
    },
    prerequisites = {"raw-productivity-module-1", "productivity-module-2", "effectivity-module-2", "pollution-clean-module-2"},
    unit =
    {
      count = 50,
      ingredients = {
        {"effectivity-processor", 1},
        {"productivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-q-b"
  },
  {
    type = "technology",
    name = "raw-productivity-module-3",
    icon = "__bobmodules__/graphics/icons/red-module-3.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-3-combine"
      }
    },
    prerequisites = {"raw-productivity-module-2", "productivity-module-3", "effectivity-module-3", "pollution-clean-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"effectivity-processor", 2},
        {"productivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-q-c"
  },
  {
    type = "technology",
    name = "raw-productivity-module-4",
    icon = "__bobmodules__/graphics/icons/red-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-4-combine"
      }
    },
    prerequisites = {"raw-productivity-module-3", "productivity-module-4", "effectivity-module-4", "pollution-clean-module-4"},
    unit =
    {
      count = 100,
      ingredients = {
        {"effectivity-processor", 2},
        {"productivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-q-d"
  },
  {
    type = "technology",
    name = "raw-productivity-module-5",
    icon = "__bobmodules__/graphics/icons/red-module-5.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-5"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-5-combine"
      }
    },
    prerequisites = {"raw-productivity-module-4", "productivity-module-5", "effectivity-module-5", "pollution-clean-module-5"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-q-e"
  },
  {
    type = "technology",
    name = "raw-productivity-module-6",
    icon = "__bobmodules__/graphics/icons/red-module-6.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-6"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-6-combine"
      }
    },
    prerequisites = {"raw-productivity-module-5", "productivity-module-6", "effectivity-module-6", "pollution-clean-module-6"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-q-f"
  },
  {
    type = "technology",
    name = "raw-productivity-module-7",
    icon = "__bobmodules__/graphics/icons/red-module-7.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-7"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-7-combine"
      }
    },
    prerequisites = {"raw-productivity-module-6", "productivity-module-7", "effectivity-module-7", "pollution-clean-module-7"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-q-g"
  },
  {
    type = "technology",
    name = "raw-productivity-module-8",
    icon = "__bobmodules__/graphics/icons/red-module-8.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-8"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-productivity-module-8-combine"
      }
    },
    prerequisites = {"raw-productivity-module-7", "productivity-module-8", "effectivity-module-8", "pollution-clean-module-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-q-h"
  },
}
)

if settings.startup["bobmods-modules-productivityhasspeed"].value == true then
  table.insert(data.raw.technology["raw-productivity-module-1"].prerequisites,"speed-module")
  table.insert(data.raw.technology["raw-productivity-module-2"].prerequisites,"speed-module-2")
  table.insert(data.raw.technology["raw-productivity-module-3"].prerequisites,"speed-module-3")
  table.insert(data.raw.technology["raw-productivity-module-4"].prerequisites,"speed-module-4")
  table.insert(data.raw.technology["raw-productivity-module-5"].prerequisites,"speed-module-5")
  table.insert(data.raw.technology["raw-productivity-module-6"].prerequisites,"speed-module-6")
  table.insert(data.raw.technology["raw-productivity-module-7"].prerequisites,"speed-module-7")
  table.insert(data.raw.technology["raw-productivity-module-8"].prerequisites,"speed-module-8")
end



end


if settings.startup["bobmods-modules-enablegodmodules"].value == true then

data:extend(
{
  {
    type = "technology",
    name = "god-module-1",
    icon = "__bobmodules__/graphics/icons/god-module.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-1"
      },
    },
    prerequisites = {"module-merging", "speed-module-2", "productivity-module-2", "effectivity-module-2", "pollution-clean-module-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
        {"productivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-s-a"
  },
  {
    type = "technology",
    name = "god-module-2",
    icon = "__bobmodules__/graphics/icons/god-module-1.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-2"
      },
    },
    prerequisites = {"god-module-1", "speed-module-4", "productivity-module-4", "effectivity-module-4", "pollution-clean-module-4"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"speed-processor", 2},
        {"effectivity-processor", 2},
        {"productivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-s-b"
  },
  {
    type = "technology",
    name = "god-module-3",
    icon = "__bobmodules__/graphics/icons/god-module-2.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-3"
      },
    },
    prerequisites = {"god-module-2", "speed-module-6", "productivity-module-6", "effectivity-module-6", "pollution-clean-module-6"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-s-c"
  },
  {
    type = "technology",
    name = "god-module-4",
    icon = "__bobmodules__/graphics/icons/god-module-3.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-4"
      },
    },
    prerequisites = {"god-module-3", "speed-module-8", "productivity-module-8", "effectivity-module-8", "pollution-clean-module-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-s-d"
  },
  {
    type = "technology",
    name = "god-module-5",
    icon = "__bobmodules__/graphics/icons/god-module-4.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-5"
      },
    },
    prerequisites = {"god-module-4"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-s-e"
  },
}
)


end

