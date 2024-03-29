data:extend(
{
  {
    type = "recipe",
    name = "lead-plate",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.2,
    ingredients = {{"lead-ore", 1}},
    result = "lead-plate",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "silver-plate",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.2,
    ingredients = {{"silver-ore", 1}},
    result = "silver-plate",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "tin-plate",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.2,
    ingredients = {{"tin-ore", 1}},
    result = "tin-plate",
    allow_decomposition = false
  },


  {
    type = "recipe",
    name = "bob-lead-plate",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 6.4,
    enabled = "false",
    ingredients =
    {
      {"lead-oxide", 2},
      {"carbon", 1},
    },
    result = "lead-plate",
    result_count = 2,
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "bob-gold-plate",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 3.2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="gold-ore", amount=1},
      {type="fluid", name="chlorine", amount=3}
    },
    result = "gold-plate",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "cobalt-plate",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 3.2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cobalt-oxide", amount=1},
      {type="fluid", name="sulfuric-acid", amount=10},
    },
    result = "cobalt-plate",
    allow_decomposition = false
  },


  {
    type = "recipe",
    name = "bob-tungsten-plate",
    enabled = false,
    category = "mixing-furnace",
    subgroup = "bob-alloy",
    energy_required = 16,
    ingredients =
    {
      {type="item", name="nickel-plate", amount=1},
      {type="item", name="powdered-tungsten", amount=4},
    },
    result = "tungsten-plate",
    result_count = 5,
    allow_decomposition = false
  },


  {
    type = "recipe",
    name = "bob-zinc-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 3.2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="zinc-ore", amount=1},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "zinc-plate",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "bob-nickel-plate",
    icon = "__bobplates__/graphics/icons/plate/nickel-plate.png",
    icon_size = 64,
    subgroup = "bob-material-electrolysis",
    order = "c-a-f[nickel-plate]",
    category = "electrolysis",
    enabled = "false",
    energy_required = 3.2,
    ingredients =
    {
      {type="item", name="nickel-ore", amount=1},
      {type="fluid", name="oxygen", amount=8}
    },
    results=
    {
      {type="fluid", name="sulfur-dioxide", amount=10},
      {type="item", name="nickel-plate", amount=1}
    },
    main_product= "nickel-plate",
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "bob-aluminium-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 6.4,
    enabled = "false",
    ingredients =
    {
      {"alumina", 2},
      {"carbon", 1},
    },
    result = "aluminium-plate",
    result_count = 2,
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "bob-titanium-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 6.4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=2},
      {type="item", name="carbon", amount=1},
      {type="item", name="rutile-ore", amount=2}
    },
    result = "titanium-plate",
    result_count = 2,
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "bob-silicon-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 6.4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=2},
      {type="item", name="carbon", amount=1},
      {type="item", name="quartz", amount=2}
    },
    result = "silicon",
    result_count = 2,
    allow_decomposition = false
  },

  {
    type = "recipe",
    name = "lithium",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 3.2,
    enabled = "false",
    ingredients =
    {
      {"lithium-chloride", 1},
    },
    result = "lithium",
    allow_decomposition = false
  },
}
)


