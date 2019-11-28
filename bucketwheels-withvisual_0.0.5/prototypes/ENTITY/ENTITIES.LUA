fluidpatch =
    {
      north =
      {
        priority = "extra-high",
        filename = "__bucketwheels-withvisual__/graphics/bucket-wh/fluid-P-N.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__bucketwheels-withvisual__/graphics/bucket-wh/HR-fluid-P-N.png",
          line_length = 1,
          width = 702,
          height = 702,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__bucketwheels-withvisual__/graphics/bucket-wh/fluid-P-E.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__bucketwheels-withvisual__/graphics/bucket-wh/HR-fluid-P-E.png",
          line_length = 1,
          width = 702,
          height = 702,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__bucketwheels-withvisual__/graphics/bucket-wh/fluid-P-S.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__bucketwheels-withvisual__/graphics/bucket-wh/HR-fluid-P-S.png",
          line_length = 1,
          width = 702,
          height = 702,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__bucketwheels-withvisual__/graphics/bucket-wh/fluid-P-W.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__bucketwheels-withvisual__/graphics/bucket-wh/HR-fluid-P-W.png",
          line_length = 1,
          width = 702,
          height = 702,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5
        }
      }
    }

data:extend(
{
  {
    type = "mining-drill",
    name = "bucketw",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkI.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bucket-wheel-excavator"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{ -5.5, -5.5}, {5.5, 5.5}},
    input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-6, 0} },
        { position = {6, 0} },
        { position = {0, 6} },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 352,
        height = 340,
        line_length = 5,
        filename = "__bucketwheels-withvisual__/graphics/bucket-wh/BigWheelMinerSheet2.png",
        frame_count = 30,
        animation_speed = 0.125,
        shift = util.by_pixel(6, 0),
        run_mode = "forward-then-backward",
        hr_version = {
            priority = "extra-high",
            width = 440,
            height = 440,
            line_length = 5,
            filename = "__bucketwheels-withvisual__/graphics/bucket-wh/HR-BigWheelMinerSheet2.png",
            frame_count = 30,
            animation_speed = 0.125,
            run_mode = "forward-then-backward",
            scale = 0.8 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidpatch,
    mining_speed = 15,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.063,
      usage_priority = "secondary-input"
    },
    energy_usage = "5555kW",--Bagger 258
    resource_searching_radius = 6.5,
    vector_to_place_result = {0, -6},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
    --[[circuit_wire_connection_points =
    {
      get_circuit_connector_wire_shifting_for_connector({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_wire_shifting_for_connector({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_wire_shifting_for_connector({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_wire_shifting_for_connector({-3.5, -3},     {-3.5, -3},     6)
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_sprites({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_sprites({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_sprites({-3.5, -3.0},   {-3.5, -3.0},   6)
  },]]
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 14,
  },
  {
    type = "mining-drill",
    name = "bucketw-mk2",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkII.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bucket-wheel-excavator-mk2"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{ -5.5, -5.5}, {5.5, 5.5}},
    input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-6, 0} },
        { position = {6, 0} },
        { position = {0, 6} },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 352,
        height = 340,
        line_length = 5,
        filename = "__bucketwheels-withvisual__/graphics/bucket-wh/BigWheelMinerSheet2.png",
        frame_count = 30,
        animation_speed = 0.125,
        shift = util.by_pixel(6, 0),
        run_mode = "forward-then-backward",
        hr_version = {
            priority = "extra-high",
            width = 440,
            height = 440,
            line_length = 5,
            filename = "__bucketwheels-withvisual__/graphics/bucket-wh/HR-BigWheelMinerSheet2.png",
            frame_count = 30,
            animation_speed = 0.125,
            run_mode = "forward-then-backward",
            scale = 0.8 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidpatch,
    mining_speed = 30,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.053,
      usage_priority = "secondary-input"
    },
    energy_usage = "9500kW", --Bagger 262
    resource_searching_radius = 7.5,
    vector_to_place_result = {0, -6},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
    --[[circuit_wire_connection_points =
    {
      get_circuit_connector_wire_shifting_for_connector({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_wire_shifting_for_connector({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_wire_shifting_for_connector({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_wire_shifting_for_connector({-3.5, -3},     {-3.5, -3},     6)
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_sprites({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_sprites({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_sprites({-3.5, -3.0},   {-3.5, -3.0},   6)
  },]]
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 14,
  },
  {
    type = "mining-drill",
    name = "bucketw-mk3",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkIII.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bucket-wheel-excavator-mk3"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{ -5.5, -5.5}, {5.5, 5.5}},
    input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-6, 0} },
        { position = {6, 0} },
        { position = {0, 6} },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 352,
        height = 340,
        line_length = 5,
        filename = "__bucketwheels-withvisual__/graphics/bucket-wh/BigWheelMinerSheet2.png",
        frame_count = 30,
        animation_speed = 0.125,
        shift = util.by_pixel(6, 0),
        run_mode = "forward-then-backward",
        hr_version = {
            priority = "extra-high",
            width = 440,
            height = 440,
            line_length = 5,
            filename = "__bucketwheels-withvisual__/graphics/bucket-wh/HR-BigWheelMinerSheet2.png",
            frame_count = 30,
            animation_speed = 0.125,
            run_mode = "forward-then-backward",
            scale = 0.8 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidpatch,
    mining_speed = 45,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.043,
      usage_priority = "secondary-input"
    },
    energy_usage = "16560kW", --Bagger 288
    resource_searching_radius = 8.5,
    vector_to_place_result = {0, -6},
    module_specification =
    {
      module_slots = 5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
    --[[circuit_wire_connection_points =
    {
      get_circuit_connector_wire_shifting_for_connector({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_wire_shifting_for_connector({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_wire_shifting_for_connector({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_wire_shifting_for_connector({-3.5, -3},     {-3.5, -3},     6)
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_sprites({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_sprites({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_sprites({-3.5, -3.0},   {-3.5, -3.0},   6)
  },]]
  circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
  circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 14,
  }
}
)
