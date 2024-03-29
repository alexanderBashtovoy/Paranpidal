function bob_distillery_animation(tint)
return
{
  north =
  {
    layers =
    {
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery.png",
        x = 0,
        width = 128,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
        x = 0,
        width = 128,
        height = 192,
        frame_count = 1,
        tint = tint,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-n.png",
        width = 200,
        height = 140,
        frame_count = 1,
        shift = util.by_pixel(14, -3),
        draw_as_shadow = true,
        scale = 0.5,
      }
    }
  },
  east =
  {
    layers =
    {
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery.png",
        x = 128,
        width = 128,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
        x = 128,
        width = 128,
        height = 192,
        frame_count = 1,
        tint = tint,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-e.png",
        width = 200,
        height = 140,
        frame_count = 1,
        shift = util.by_pixel(14, -3),
        draw_as_shadow = true,
        scale = 0.5,
      }
    }
  },
  south =
  {
    layers =
    {
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery.png",
        x = 256,
        width = 128,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
        x = 256,
        width = 128,
        height = 192,
        frame_count = 1,
        tint = tint,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-s.png",
        width = 200,
        height = 140,
        frame_count = 1,
        shift = util.by_pixel(14, -3),
        draw_as_shadow = true,
        scale = 0.5,
      }
    }
  },
  west =
  {
    layers =
    {
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery.png",
        x = 384,
        width = 128,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
        x = 384,
        width = 128,
        height = 192,
        frame_count = 1,
        tint = tint,
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-w.png",
        width = 200,
        height = 140,
        frame_count = 1,
        shift = util.by_pixel(14, -3),
        draw_as_shadow = true,
        scale = 0.5,
      }
    }
  }
}
end

function bob_distillery_working_visualisations(speed)
  return
  {
    {
      north_position = {0, 0},
      west_position = {0, 0},
      south_position = {0, 0},
      east_position = {0, 0},
      north_animation =
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-n.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5
      },
      east_animation =
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-e.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5
      },
      south_animation =
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-s.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5
      },
      west_animation =
      {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-w.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5
      }
    }
  }
end



if settings.startup["bobmods-plates-purewater"].value == true then

data:extend(
{
  {
    type = "item",
    name = "bob-distillery",
    icon = "__bobplates__/graphics/icons/distillery.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "e[distillery]",
    place_result = "bob-distillery",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "bob-distillery",
    energy_required = 3,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 3},
      {"copper-plate", 3},
      {"pipe", 2},
    },
    result = "bob-distillery"
  },

  {
    type = "assembling-machine",
    name = "bob-distillery",
    icon = "__bobplates__/graphics/icons/distillery.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "bob-distillery"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    crafting_categories = {"distillery"},
    crafting_speed = 1,
    energy_usage = "180kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.2
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    animation = bob_distillery_animation({r = 0.7, g = 0.7, b = 0.1}),
    working_visualisations = bob_distillery_working_visualisations(1),
    allowed_effects = {"consumption", "speed", "pollution"},
    module_specification =
    {
      module_slots = 1,
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      },
      max_sounds_per_type = 3
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    fast_replaceable_group = "distillery",
  },
}
)

end

