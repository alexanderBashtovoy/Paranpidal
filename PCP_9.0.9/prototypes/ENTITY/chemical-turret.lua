require "util"
local math3d = require "math3d"
local function make_color(r_,g_,b_,a_)
  return { r = r_ * a_, g = g_ * a_, b = b_ * a_, a = a_ }
end

local chemutil = {}

function chemutil.foreach(table_, fun_)
  for k, tab in pairs(table_) do fun_(tab) end
  return table_
end

function chemutil.chemical_turret_extension_animation(shft, opts)
  local m_line_length = 5
  local m_frame_count = 15
  local ret_layers = {
    -- diffuse
    {
      filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-extension.png",
      priority = "medium",
      frame_count = opts and opts.frame_count or m_frame_count,
      line_length = opts and opts.line_length or m_line_length,
      run_mode = opts and opts.run_mode or "forward",
      width = 78,
      height = 65,
      direction_count = 1,
      axially_symmetrical = false,
      shift = {0, -0.796875},
    },
    -- mask
    {
      filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-extension-mask.png",
      flags = { "mask" },
      frame_count = opts and opts.frame_count or m_frame_count,
      line_length = opts and opts.line_length or m_line_length,
      run_mode = opts and opts.run_mode or "forward",
      width = 74,
      height = 61,
      direction_count = 1,
      axially_symmetrical = false,
      shift = {0, -0.796875},
      apply_runtime_tint = true
    },
    -- shadow
    {
      filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-extension-shadow.png",
      frame_count = opts and opts.frame_count or m_frame_count,
      line_length = opts and opts.line_length or m_line_length,
      run_mode = opts and opts.run_mode or "forward",
      width = 91,
      height = 56,
      direction_count = 1,
      axially_symmetrical = false,
      shift = {1.04688, 0},
      draw_as_shadow = true, 
    }
  }
  
  local yoffsets = { north = 0, east = 3, south = 2, west = 1 }
  local m_lines = m_frame_count / m_line_length
  
  return { layers = chemutil.foreach(ret_layers, function(tab)
    if tab.shift then tab.shift = { tab.shift[1] + shft[1], tab.shift[2] + shft[2] } end
    if tab.height then tab.y = tab.height * m_lines * yoffsets[opts.direction] end
  end) }
end

chemutil.turret_gun_shift = {
  north = {0, -0.3125},
  east = {0.625, 0.3125},
  south = {0,  0.625},
  west = { -0.46875, 0.3125},
}

chemutil.turret_model_info = {
  tilt_pivot = { -1.68551, 0, 2.35439 },
  gun_tip_lowered = { 4.27735, 0, 3.97644 },
  gun_tip_raised = { 2.2515, 0, 7.10942 },
  units_per_tile = 4,
}

chemutil.gun_center_base = math3d.vector2.sub({0,  -0.725}, chemutil.turret_gun_shift.south)

function chemutil.chemical_turret_preparing_muzzle_animation(opts)
  opts.frame_count = opts.frame_count or 15
  opts.run_mode = opts.run_mode or "forward"
  assert(opts.orientation_count)
  
  local model = chemutil.turret_model_info
  local angle_raised = -math3d.vector3.angle({1, 0, 0}, math3d.vector3.sub(model.gun_tip_raised, model.tilt_pivot))
  local angle_lowered = -math3d.vector3.angle({1, 0, 0}, math3d.vector3.sub(model.gun_tip_lowered, model.tilt_pivot))
  local delta_angle = angle_raised - angle_lowered
  
  local generated_orientations = {}
  for r = 0, opts.orientation_count-1 do
    local phi = (r / opts.orientation_count - 0.25) * math.pi * 2
    local generated_frames = {}
    for i = 0, opts.frame_count-1 do
      local k = opts.run_mode == "backward" and (opts.frame_count - i - 1) or i
      local progress = opts.progress or (k / (opts.frame_count - 1))
      
      local matrix = math3d.matrix4x4
      local mat = matrix.compose({
        matrix.translation_vec3(math3d.vector3.mul(model.tilt_pivot, -1)),
        matrix.rotation_y(progress * delta_angle),
        matrix.translation_vec3(model.tilt_pivot),
        matrix.rotation_z(phi),
        matrix.scale(1 / model.units_per_tile, 1 / model.units_per_tile, -1 / model.units_per_tile)
      })
      
      local vec = math3d.matrix4x4.mul_vec3(mat, model.gun_tip_lowered)
      table.insert(generated_frames, math3d.project_vec3(vec))
    end
    local direction_data = { frames = generated_frames }
    if (opts.layers and opts.layers[r]) then
      direction_data.render_layer = opts.layers[r]
    end
    table.insert(generated_orientations, direction_data)
  end
  
  return 
  {
    rotations = generated_orientations,
    direction_shift = chemutil.turret_gun_shift,
  }
