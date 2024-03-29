local a = false
data:extend({
	{ type = "recipe",
    name = "sci-component-1",
    category = "crafting",
	enabled = true,
	energy_required = 5,
    ingredients =
    {
		{"stone", 3},
		{"coal", 2},
    },
    result = "sci-component-1",
	result_count = 1
  },
  { type = "recipe",
    name = "sci-component-2",
    category = "crafting",
	enabled = true,
	energy_required = 7.5,
    ingredients =
    {
		{"sci-component-1" ,2},
		{"lead-plate", 12},
		{"tinned-copper-cable", 14},
		{"electronic-circuit", 2}
    },
    result = "sci-component-2",
	result_count = 2
  },
  { type = "recipe",
    name = "sci-component-3",
    category = "crafting",
	enabled = true,
	energy_required = 15,
    ingredients =
    {
		{"sci-component-2" ,2},
		{"aluminium-plate", 5},
		{"silver-plate", 14},
		{"nickel-plate", 7},
		{"advsci-component-3", 2},
    },
    result = "sci-component-3",
	result_count = 2
  },
  { type = "recipe",
    name = "sci-component-4",
    category = "crafting",
	enabled = true,
	energy_required = 22,
    ingredients =
    {
		{"sci-component-1" ,10},
		{"sci-component-2", 5},
		{"sci-component-3", 2},
		
		{"cobalt-plate", 9},
		{"tungsten-plate", 8},
		{"gold-plate", 10},
		{"invar-alloy", 6},
		{"titanium-plate", 12},
    },
    result = "sci-component-4",
	result_count = 2
  },
  { type = "recipe",
    name = "sci-component-m",
    category = "crafting",
	enabled = true,
	energy_required = 12,
    ingredients =
    {
		{"sci-component-1" ,2},
		{"sci-component-2", 2},
		{"steel-plate", 5},
    },
    result = "sci-component-m",
	result_count = 2
  },
{ type = "recipe",
    name = "sci-component-l",
    category = "crafting",
	enabled = true,
	energy_required = 12,
    ingredients =
    {
		{"sci-component-1" ,3},
		{"sci-component-2", 3},
		{"transport-belt", 5},
		{"fast-transport-belt", 3},
    },
    result = "sci-component-l",
	result_count = 2
  },
{ type = "recipe",
    name = "sci-component-5",
    category = "crafting",
	enabled = true,
	energy_required = 12,
    ingredients =
    {
		{"sci-component-1" ,4},
		{"sci-component-2", 4},
		{"assembling-machine-2", 2},
    },
    result = "sci-component-5",
	result_count = 2
  },


  { type = "recipe",
    name = "advsci-component-4",
	energy_required = 22,
    category = "crafting",
	enabled = true,
    ingredients =
    {
		{"zinc-plate", 7},
		{"silver-plate", 2},
		{"gold-plate", 3}
    },
    result = "advsci-component-4",
	result_count = 1
  },
  { type = "recipe",
    name = "advsci-component-3",
    category = "crafting",
	enabled = true,
	energy_required = 15,
    ingredients =
    {
		{"bronze-alloy", 1},
		{"brass-alloy", 1},
		{"glass", 2}
    },
    result = "advsci-component-3",
	result_count = 1
  },
  { type = "recipe",
    name = "simple-io",
    category = "crafting",
	enabled = true,
	energy_required = 15,
    ingredients =
    {
		{"basic-electronic-components", 30},
		{"condensator", 30},
		{"iron-plate", 1},
		{"solder", 1}
    },
    result = "simple-io",
	result_count = 1
  },
   { type = "recipe",
    name = "standart-io",
    category = "crafting",
	enabled = true,
	energy_required = 30,
    ingredients =
    {
		{"basic-electronic-components", 50},
		{"electronic-components", 22},
		{"condensator", 22},
		{"condensator2", 10},
		{"simple-io", 3},
		{"insulated-cable", 2},
		{"solder", 3}
    },
    result = "standart-io",
	result_count = 1
  },
  { type = "recipe",
    name = "advanced-io",
    category = "crafting",
	enabled = true,
	energy_required = 45,
    ingredients =
    {
		{"basic-electronic-components", 20},
		{"electronic-components", 40},
		{"condensator", 28},
	        {"intergrated-electronics", 15},
		{"simple-io", 6},
		{"standart-io", 6},
		{"insulated-cable", 2},
		{"solder", 4}
    },
    result = "advanced-io",
	result_count = 1
  },
  { type = "recipe",
    name = "condensator",
    category = "crafting",
    enabled = true,
    energy_required = 2,
    ingredients =
    {
		{"iron-plate", 1},
		{"copper-cable", 1},
	        
    },
    result = "condensator",
	result_count = 3
  },
  { type = "recipe",
    name = "condensator2",
    category = "electronics-machine",
	enabled = true,
	energy_required = 6,
    ingredients =
    {
		{"condensator", 1},
		{"tinned-copper-cable", 1},
		{type="fluid", name = "sulfuric-acid", amount = 5},
	        
    },
    result = "condensator2",
	result_count = 1
  },
  { type = "recipe",
    name = "predictive-io",
    category = "crafting",
	enabled = true,
	energy_required = 60,
    ingredients =
    {
		{"basic-electronic-components", 25},
		{"electronic-components", 52},
	        {"intergrated-electronics", 25},
	        {"processing-electronics", 4},
		{"condensator", 32},
		{"simple-io", 12},
		{"standart-io", 10},
		{"advanced-io", 8},
		{"gilded-copper-cable", 3},
		{"solder", 5}
    },
    result = "predictive-io",
	result_count = 1
  },
})
if
  data.raw.item["alien-artifact"] and
  data.raw.item["alien-artifact-blue"] and
  data.raw.item["alien-artifact-orange"] and
  data.raw.item["alien-artifact-purple"] and
  data.raw.item["alien-artifact-yellow"] and
  data.raw.item["alien-artifact-green"] and
  data.raw.item["alien-artifact-red"]
then
data:extend({

{ type = "recipe",
    name = "sci-component-o",
    category = "crafting",
	enabled = true,
	energy_required = 12,
    ingredients =
    {
		{"sci-component-1" ,4},
		{"sci-component-2", 4},
		{"alien-artifact", 5},
		{"alien-artifact-blue", 2},
		{"alien-artifact-orange", 2},
		{"alien-artifact-purple", 2},
		{"alien-artifact-yellow", 2},
		{"alien-artifact-green", 2},
		{"alien-artifact-red", 2},
		
    },
    result = "sci-component-o",
	result_count = 2
  },
    
})
else
data:extend({

{ type = "recipe",
    name = "sci-component-o",
    category = "crafting",
	enabled = true,
	energy_required = 12,
    ingredients =
    {
		{"sci-component-1" ,4},
		{"sci-component-2", 4},
		{"alien-artifact", 5},
		
    },
    result = "sci-component-o",
	result_count = 2
  },
    
})
    	


    


end