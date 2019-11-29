if not KaoExtended then KaoExtended = {} end
if not KaoExtended.item then KaoExtended.item = {} end
if not KaoExtended.recipe then KaoExtended.recipe = {} end

if kaoextended.settingsoveride == true then
	data.raw["recipe"]["science-pack-1"].ingredients =
	    {
			{"iron-gear-wheel",3},
			{"copper-plate", 10},
			{"sci-component-1", 3},
	    }
	data.raw["recipe"]["science-pack-2"].ingredients =
		{
			{"inserter", 2},
			{"transport-belt", 7},
			{"sci-component-2", 3},
			{"bronze-alloy", 7},
		}
	data.raw["recipe"]["science-pack-3"].ingredients =
	    {
		     {"advanced-circuit", 1},
	      {"engine-unit", 1},
	      {"electric-mining-drill", 1},
	        {"steel-plate", 7},
			{"sci-component-3", 3},
	    }
	data.raw["recipe"]["military-science-pack"].ingredients =
	    {
		     {"piercing-rounds-magazine", 1},
	      {"grenade", 1},
	      {"gun-turret", 1},
		{"sci-component-m", 3},
			
	    }
	data.raw["recipe"]["logistic-science-pack"].ingredients =
	    {
		  {"filter-inserter", 1},
		  {"express-transport-belt", 1},
		  {"flying-robot-frame", 1},
		  {"steel-chest", 1},
		  {"sci-component-l", 3},
	    }
	data.raw["recipe"]["production-science-pack"].ingredients =
	    {
		     {"electric-engine-unit", 1},
	     {"assembling-machine-1", 1},
	     {"electric-furnace", 1},
			{"sci-component-5", 3},
	    }
--	data:extend(
--	{
--	  {
--	    type = "recipe",
--	    name = "science-pack-gold",
--	    enabled = "false",
--	    energy_required = 30,
--	    ingredients =
--	    {
--	      {"science-pack-1", 1},
--	      {"science-pack-2", 1},
--	      {"science-pack-3", 1},
--	      {"military-science-pack", 1},
--	      {"sci-component-o", 3},
--	    },
--	    result = "science-pack-gold"
--	  },
--	}
--	)
	data.raw["recipe"]["high-tech-science-pack"].ingredients = {
		    {"processing-unit", 5},
	        {"express-transport-belt", 10},
			{"lithium-ion-battery", 10},
			{"silicon-nitride", 7},
			{"sci-component-4", 3},
			{"advsci-component-4", 3},
	}
	KaoExtended.recipe.addtorecipe("basic-circuit-board", {"condensator", 2})
	KaoExtended.recipe.addtorecipe("module-processor-board", {"advsci-component-4", 1})
	KaoExtended.recipe.addtorecipe("electronic-circuit", {"simple-io", 1})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"standart-io", 2})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"condensator", 15})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"condensator2", 5})
	KaoExtended.recipe.addtorecipe("processing-unit", {"advanced-io", 3})
	KaoExtended.recipe.addtorecipe("processing-unit", {"condensator", 25})
	KaoExtended.recipe.addtorecipe("processing-unit", {"condensator2", 15})
	KaoExtended.recipe.addtorecipe("advanced-processing-unit", {"predictive-io", 3})
	KaoExtended.recipe.addtorecipe("module-processor-board", {"condensator", 12})
	KaoExtended.recipe.addtorecipe("electronic-circuit", {"condensator", 15})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"condensator", 45})
	KaoExtended.recipe.addtorecipe("processing-unit", {"condensator", 75})
	KaoExtended.recipe.addtorecipe("advanced-processing-unit", {"condensator", 92})

else
	KaoExtended.recipe.addtorecipe("science-pack-1", {"sci-component-1", 3})
	KaoExtended.recipe.addtorecipe("science-pack-2", {"sci-component-2", 3})
	KaoExtended.recipe.addtorecipe("science-pack-3", {"sci-component-3", 3})
	KaoExtended.recipe.addtorecipe("military-science-pack", {"sci-component-m", 3})
	KaoExtended.recipe.addtorecipe("logistic-science-pack", {"sci-component-l", 3})
	KaoExtended.recipe.addtorecipe("production-science-pack",{"sci-component-5", 3})
	KaoExtended.recipe.addtorecipe("high-tech-science-pack", {"sci-component-4", 3})
	KaoExtended.recipe.addtorecipe("high-tech-science-pack", {"advsci-component-4", 3})
	KaoExtended.recipe.addtorecipe("module-processor-board", {"advsci-component-4", 1})
	KaoExtended.recipe.addtorecipe("basic-circuit-board", {"condensator", 2})
	KaoExtended.recipe.addtorecipe("module-processor-board", {"advsci-component-4", 1})
	KaoExtended.recipe.addtorecipe("electronic-circuit", {"simple-io", 1})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"standart-io", 2})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"condensator", 15})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"condensator2", 5})
	KaoExtended.recipe.addtorecipe("processing-unit", {"advanced-io", 3})
	KaoExtended.recipe.addtorecipe("processing-unit", {"condensator", 25})
	KaoExtended.recipe.addtorecipe("processing-unit", {"condensator2", 15})
	KaoExtended.recipe.addtorecipe("advanced-processing-unit", {"predictive-io", 3})
	KaoExtended.recipe.addtorecipe("module-processor-board", {"condensator", 12})
	KaoExtended.recipe.addtorecipe("electronic-circuit", {"condensator", 15})
	KaoExtended.recipe.addtorecipe("advanced-circuit", {"condensator", 45})
	KaoExtended.recipe.addtorecipe("processing-unit", {"condensator", 75})
	KaoExtended.recipe.addtorecipe("advanced-processing-unit", {"condensator", 92})
end