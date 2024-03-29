data:extend(
{
  {
    type = "item",
    name = "bio-generator-temperate-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-temperate-generator.png",
      },
    },
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bio-processing-buildings-a",
    order = "e",
    place_result = "bio-generator-temperate-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-generator-temperate-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-temperate-generator.png",
      },
    },
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-generator-temperate-1"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -2}, {1.5, 1.5}},
    fast_replaceable_group= "bio-generator",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"angels-tree-temperate", "angels-tree"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = -0.02 / 2
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    animation={
      layers={
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-shadow.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-base.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-pipes.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-1.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-top.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
      }
    },
    working_visualisations = {
      {
        animation =
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-top-on.png",
          priority = "high",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        light = {intensity = 4, size = 4, color = {r = 0.5, g = 1.0, b = 0.5}}
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },
  {
    type = "item",
    name = "bio-generator-swamp-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-swamp-generator.png",
      },
    },
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bio-processing-buildings-a",
    order = "e",
    place_result = "bio-generator-swamp-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-generator-swamp-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-swamp-generator.png",
      },
    },
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-generator-swamp-1"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -2}, {1.5, 1.5}},
    fast_replaceable_group= "bio-generator",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"angels-tree-swamp", "angels-tree"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = -0.02 / 2
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    animation={
      layers={
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-shadow.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-base.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-pipes.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-2.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-top.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
      }
    },
    working_visualisations = {
      {
        animation =
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-top-on.png",
          priority = "high",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        light = {intensity = 4, size = 4, color = {r = 0.5, g = 1.0, b = 0.5}}
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },
  {
    type = "item",
    name = "bio-generator-desert-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-desert-generator.png",
      },
    },
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bio-processing-buildings-a",
    order = "e",
    place_result = "bio-generator-desert-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-generator-desert-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-desert-generator.png",
      },
    },
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-generator-desert-1"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -2}, {1.5, 1.5}},
    fast_replaceable_group= "bio-generator",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"angels-tree-desert", "angels-tree"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = -0.02 / 2
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    animation={
      layers={
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-shadow.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-base.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-pipes.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-3.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-top.png",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
      }
    },
    working_visualisations = {
      {
        animation =
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-generator-top-on.png",
          priority = "high",
          width = 160,
          height = 160,
          line_length = 1,
          frame_count = 1,
          shift = {0, 0},
        },
        light = {intensity = 4, size = 4, color = {r = 0.5, g = 1.0, b = 0.5}}
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },
  --ARBORETUM
  {
    type = "item",
    name = "bio-arboretum-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-arboretum.png",
      },
    },
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bio-processing-buildings-a",
    order = "e",
    place_result = "bio-arboretum-1",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-arboretum-1",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/bio-arboretum.png",
      },
    },
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-arboretum-1"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fast_replaceable_group= "bio-arboretum",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"angels-arboretum"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = -0.02 / 2
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    animation = {
      layers={
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-arboretum-shadow.png",
          width = 224,
          height = 256,
          line_length = 1,
          frame_count = 1,
          shift = {0, -0.25},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-arboretum-base.png",
          width = 224,
          height = 256,
          line_length = 1,
          frame_count = 1,
          shift = {0, -0.25},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-arboretum-pipes.png",
          width = 224,
          height = 256,
          line_length = 1,
          frame_count = 1,
          shift = {0, -0.25},
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-arboretum-off.png",
          width = 224,
          height = 256,
          line_length = 1,
          frame_count = 1,
          shift = {0, -0.25},
        },
      }
    },
    working_visualisations = {
      {
        apply_recipe_tint = "primary",
        animation =
        {
          filename = "__angelsbioprocessing__/graphics/entity/trees/bio-arboretum-on.png",
          blend_mode = "additive",
          width = 224,
          height = 256,
          line_length = 1,
          frame_count = 1,
          shift = {0, -0.25},
        },
        -- {
        -- effect = "uranium-glow", -- changes alpha based on energy source light intensity
        -- light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}
        -- }
        light = {intensity = 1, size = 8, color = {r = 0.5, g = 1.0, b = 0.5}}
      },
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },
}
)