end

function chemutil.chemical_turret_extension(opts)
  local set_direction = function (opts, dir)
    opts.direction = dir
    return opts
  end

  return {
    north = chemutil.chemical_turret_extension_animation(chemutil.turret_gun_shift.north, set_direction(opts, "north")),
    east = chemutil.chemical_turret_extension_animation(chemutil.turret_gun_shift.east, set_direction(opts, "east")),
    south = chemutil.chemical_turret_extension_animation(chemutil.turret_gun_shift.south, set_direction(opts, "south")),
    west = chemutil.chemical_turret_extension_animation(chemutil.turret_gun_shift.west, set_direction(opts, "west")),
  } 
end

function chemutil.chemical_turret_prepared_animation(shft, opts)
  local diffuse_layer = 
  {
    filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun.png",
    priority = "medium",
    counterclockwise = true,
    line_length = 8,
    width = 78,
    height = 64,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = {0, -0.75},
  }
  local glow_layer = 
  {
    filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-active.png",
    counterclockwise = true,
    line_length = 8,
    width = 78,
    height = 63,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = {0, -0.765625},
    tint = make_color(1, 1, 1, 0.5),
    blend_mode = "additive",
  }
  local mask_layer = 
  {
    filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-mask.png",
    flags = { "mask" },
    counterclockwise = true,
    line_length = 8,
    width = 72,
    height = 57,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = {0, -0.859375},
    apply_runtime_tint = true,
  }
  local shadow_layer = 
  {
    filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-shadow.png",
    counterclockwise = true,
    line_length = 8,
    width = 91,
    height = 57,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = {0.984375, 0.015625},
    draw_as_shadow = true,
  }
  
  local ret_layers = opts and opts.attacking and { diffuse_layer, glow_layer, mask_layer, shadow_layer }
                                             or  { diffuse_layer, mask_layer, shadow_layer }
  
  return { layers = chemutil.foreach(ret_layers, function(tab)
    if tab.shift then tab.shift = { tab.shift[1] + shft[1], tab.shift[2] + shft[2] } end
  end) }
end

function chemutil.chemical_prepared_animation(opts)
  return {
    north = chemutil.chemical_turret_prepared_animation(chemutil.turret_gun_shift.north, opts),
    east = chemutil.chemical_turret_prepared_animation(chemutil.turret_gun_shift.east, opts),
    south = chemutil.chemical_turret_prepared_animation(chemutil.turret_gun_shift.south, opts),
    west = chemutil.chemical_turret_prepared_animation(chemutil.turret_gun_shift.west, opts),
  }
end

function chemutil.create_fire_pictures(opts)
  local fire_blend_mode = opts.blend_mode or "additive"
  local fire_animation_speed = opts.animation_speed or 0.5
  local fire_scale =  opts.scale or 1
  local fire_tint = {r=1,g=1,b=1,a=1}
  local fire_flags = { "compressed" }
  local retval = {
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0390625, -0.90625 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-12.png",
      line_length = 8,
      width = 63,
      height = 116,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.015625, -0.914065 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-11.png",
      line_length = 8,
      width = 61,
      height = 122,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0078125, -0.90625 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-10.png",
      line_length = 8,
      width = 65,
      height = 108,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0625, -0.64844 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-09.png",
      line_length = 8,
      width = 64,
      height = 101,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.03125, -0.695315 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-08.png",
      line_length = 8,
      width = 50,
      height = 98,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0546875, -0.77344 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-07.png",
      line_length = 8,
      width = 54,
      height = 84,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.015625, -0.640625 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-06.png",
      line_length = 8,
      width = 65,
      height = 92,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0, -0.83594 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-05.png",
      line_length = 8,
      width = 59,
      height = 103,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.03125, -0.882815 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-04.png",
      line_length = 8,
      width = 67,
      height = 130,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.015625, -1.109375 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-03.png",
      line_length = 8,
      width = 74,
      height = 117,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.046875, -0.984375 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-02.png",
      line_length = 8,
      width = 74,
      height = 114,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { 0.0078125, -0.96875 }
    },
    { 
      filename = "__base__/graphics/entity/fire-flame/fire-flame-01.png",
      line_length = 8,
      width = 66,
      height = 119,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0703125, -1.039065 }
    },
  }
  return chemutil.foreach(retval, function(tab)
    if tab.shift and tab.scale then tab.shift = { tab.shift[1] * tab.scale, tab.shift[2] * tab.scale } end
  end)
