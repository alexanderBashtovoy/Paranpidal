--[[ Copyright (c) 2018 Optera
 * Part of Re-Stack
 *
 * See LICENSE.md in the project directory for license information.
--]]

data:extend({
  ---- INTERMEDIATE ----
  {
    type = "int-setting",
    name = "ReStack-tiles",
    order = "aa",
    setting_type = "startup",
    default_value = 500,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "bool-setting",
    name = "ReStack-tiles-priority",
    order = "ab",
    setting_type = "startup",
    default_value = false,
  },
  {
    type = "int-setting",
    name = "ReStack-wood",
    order = "ba",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-ores",
    order = "bb",
    setting_type = "startup",
    default_value = 100,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-plates",
    order = "bc",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-modules",
    order = "be",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-uranium",
    order = "bf",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-solid-fuel",
    order = "ca",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-nuclear-fuel",
    order = "cb",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-fuel-category-nuclear",
    order = "cc",
    setting_type = "startup",
    default_value = 5,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-rocket-parts",
    order = "cd",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-science-pack",
    order = "ce",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "bool-setting",
    name = "ReStack-include-launch-products",
    order = "cf",
    setting_type = "startup",
    default_value = false,
  },

  ---- BARREL ----

  {
    type = "int-setting",
    name = "ReStack-barrel-stack",
    order = "da",
    setting_type = "startup",
    default_value = 5, -- Original = 10
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-barrel-fill",
    order = "db",
    setting_type = "startup",
    default_value = 100, -- Original = 50
    minimum_value = 0,
    maximum_value = 10000,
  },

  ---- LOGISTIC ----
  {
    type = "int-setting",
    name = "ReStack-belt",
    order = "ea",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  -- {
    -- type = "bool-setting",
    -- name = "ReStack-belt2x",
    -- order = "cb",
    -- setting_type = "startup",
    -- default_value = false,
  -- },
  {
    type = "int-setting",
    name = "ReStack-pipe",
    order = "ec",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-container",
    order = "ed",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-inserter",
    order = "ee",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-electric-pole",
    order = "ef",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-roboport",
    order = "eg",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-robot",
    order = "eh",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-rail",
    order = "ei",
    setting_type = "startup",
    default_value = 200,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-rail-signal",
    order = "ej",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-train-stop",
    order = "ek",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-train-carriage",
    order = "el",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-car",
    order = "em",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-combinator",
    order = "en",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-wire",
    order = "eo",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    maximum_value = 10000,
  },

  ---- PRODUCTION -----
  {
    type = "int-setting",
    name = "ReStack-reactor",
    order = "fa",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-crafting-machine",
    order = "fc",
    setting_type = "startup",
    default_value = 20,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-furnace",
    order = "fd",
    setting_type = "startup",
    default_value = 20,
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-beacon",
    order = "fe",
    setting_type = "startup",
    default_value = 20,
    minimum_value = 0,
    maximum_value = 10000,
  },

  ---- AMMO ----
  {
    type = "int-setting",
    name = "ReStack-ammo-bullet", -- ammo_type.category = "bullet"
    order = "ha",
    setting_type = "startup",
    default_value = 0, --base: 200
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-ammo-shotgun", -- ammo_type.category = "shotgun-shell"
    order = "hb",
    setting_type = "startup",
    default_value = 0, -- base: 200
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-ammo-cannon", -- ammo_type.category = "cannon-shell"
    order = "hc",
    setting_type = "startup",
    default_value = 0, --base: 200
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-ammo-artillery", -- ammo_type.category = "artillery-shell"
    order = "hd",
    setting_type = "startup",
    default_value = 10, --base: 1
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-ammo-rocket", -- ammo_type.category = "rocket"
    order = "he",
    setting_type = "startup",
    default_value = 0, -- base: 200-10
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-ammo-flamethrower", -- ammo_type.category = "flamethrower"
    order = "hf",
    setting_type = "startup",
    default_value = 0, -- base: 100
    minimum_value = 0,
    maximum_value = 10000,
  },

  ---- MILITARY ----
  {
    type = "int-setting",
    name = "ReStack-turret",
    order = "ia",
    setting_type = "startup",
    default_value = 0, -- base: 50
    minimum_value = 0,
    maximum_value = 10000,
  },
  {
    type = "int-setting",
    name = "ReStack-wall",
    order = "ib",
    setting_type = "startup",
    default_value = 0, -- base: 100
    minimum_value = 0,
    maximum_value = 10000,
  },

})