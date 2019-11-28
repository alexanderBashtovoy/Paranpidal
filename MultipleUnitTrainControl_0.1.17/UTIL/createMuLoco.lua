--[[ Copyright (c) 2019 robot256 (MIT License)
 * Project: Multiple Unit Train Control
 * File: createMuLoco.lua
 * Description: Creates new prototypes for a burner-type MU locomotive version.
 * Arguments:
 *  std= entity name string of the standard version
 *  mu= entity name string of the mu version to be created
 *  item= data.raw category string of the standard version's item
 *  hasDescription= boolean indicating whether standard version has entity-description locale entry
 *  power_multiplier= power buff to multiply, defaults to 2
 *  fuel_item= item name string of Realistic Electric Trains dummy fuel item used by the standard version
--]]

multiply_energy_value = require("__OpteraLib__.data.utilities").multiply_energy_value
copy_prototype = require("__OpteraLib__.data.utilities").copy_prototype
require ("util.createMuLocoRETFuelItem")
require ("util.createMuLocoEntityPrototype")
require ("util.createMuLocoItemPrototype")
require ("util.createMuLocoRecipePrototype")


function createMuLoco(arg)
	local oldName = arg.std
	local newName = arg.mu
	local itemType = arg.item
	local hasDescription = arg.hasDescription or false
	local power_multiplier = arg.power_multiplier or 2
	local fuel_item = arg.fuel_item
	
	-- Check that source exists
	if not data.raw["locomotive"][oldName] then
		error("MUTC Prototype Maker: locomotive " .. oldName .. " doesn't exist")
	end
	
	-- RET fuel compatibility
	local mu_fuel_item = nil
	local mu_fuel_item_name = nil
	if fuel_item then
		mu_fuel_item = createMuLocoRETFuelItem(fuel_item, fuel_item.."-mu", power_multiplier)
		mu_fuel_item_name = mu_fuel_item.name
		data:extend{mu_fuel_item}
	end
	
	data:extend{
		createMuLocoItemPrototype(itemType, oldName, newName),
		createMuLocoEntityPrototype(oldName, newName, hasDescription, power_multiplier),
		createMuLocoRecipePrototype(oldName, newName, mu_fuel_item_name)
	}
	table.insert(data.raw.technology["multiple-unit-train-control-locomotives"].effects, {type = "unlock-recipe", recipe = newName})
	
end

return createMuLoco

