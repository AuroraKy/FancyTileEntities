local fakeTilesHelper = require("helpers.fake_tiles")

local introCrusher = {}

introCrusher.associatedMods = {"FancyTileEntities"}
introCrusher.name = "FancyTileEntities/BetterIntroCrusher"
introCrusher.depth = 0
introCrusher.nodeLineRenderType = "line"
introCrusher.nodeLimits = {1, 1}
introCrusher.placements = {
    name = "intro_crusher",
    data = {
        tiletype = "3",
        flags = "1, 0b",
        width = 8,
        height = 8,
        manualTrigger = false,
        delay = 1.2,
        speed = 2.0
    }
}

introCrusher.sprite = fakeTilesHelper.getEntitySpriteFunction("tiletype", false)
introCrusher.fieldInformation = fakeTilesHelper.getFieldInformation("tiletype")

return introCrusher