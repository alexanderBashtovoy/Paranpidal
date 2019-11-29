
function dist_a_b(PositionA, PositionB)
    return math.sqrt((PositionB.x - PositionA.x)^2+(PositionB.y-PositionA.y)^2) 
end

script.on_event(defines.events.on_trigger_created_entity, function(event)
  local ent = event.entity
  
--  local player = game.players[1]
--  player.print("VTK-BERTHA-DEBUG")
--  player.print(serpent.block(ent))
--  player.print(serpent.block(ent.name))

  
  if ent.name == "vtk-artillery-at-distance-sound-trigger-shooting" or ent.name == "vtk-artillery-at-distance-sound-trigger-explosion" then
    local dist = 0
    for i, player in pairs(game.connected_players) do
      dist = dist_a_b(player.position, ent.position)
--  player.print(serpent.block(dist))
      if dist > 20 and dist < 250 then
        if ent.name == "vtk-artillery-at-distance-sound-trigger-shooting" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-shooting-close", position = player.position}
        elseif ent.name == "vtk-artillery-at-distance-sound-trigger-explosion" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-explosion-close", position = player.position}
        end
      elseif dist < 500 then
        if ent.name == "vtk-artillery-at-distance-sound-trigger-shooting" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-shooting-far", position = player.position}
        elseif ent.name == "vtk-artillery-at-distance-sound-trigger-explosion" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-explosion-far", position = player.position}
        end
      elseif dist < 750 then
        if ent.name == "vtk-artillery-at-distance-sound-trigger-shooting" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-shooting-horizon", position = player.position}
        elseif ent.name == "vtk-artillery-at-distance-sound-trigger-explosion" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-explosion-horizon", position = player.position}
        end
      elseif dist < 1000 then
        if ent.name == "vtk-artillery-at-distance-sound-trigger-shooting" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-shooting-horizon++", position = player.position}
        elseif ent.name == "vtk-artillery-at-distance-sound-trigger-explosion" then
          player.surface.play_sound{path = "vtk-artillery-at-distance-sound-explosion-horizon++", position = player.position}
        end
      end
    end
  end
end)
