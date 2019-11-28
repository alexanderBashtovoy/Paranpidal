data:extend({
    {
        type = "assembling-machine",
        name = "space-telescope-uplink-station",
        icon = "__expanded-rocket-payloads__/graphic/ground-telescope-32.png",
        icon_size = 32,
        flags = {"player-creation","placeable-neutral","not-rotatable"},
        minable = {hardness = 1.0, mining_time = 5, result = "space-telescope-uplink-station"},
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        placeable_by = {item="space-telescope-uplink-station", count = 1},
        collision_box = {{-1.2, -3.0}, {1.2, 1.0}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        drawing_box = {{-1.5, -1.5}, {1.5, 1.5}},
        animation =
        {
          layers =
          {
            {
            filename = "__expanded-rocket-payloads__/graphic/space-telescope-uplink-station-200.png",
            priority = "extra-high",
            width = 200,
            height = 200,
            shift = {0.5,-1},
            frame_count = 1,
            },
          },
        },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        module_specification =
        {
          module_slots = 0,
          module_info_icon_shift = {0, 4.3},
        },
        crafting_categories =  {"space-telescope"},
        ingredient_count = 1,
        crafting_speed = 1,

        order="d-a-a",
        energy_usage = "5MW",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
        },
    },
})
