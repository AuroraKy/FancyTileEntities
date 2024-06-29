local enums = require("consts.celeste_enums")
local mods = require("mods")
local fancyTileEntitieshelper = mods.requireFromPlugin("libraries.fancy_tile_entities_helper")


local conditionBlock = {}

conditionBlock.associatedMods = {"FancyTileEntities"}
conditionBlock.name = "FancyTileEntities/FancyConditionBlock=LoadConditionBlock"
conditionBlock.depth = -13000
conditionBlock.placements = {
    name = "condition_block",
    data = {
        tileData = "0",
        condition = "Key",
        conditionID = "1:1",
        width = 8,
        height = 8
    }
}

conditionBlock.fieldInformation = {
    condition = {
        options = enums.condition_block_conditions
    },
    tileData = {
        fieldType = "FancyTileEntities.buttonStringField",
        fte_passData = true
    }
}
conditionBlock.sprite = fancyTileEntitieshelper.getEntitySpriteFunction("blendEdges", "tilesFg", {1, 1, 1, 1})

return conditionBlock