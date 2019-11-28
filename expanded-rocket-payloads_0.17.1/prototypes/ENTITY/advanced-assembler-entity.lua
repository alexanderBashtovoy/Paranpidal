data:extend({
    {
        type = "recipe-category",
        name = "satellite-crafting"
    },
    {
        type = "assembling-machine",
        name = "advanced-assembler",
        icon = "__expanded-rocket-payloads__/graphic/advanced-assembler-32.png",
        icon_size = 32,
        flags = {"player-creation","placeable-neutral","not-rotatable"},
        minable = {hardness = 1.0, mining_time = 2, result = "advanced-assembler"},
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        placeable_by = {item="advanced-assembler", count = 1},
        collision_box = {{-3.4, -1.4}, {3.4, 1.4}},
        selection_box = {{-3.4, -1.4}, {3.4, 1.4}},
        drawing_box = {{-3.4, -1.4}, {3.4, 1.4}},
        animation =
        {
          layers =
          {
            {
            filename = "__expanded-rocket-payloads__/graphic/advanced-assembler 210-140.png",
            priority = "extra-high",
            width = 210,
            height = 140,
            shift = {0.0, -0.6},
            frame_count = 1,
            },
          },
        },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/assembling-machine-t2-1.ogg",
              volume = 0.8
            },
            {
              filename = "__base__/sound/assembling-machine-t2-2.ogg",
              volume = 0.8
            }
          },
          idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
          apparent_volume = 1.5,
         },
        module_specification =
        {
          module_slots = 6,
          module_info_icon_shift = {0, .75},
        },
        crafting_categories =  {"crafting", "advanced-crafting", "crafting-with-fluid", "satellite-crafting"},
        allowed_effects = {"consumption", "speed", "pollution", "productivity"},
        ingredient_count = 10,
        crafting_speed = 2,

        order="d-a-a",
        energy_usage = "1MW",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions = 0.08 / 5.5,
        },
        fluid_boxes =
        {
         {
           production_type = "input",
           pipe_picture = assembler3pipepictures(),
           pipe_covers = pipecoverspictures(),
           base_area = 10,
            base_level = -1,
           pipe_connections = {{ type="input", position = {0, -2} }},
           secondary_draw_orders = { north = -1 }
         },
         {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
           base_level = -1,
          pipe_connections = {{ type="input", position = {0, 2} }},
          secondary_draw_orders = { south = -1 }
         },
         {
            production_type = "output",
           pipe_picture = assembler3pipepictures(),
            pipe_covers = pipecoverspictures(),
           base_area = 10,
            base_level = 1,
           pipe_connections = {{ type="output", position = {0, 2} }},
            secondary_draw_orders = { north = -1 }
         },
        {
           production_type = "output",
          pipe_picture = assembler3pipepictures(),
           pipe_covers = pipecoverspictures(),
          base_area = 10,
           base_level = 1,
          pipe_connections = {{ type="output", position = {0, -2} }},
           secondary_draw_orders = { south = -1 }
        },
        off_when_no_fluid_recipe = true
        },
    },
})
