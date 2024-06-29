local introCrusher = {}
local mods = require("mods")
local fancyTileEntitieshelper = mods.requireFromPlugin("libraries.fancy_tile_entities_helper")

introCrusher.associatedMods = {"FancyTileEntities"}
introCrusher.name = "FancyTileEntities/FancyIntroCrusher"
introCrusher.depth = 0
introCrusher.nodeLineRenderType = "line"
introCrusher.nodeLimits = {1, 1}
introCrusher.placements = {
    name = "intro_crusher",
    data = {
        tileData = "0",
        flags = "1, 0b",
        delay = 1.2,
        speed = 2.0,
        width = 8,
        height = 8
    }
}

introCrusher.fieldInformation = {
    tileData = {
        fieldType = "FancyTileEntities.buttonStringField",
        fte_passData = true
    }
}

introCrusher.sprite = fancyTileEntitieshelper.getEntitySpriteFunction("blendEdges", "tilesFg", {1, 1, 1, 1})

return introCrusher