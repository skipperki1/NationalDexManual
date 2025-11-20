-- entry point for all lua code of the pack
-- more info on the lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
ENABLE_DEBUG_LOG = true
-- get current variant
local variant = Tracker.ActiveVariantUID
-- check variant info
IS_ITEMS_ONLY = variant:find("itemsonly")

print("-- Example Tracker --")
print("Loaded variant: ", variant)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Custom Items
ScriptHost:LoadScript("scripts/custom_items/class.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlus.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlusWrapper.lua")

-- Items
Tracker:AddItems("items/Kanto.jsonc")
Tracker:AddItems("items/Johto.jsonc")
Tracker:AddItems("items/Hoenn.jsonc")
Tracker:AddItems("items/Sinnoh.jsonc")
Tracker:AddItems("items/Unova.jsonc")
Tracker:AddItems("items/Kalos.jsonc")
Tracker:AddItems("items/Alola.jsonc")
Tracker:AddItems("items/Galar.jsonc")
Tracker:AddItems("items/Hisui.jsonc")
Tracker:AddItems("items/Paldea.jsonc")
Tracker:AddItems("items/APHelper.jsonc")

if not IS_ITEMS_ONLY then -- <--- use variant info to optimize loading
    -- Maps
    Tracker:AddMaps("maps/maps.jsonc")
    -- Locations
    Tracker:AddLocations("locations/Gen1.jsonc")
    Tracker:AddLocations("locations/Gen2.jsonc")
    Tracker:AddLocations("locations/Gen3.jsonc")
    Tracker:AddLocations("locations/Gen4.jsonc")
    Tracker:AddLocations("locations/Gen5.jsonc")
    Tracker:AddLocations("locations/Gen6.jsonc")
    Tracker:AddLocations("locations/Gen7.jsonc")
    Tracker:AddLocations("locations/Gen8.jsonc")
    Tracker:AddLocations("locations/Gen9.jsonc")
end

-- Layout
Tracker:AddLayouts("layouts/items.jsonc")
Tracker:AddLayouts("layouts/tracker.jsonc")
Tracker:AddLayouts("layouts/broadcast.jsonc")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end
