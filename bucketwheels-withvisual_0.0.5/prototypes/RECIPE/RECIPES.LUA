local mk1Ingredient, mk2Ingredient, mk3Ingredient
if mods["bobplates"] then
    mk1Ingredient =
    {
      {"iron-plate", 40},
      {"steel-gear-wheel", 40},
      {"steel-bearing", 12},
      {"steel-plate", 35},
      {"transport-belt", 10},
      {"advanced-circuit", 4},
      {"electric-engine-unit", 10}
    }
    mk2Ingredient =
    {
	  {"bucket-wheel-excavator", 1},
      {"titanium-gear-wheel", 40},
      {"titanium-bearing", 12},
      {"steel-plate", 110},
	  {"fast-transport-belt", 10},
	  {"advanced-circuit", 12},
	  {"electric-engine-unit", 25}
    }
    mk3Ingredient =
    {
	  {"bucket-wheel-excavator-mk2", 1},
      {"steel-plate", 220},
      {"tungsten-carbide", 120},
      {"tungsten-gear-wheel", 40},
      {"nitinol-bearing", 12},
	  {"express-transport-belt", 10},
	  {"advanced-circuit", 24},
	  {"electric-engine-unit", 65}
    }
else
    mk1Ingredient =
    {
      {"iron-plate", 80},
      {"iron-gear-wheel", 20},
      {"steel-plate", 35},
      {"transport-belt", 10},
      {"advanced-circuit", 4},
      {"electric-engine-unit", 10}
    }
    mk2Ingredient =
    {
	  {"bucket-wheel-excavator", 1},
      {"iron-plate", 75},
      {"steel-plate", 110},
	  {"fast-transport-belt", 10},
	  {"advanced-circuit", 12},
	  {"electric-engine-unit", 25}
    }
    mk3Ingredient =
    {
	  {"bucket-wheel-excavator-mk2", 1},
      {"iron-plate", 120},
      {"steel-plate", 220},
	  {"express-transport-belt", 10},
	  {"advanced-circuit", 24},
	  {"electric-engine-unit", 65}
    }
end

data:extend(
{
  {
    type = "recipe",
    name = "bucket-wheel-excavator",
    enabled = "false",
    ingredients = mk1Ingredient,
    energy_required = 30,
    result = "bucket-wheel-excavator"
  },
  {
    type = "recipe",
    name = "bucket-wheel-excavator-mk2",
    enabled = "false",
    ingredients = mk2Ingredient,
    energy_required = 60,
    result = "bucket-wheel-excavator-mk2"
  },
  {
    type = "recipe",
    name = "bucket-wheel-excavator-mk3",
    enabled = "false",
    ingredients = mk3Ingredient,
    energy_required = 120,
    result = "bucket-wheel-excavator-mk3"
  }
 })
