data:extend(
{
  {
    type = "fluid",
    name = "ferric-chloride-solution",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobelectronics__/graphics/icons/ferric-chloride-solution.png",
    icon_size = 32,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[ferric-chloride-solution]"
  },

  {
    type = "recipe",
    name = "ferric-chloride-solution",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="iron-ore", amount=1},
      {type="fluid", name="water", amount=30},
    },
    results=
    {
      {type="fluid", name="ferric-chloride-solution", amount=50}
    },
    subgroup = "bob-fluid",
    icon = "__bobelectronics__/graphics/icons/ferric-chloride-solution.png",
    icon_size = 32,
    order = "b[fluid-chemistry]-a[ferric-chloride-solution]",
    crafting_machine_tint =
    {
      primary = {r = 0.7, g = 0.6, b = 0.2, a = 0.000},
      secondary = {r = 0.2, g = 0.7, b = 0.0, a = 0.000},
      tertiary = {r = 0.0, g = 0.7, b = 0.7, a = 0.000},
    },
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "coal-cracking",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="coal", amount=2},
      {type="fluid", name="water", amount=15}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=12}
    },
    subgroup = "bob-fluid",
    icon = "__bobelectronics__/graphics/icons/coal-cracking.png",
    icon_size = 32,
    order = "b[fluid-chemistry]-a[coal-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.34, b = 0.5, a = 0.000},
      secondary = {r = 0.1, g = 0.1, b = 0.1, a = 0.000},
      tertiary = {r = 0.5, g = 0.04, b = 0.0, a = 0.000},
    },
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "bob-oil-processing",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=100}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=50},
      {type="fluid", name="light-oil", amount=20},
      {type="fluid", name="petroleum-gas", amount=30}
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bob-oil-processing]"
  },
}
)

