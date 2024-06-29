local coverupWall = {}
local mods = require("mods")
local fancyTileEntitieshelper = mods.requireFromPlugin("libraries.fancy_tile_entities_helper")

coverupWall.associatedMods = {"FancyTileEntities"}
coverupWall.name = "FancyTileEntities/FancyCoverupWall"
coverupWall.depth = -13000
coverupWall.placements = {
    name = "coverup_wall",
    data = {
        tileData = "0",
        blendIn = true,
        width = 8,
        height = 8
    }
}

coverupWall.fieldInformation = {
    tileData = {
        fieldType = "FancyTileEntities.buttonStringField",
        fte_passData = true
    }
}

coverupWall.sprite = fancyTileEntitieshelper.getEntitySpriteFunction("blendEdges", "tilesFg", {1, 1, 1, 1})

return coverupWall