end

local function set_shift(shift, tab)
  tab.shift = shift
  if tab.hr_version then
    tab.hr_version.shift = shift
  end
  return tab
end

function chemutil.chemical_turret_pipepictures()
  local pipe_sprites = pipepictures()
  
  return {
    north = set_shift({0, 1}, util.table.deepcopy(pipe_sprites.straight_vertical)),
    south = set_shift({0, -1}, util.table.deepcopy(pipe_sprites.straight_vertical)),
    east = set_shift({-1, 0}, util.table.deepcopy(pipe_sprites.straight_horizontal)),
    west = set_shift({1, 0}, util.table.deepcopy(pipe_sprites.straight_horizontal))
  }
end

if settings.startup["pcp-enable-experimental"].value then
 data:extend({
 {  type = "fluid-turret",
    name = "chemical-turret",
    icon = "__base__/graphics/icons/flamethrower-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "chemical-turret"},
    max_health = 1400,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -1.2 }, {0.7, 1.2}},
    selection_box = {{-1, -1.5 }, {1, 1.5}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    attacking_speed = 1,
    ending_attack_speed = 0.2,
    dying_explosion = "medium-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    attacking_animation_fade_out = 10,
    turret_base_has_direction = true,
    resistances = {{type = "chemical",
					percent = 100,},},
    fluid_box = {secondary_draw_order = 0,
				 render_layer = "lower-object",
				 pipe_picture = chemutil.chemical_turret_pipepictures(),
				 pipe_covers = pipecoverspictures(),
				 base_area = 1,
				 pipe_connections = {{ position = {-1.5, 1.0}},
									 { position = {1.5, 1.0}}}},
    fluid_buffer_size = 100,
    fluid_buffer_input_flow = 250 / 60 / 5, -- 5s to fill the buffer
    activation_buffer_ratio = 0.25,
    folded_animation = chemutil.chemical_turret_extension({frame_count = 1, line_length = 1}),    
    preparing_animation = chemutil.chemical_turret_extension({}),
    prepared_animation = chemutil.chemical_prepared_animation(),   
    attacking_animation = chemutil.chemical_prepared_animation({attacking = true}), 
    ending_attack_animation = chemutil.chemical_prepared_animation({attacking = true}), 
    folding_animation = chemutil.chemical_turret_extension({ run_mode = "backward" }),     
    not_enough_fuel_indicator_picture = indicator_pictures,    
    enough_fuel_indicator_picture = chemutil.foreach(util.table.deepcopy(indicator_pictures), function (tab) tab.x = tab.width end),
    indicator_light = { intensity = 0.8, size = 0.9 },
    gun_animation_render_layer = "object",
    gun_animation_secondary_draw_order = 1,
    base_picture_render_layer = "lower-object",
    base_picture_secondary_draw_order = 1,
    base_picture={north={layers={
          -- diffuse
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-north.png",
            line_length = 1,
            width = 69,
            height = 86,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {-0.015625, 0.34375},
          },
          -- mask
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-north-mask.png",
            flags = { "mask" },
            line_length = 1,
            width = 37,
            height = 37,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {-0.015625, 1.04688},
            apply_runtime_tint = true,
          },
          -- shadow
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-north-shadow.png",
            draw_as_shadow = true, 
            line_length = 1,
            width = 71,
            height = 78,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0.140625, 0.46875},
          },
        }
      },
      east = {
        layers = {
          -- diffuse
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-east.png",
            line_length = 1,
            width = 95,
            height = 60,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {-0.140625, 0.125},
          },
          -- mask
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-east-mask.png",
            flags = { "mask" },
            apply_runtime_tint = true,
            line_length = 1,
            width = 33,
            height = 42,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {-1.01563, 0.03125},
          },
          -- shadow
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-east-shadow.png",
            draw_as_shadow = true, 
            line_length = 1,
            width = 100,
            height = 44,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0.03125, 0.28125},
          },
        }
      },
      south = {
        layers = {
          -- diffuse
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-south.png",
            line_length = 1,
            width = 70,
            height = 90,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0, -0.15625},
          },
          -- mask
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-south-mask.png",
            flags = { "mask" },
            apply_runtime_tint = true,
            line_length = 1,
            width = 37,
            height = 37,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0.015625, -0.953125},
          },
          -- shadow
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-south-shadow.png",
            draw_as_shadow = true,
            line_length = 1,
            width = 67,
            height = 70,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0.140625, -0.0625},
          },
        }

      },
      west = {
        layers = {
          -- diffuse
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-west.png",
            line_length = 1,
            width = 93,
            height = 59,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0.140625, 0.203125},
          },
          -- mask
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-west-mask.png",
            flags = { "mask" },
            apply_runtime_tint = true,
            line_length = 1,
            width = 33,
            height = 40,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {1.01563, 0.09375},
          },
          -- shadow
          {
            filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-west-shadow.png",
            draw_as_shadow = true, 
            line_length = 1,
            width = 103,
            height = 45,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0.484375, 0.296875},
          },
        }
      },
    },
    
    muzzle_animation = 
    { 
      filename = "__base__/graphics/entity/flamethrower-turret/flamethrower-turret-muzzle-fire.png",
      line_length = 8,
      width = 17,
      height = 41,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = "additive",
      scale = 0.5,
      shift = {0.015625 * 0.5, -0.546875 * 0.5 + 0.05},
    },
    muzzle_light = {intensity = 0.7, size = 3},
    
    folded_muzzle_animation_shift          = chemutil.chemical_turret_preparing_muzzle_animation{ frame_count = 1,  orientation_count = 4, progress = 0, layers = {[0] = "object"} },
    preparing_muzzle_animation_shift       = chemutil.chemical_turret_preparing_muzzle_animation{ frame_count = 15, orientation_count = 4, layers = {[0] = "object"} },
    prepared_muzzle_animation_shift        = chemutil.chemical_turret_preparing_muzzle_animation{ frame_count = 1, orientation_count =  64, progress = 1},
    --starting_attack_muzzle_animation_shift = chemutil.chemical_turret_preparing_muzzle_animation{ frame_count = 1,  orientation_count = 64, progress = 1},
    attacking_muzzle_animation_shift       = chemutil.chemical_turret_preparing_muzzle_animation{ frame_count = 1,  orientation_count = 64, progress = 1},
    ending_attack_muzzle_animation_shift   = chemutil.chemical_turret_preparing_muzzle_animation{ frame_count = 1,  orientation_count = 64, progress = 1},
    folding_muzzle_animation_shift         = chemutil.chemical_turret_preparing_muzzle_animation{ frame_count = 15, orientation_count = 4, run_mode = "backward", layers = {[0] = "object"}},
    
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    prepare_range = 35,
    shoot_in_prepare_state = false,
    attack_parameters =
    {
      type = "stream",
      ammo_category = "flamethrower",
      cooldown = 4,
      range = 30,
      min_range = 6,
      
      turn_range = 1.0/3.0,
      fire_penalty = 15,
      
      fluids = { 
        {type = "gas-carbon-monoxide"}, 
        {type = "gas-chlorine", damage_modifier = 1.05}, 
        {type = "gas-phosgene", damage_modifier = 1.1} 
      },
      fluid_consumption = 0.2,
      
      gun_center_shift = {
        north = math3d.vector2.add(chemutil.gun_center_base, chemutil.turret_gun_shift.north), 
        east = math3d.vector2.add(chemutil.gun_center_base, chemutil.turret_gun_shift.east),
        south = math3d.vector2.add(chemutil.gun_center_base, chemutil.turret_gun_shift.south), 
        west = math3d.vector2.add(chemutil.gun_center_base, chemutil.turret_gun_shift.west) 
      },
      gun_barrel_length = 0.4,
      
      ammo_type =
      {
        category = "flamethrower",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "stream",
            stream = "chemical-fire-stream",
            duration = 160,
            source_offset = {0.15, -0.5},
          }
        }
      },
      
      cyclic_sound =
      {
        begin_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 0.7
          }
        },
        middle_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 0.7
          }
        },
        end_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 0.7
          }
        }
      }
    }, -- {0,  0.625}
    call_for_help_radius = 40
  },})
end