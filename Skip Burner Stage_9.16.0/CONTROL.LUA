	local initialization=function()
    for _, force in pairs(game.forces) do
       force.technologies['induction1'].researched=true
	   force.technologies['induction2'].researched=true
	   force.technologies['induction3'].researched=true
    end
end

script.on_init(initialization)
script.on_event({defines.events.on_player_changed_force}, initialization)

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
		player.insert{name="steel-axe", count=10}	
		player.insert{name="iron-plate", count=292}
		player.insert{name="copper-plate", count=200}
		player.insert{name="electronic-circuit", count=400}
		player.insert{name="iron-gear-wheel", count=200}
		player.insert{name="inserter", count=200}
		player.insert{name="long-handed-inserter", count=50}
		player.insert{name="transport-belt", count=800}
		player.insert{name="medium-electric-pole", count=150}
		player.insert{name="big-electric-pole", count=50}
		player.insert{name="electric-mining-drill", count=100}
		player.insert{name="stone-furnace", count=149}
		player.insert{name="assembling-machine-2", count=50}
		player.insert{name="pipe", count=100}
		player.insert{name="steel-chest", count=20}
		player.insert{name="steam-engine", count=20}
		player.insert{name="boiler", count=10}
		player.insert{name="offshore-pump", count=1}
		player.insert{name="pipe-to-ground", count=20}
		player.insert{name="lab", count=6}
		player.insert{name="splitter", count=50}
		player.insert{name="underground-belt", count=50}
		player.insert{name="coal", count=200}
		player.insert{name="power-armor", count = 1}
			 local p_armor = player.get_inventory(5)[1].grid --put items in armour
			  p_armor.put({name = "personal-roboport-mk2-equipment"})
			  p_armor.put({name = "personal-roboport-mk2-equipment"})
			  p_armor.put({name = "battery-mk2-equipment"})
			  p_armor.put({name = "battery-mk2-equipment"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
			  p_armor.put({name = "induction-coil"})
		player.insert{name="construction-robot", count = 50}
	end)