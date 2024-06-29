local fakeTilesHelper = require("helpers.fake_tiles")
local mods = require("mods")
local fancyTileEntitieshelper = mods.requireFromPlugin("libraries.fancy_tile_entities_helper")

local floatySpaceBlock = {}

floatySpaceBlock.associatedMods = {"FancyTileEntities"}
floatySpaceBlock.name = "FancyTileEntities/floatySpaceBlock"
floatySpaceBlock.depth = -9000
floatySpaceBlock.placements = {
    name = "floaty_space_block",
    data = {
        connectsTo = "3",
        tileData = "0",
        disableSpawnOffset = false,
        randomSeed = 0,
        width = 8,
        height = 8
    
}

floatySpaceBlock.fieldInformation = {
    tileData = {
        fieldType = "FancyTileEntities.buttonStringField",
        fte_passData = true
    }
}

floatySpaceBlock.sprite = fancyTileEntitieshelper.getEntitySpriteFunction("blendEdges", "tilesFg", {1, 1, 1, 1})

floatySpaceBlock.fieldInformation = fakeTilesHelper.getFieldInformation("connectsTo")

return floatySpaceBlock