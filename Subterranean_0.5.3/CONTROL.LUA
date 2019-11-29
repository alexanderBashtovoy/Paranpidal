local sb, fsb, esb = "subterranean-belt", "fast-subterranean-belt", "express-subterranean-belt"
local sp = "subterranean-pipe"
local gub, pup = "green-underground-belt", "purple-underground-belt"

local function getDistance(entity, ioEntity)
	return math.sqrt(math.pow(math.abs(math.floor(ioEntity.position.x) - math.floor(entity.position.x)), 2) + math.pow(math.abs(math.floor(ioEntity.position.y) - math.floor(entity.position.y)), 2))
end

local function checkCount(player, count, what)
	if player.get_item_count(what) < count then
		return false
	else
		return true
	end
end

local function restoreDeniedItem(player,item)
	if not player.cursor_stack.valid_for_read then --if that was their last one
		player.cursor_stack.set_stack{name = item, count = 1}
	elseif player.cursor_stack.name == item then
		player.cursor_stack.count = player.cursor_stack.count + 1
	end
end


script.on_event({defines.events.on_built_entity}, --run whenever the player builds an entity
	function(event)
		local entity = event.created_entity
		local player = game.players[event.player_index]

		if entity.name == sb or entity.name == fsb or entity.name == esb then
			subterrainOnBuilt(event)
		elseif entity.name == sp  then
			subterrainPipesOnBuilt(event)
		elseif entity.name == gub or entity.name == pup then
			bobsLogisticsOnBuilt(event)
		end
	end --ends event function
)

-- Actions for subterrain on built.
function subterrainOnBuilt(event)
	if settings.global["subterrain-belt-cost-multiplier"].value <= 0 then return nil end --don't cost belts
	local entity = event.created_entity
	local player = game.players[event.player_index]
	local eName = entity.name

	if not entity.neighbours then
		return
	end

	local otherEntity = entity.neighbours
	local distance = getDistance(entity, otherEntity)
	local cost = (math.floor(distance * settings.global["subterrain-belt-cost-multiplier"].value))
	local respectiveBelts = string.gsub(eName, "subterranean", "transport")
	local respectiveBelts_pretty = respectiveBelts:gsub("-", " ") .. "s"

	otherEntity.force = "player" --set the force of the other side to player, to allow refund

	if not checkCount(player, cost, respectiveBelts) then --they don't have enough of the aboveground belts for this distance
		entity.destroy()
		player.print("You don't have enough " .. respectiveBelts_pretty ..	" in your inventory to create this length.")

		restoreDeniedItem(player,eName)
	else
		player.remove_item{name = respectiveBelts, count = cost} --deduct the required belts from their inventory
	end
end

--actions for subterrain pipes on built
function subterrainPipesOnBuilt(event)
	local entity = event.created_entity
	local player = game.players[event.player_index]
	entity.rotatable = false --Prevent rotation, as that can be used to game the system

	if settings.global["subterrain-pipe-cost-multiplier"].value <= 0 then return nil end --no pipe cost

	local otherPipe = entity.neighbours[1][1] or nil
	
	if not otherPipe then
		return --no need to do anything if this is the first placed
	end

	local distance = getDistance(entity, otherPipe)
	local calc = (math.floor(distance * settings.global["subterrain-pipe-cost-multiplier"].value))

	otherPipe.force = "player"

	if not checkCount(player, calc, "pipe") then
		entity.destroy()
		player.print("You don't have enough pipes in your inventory to create this length.")

		restoreDeniedItem(player, sp)
	else
		player.remove_item{name = "pipe", count = calc} --charge the player the pipes
	end
end


--actions for bob's logistics on built
function bobsLogisticsOnBuilt(event)
	if settings.global["subterrain-belt-cost-multiplier"].value <= 0 then return nil end --don't cost belts
	local entity = event.created_entity
	local player = game.players[event.player_index]
	local eName = entity.name

	if not entity.neighbours then
		return
	end

	local otherEntity = entity.neighbours
	local distance = getDistance(entity, otherEntity)
	local cost = (math.floor(distance * settings.global["subterrain-belt-cost-multiplier"].value))
	local respectiveBelts = string.gsub(eName, "underground", "transport")
	local respectiveBelts_pretty = respectiveBelts:gsub("-", " ") .. "s"

	otherEntity.force = "player" --set the force of the other side to player, to allow refund

	if not checkCount(player, cost, respectiveBelts) then --they don't have enough of the aboveground belts for this distance
		entity.destroy()
		player.print("You don't have enough " .. respectiveBelts_pretty ..	" in your inventory to create this length.")

		restoreDeniedItem(player,eName)
	else
		player.remove_item{name = respectiveBelts, count = cost} --deduct the required belts from their inventory
	end
