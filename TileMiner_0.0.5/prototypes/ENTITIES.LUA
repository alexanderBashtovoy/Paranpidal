fluidtilepatch =
    {
      north =
      {
        priority = "extra-high",
        filename = "__TileMiner__/graphics/bucket-wh/fluid-P-N.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__TileMiner__/graphics/bucket-wh/HR-fluid-P-N.png",
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
        filename = "__TileMiner__/graphics/bucket-wh/fluid-P-E.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__TileMiner__/graphics/bucket-wh/HR-fluid-P-E.png",
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
        filename = "__TileMiner__/graphics/bucket-wh/fluid-P-S.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__TileMiner__/graphics/bucket-wh/HR-fluid-P-S.png",
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
        filename = "__TileMiner__/graphics/bucket-wh/fluid-P-W.png",
        line_length = 1,
        width = 352,
        height = 352,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          priority = "extra-high",
          filename = "__TileMiner__/graphics/bucket-wh/HR-fluid-P-W.png",
          line_length = 1,
          width = 702,
          height = 702,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5
        }
      }
    }


height = 340,data:extend(
{
  {
    type = "mining-drill",
    name = "tile-miner",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkI.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = .1, result = "tile-miner"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -.5, -.5}, {.5, .5}},
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
            scale = 0.1 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidtilepatch,
    mining_speed = 2,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.063,
      usage_priority = "secondary-input"
    },
    energy_usage = "120kW",
    resource_searching_radius = .5,
	vector_to_place_result = {0, -1},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 1,
      height = 1
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
	
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
        { position = {-1, 0}},
		{ position = {1, 0} },
		{ position = {0, 1} }
      }
    },
  },
  {
    type = "mining-drill",
    name = "tile-miner-e3",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkI.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = .1, result = "tile-miner-e3"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -.5, -.5}, {.5, .5}},
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
            scale = 0.1
        }
      }
    },
    input_fluid_patch_sprites = fluidtilepatch,
    mining_speed = 3,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.063,
      usage_priority = "secondary-input"
    },
    energy_usage = "180kW",
    resource_searching_radius = 1.5,
    vector_to_place_result = {0, -1},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 1,
      height = 1
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
	
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
        { position = {-1, 0}},
		{ position = {1, 0} },
		{ position = {0, 1} }
      }
    },
  },
  {
    type = "mining-drill",
    name = "tile-miner-b",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkI.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = .1, result = "tile-miner-b"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -.5, -.5}, {.5, .5}},
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
            scale = 0.1 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidtilepatch,
    mining_speed = 1,
    energy_source =
    {
      type = "burner",
      -- will produce this much * energy pollution units per tick
      emissions = 0.063,
      usage_priority = "secondary-input",
  fuel_inventory_size = 2
    },
    energy_usage = "120kW",
    resource_searching_radius = .5,
    vector_to_place_result = {0, -1},
    module_specification ={module_slots = 3},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 1,
      height = 1
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
	
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
        { position = {-1, 0}},
		{ position = {1, 0} },
		{ position = {0, 1} }
      }
    }
  },
  {
    type = "mining-drill",
    name = "tile-miner-l",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkI.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = .1, result = "tile-miner-l"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -.5, -.5}, {.5, .5}},
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
            scale = 0.1 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidtilepatch,
    mining_speed = 1,
    energy_source =
    {
      type = "burner",
      -- will produce this much * energy pollution units per tick
      emissions = 0.063,
      usage_priority = "secondary-input",
  fuel_inventory_size = 2
    },
    energy_usage = "120kW",
    resource_searching_radius = .5,
    vector_to_place_result = {0, -10},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 1,
      height = 1
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
	
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
        { position = {-1, 0}},
		{ position = {1, 0} },
		{ position = {0, 1} }
      }
    },
  },
  {
    type = "mining-drill",
    name = "tile-miner-3",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkI.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = .1, result = "tile-miner-3"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -.5, -.5}, {.5, .5}},
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
            scale = 0.1 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidtilepatch,
    mining_speed = 3,
    energy_source =
    {
      type = "burner",
      -- will produce this much * energy pollution units per tick
      emissions = 0.063,
      usage_priority = "secondary-input",
  fuel_inventory_size = 3
    },
    energy_usage = "360kW",
    resource_searching_radius = 1,
    vector_to_place_result = {0, -1},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 1,
      height = 1
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
	
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
        { position = {-1, 0}},
		{ position = {1, 0} },
		{ position = {0, 1} }
      }
    },
  },
  {
    type = "mining-drill",
    name = "tile-miner-op",
    icon = "__bucketwheels-withvisual__/graphics/icons/bucketW-mkI.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = .1, result = "tile-miner"},
    max_health = 1200,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -.5, -.5}, {.5, .5}},
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
            scale = 0.1 -- sadly the max texture size allowed is 4096px, so only an 1.25x increase in texture size
        }
      }
    },
    input_fluid_patch_sprites = fluidtilepatch,
    mining_speed = 2048,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.063,
      usage_priority = "secondary-input"
    },
    energy_usage = "256MW",
    resource_searching_radius = .5,
    vector_to_place_result = {0, -1},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 1,
      height = 1
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "Bucketwheeel-Excavator",
	
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
        { position = {-1, 0}},
		{ position = {1, 0} },
		{ position = {0, 1} }
      }
    },
  }})