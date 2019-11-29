if settings.startup["coppermine-bob-module-space-packs-for-god-modules"].value then
  -- Add space science packs as an ingredient for god module 1
  if data.raw.recipe["god-module-1"] then
    bobmods.lib.recipe.add_ingredient("god-module-1", {"space-science-pack", 2})
    bobmods.lib.tech.add_prerequisite("god-module-1", "rocket-silo")
  end
end