end


script.on_event({defines.events.on_pre_player_mined_item}, --Called before the mined item is removed from the map
	function(event)
		local entity = event.entity
		local player = game.players[event.player_index]
		if entity.name == sb or entity.name == fsb or entity.name == esb then
			subterrainOnMine(event)
		elseif entity.name == sp then
			subterrainOnMinePipes(event)
		elseif entity.name == gub or entity.name == pup then
			bobsLogisticsOnMine(event)
		end
	end
)

local function insert_items(player, name, count)
	if player.can_insert{name = name, count = count} then
		local inserted = player.insert{name = name, count = count}
		if inserted < count then
			player.surface.spill_item_stack(player.position, {name = name, count = count - inserted}, true)
		end
	else
		player.surface.spill_item_stack(player.position, {name = name, count = count}, true)
	end
end


--actions for subterrain pipes on mine
function subterrainOnMinePipes(event)
	if (not settings.global["subterrain-should-refund-pipes"].value) or (settings.global["subterrain-pipe-refund-multiplier"].value <= 0) then --don't do any of this if not refunding pipes
		return
	end
	local entity = event.entity
	local otherEntity = entity.neighbours[1][1] or false --the opening end of the pair of pipes 
	if not otherEntity then return end --pipe isnt connected to anything
	
	local distance = getDistance(entity, otherEntity)
	if (entity.force.name == "neutral") or (otherEntity.force.name == "neutral") then --a reward was already given
		return
	end

	otherEntity.force = "neutral"
	local calc = (math.floor((distance * settings.global["subterrain-pipe-cost-multiplier"].value) * settings.global["subterrain-pipe-refund-multiplier"].value))
	if calc <= 0 then return end -- Exit if the return turns out to be 0.
	
	insert_items(game.players[event.player_index], "pipe", calc)
end


--Actions for subterrain on mine
function subterrainOnMine(event)
	if (not settings.global["subterrain-should-refund-belts"].value) or (settings.global["subterrain-belt-refund-multiplier"].value <= 0) then
		return
	end

	local entity = event.entity
	local eName = entity.name
	local otherEntity = entity.neighbours or false
	if not otherEntity then return end
	
	local distance = getDistance(entity, otherEntity)

	--a reward was already given
	if (entity.force.name == "neutral") or (otherEntity.force.name == "neutral") then
		return
	end

	otherEntity.force = "neutral"
	local calc = (math.floor((distance * settings.global["subterrain-belt-cost-multiplier"].value) * settings.global["subterrain-belt-refund-multiplier"].value))
	if calc <= 0 then return end -- Exit if the return turns out to be 0.
	local respectiveBelts = string.gsub(eName, "subterranean", "transport")

	insert_items(game.players[event.player_index], respectiveBelts, calc)
end


--Actions for bob's logistics on mine
function bobsLogisticsOnMine(event)
	if (not settings.global["subterrain-should-refund-belts"].value) or (settings.global["subterrain-belt-refund-multiplier"].value <= 0) then
		return
	end

	local entity = event.entity
	local eName = entity.name
	local otherEntity = entity.neighbours or false
	if not otherEntity then return end
	local distance = getDistance(entity, otherEntity)

	--a reward was already given
	if (entity.force.name == "neutral") or (otherEntity.force.name == "neutral") then
		return
	end

	otherEntity.force = "neutral"
	local calc = (math.floor((distance * settings.global["subterrain-belt-cost-multiplier"].value) * settings.global["subterrain-belt-refund-multiplier"].value))
	if calc <= 0 then return end -- Exit if the return turns out to be 0.
	local respectiveBelts = string.gsub(eName, "underground", "transport")
	
	insert_items(game.players[event.player_index], respectiveBelts, calc)

end
