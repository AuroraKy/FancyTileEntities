module FancyTileEntitiesBetterRidgeGate

using ..Ahorn, Maple

@mapdef Entity "FancyTileEntities/BetterRidgeGate" BetterRidgeGate(x::Int,y::Int,tiletype::String="3",flag::String="")

const placements = Ahorn.PlacementDict(
   "Better Ridge Gate (FancyTileEntities)" => Ahorn.EntityPlacement(
		BetterRidgeGate,
		"rectangle",
	  	Dict{String, Any}(),
		function(entity)
         entity.data["nodes"] = [(Int(entity.data["x"]) + 40, Int(entity.data["y"]))]
		end
   ),
)

Ahorn.editingOptions(entity::BetterRidgeGate) = Dict{String, Any}(
    "tiletype" => Ahorn.tiletypeEditingOptions()
)

Ahorn.nodeLimits(entity::BetterRidgeGate) = 1, 1

Ahorn.minimumSize(entity::BetterRidgeGate) = 8, 8
Ahorn.resizable(entity::BetterRidgeGate) = true, true

function Ahorn.selection(entity::BetterRidgeGate)
	x, y = Ahorn.position(entity)
   nx, ny = Int.(entity.data["nodes"][1])

   width = Int(get(entity.data, "width", 8))
   height = Int(get(entity.data, "height", 8))

   return [Ahorn.Rectangle(x, y, width, height), Ahorn.Rectangle(nx, ny, width, height)]
end

Ahorn.renderAbs(ctx::Ahorn.Cairo.CairoContext, entity::BetterRidgeGate, room::Maple.Room) = Ahorn.drawTileEntity(ctx, room, entity)

function Ahorn.renderSelectedAbs(ctx::Ahorn.Cairo.CairoContext, entity::BetterRidgeGate, room::Maple.Room)
	x, y = Ahorn.position(entity)
   nodes = get(entity.data, "nodes", ())

   width = Int(get(entity.data, "width", 8))
   height = Int(get(entity.data, "height", 8))

   if !isempty(nodes)
      nx, ny = Int.(nodes[1])
      cox, coy = floor(Int, width / 2), floor(Int, height / 2)

		material = get(entity.data, "tiletype", "3")[1] 

      fakeTiles = Ahorn.createFakeTiles(room, nx, ny, width, height, material, blendIn=false)
      Ahorn.drawFakeTiles(ctx, room, fakeTiles, room.objTiles, true, nx, ny, clipEdges=true)
      Ahorn.drawArrow(ctx, nx + cox, ny + coy, x + cox, y + coy, Ahorn.colors.selection_selected_fc, headLength=6)
   end
end

end
