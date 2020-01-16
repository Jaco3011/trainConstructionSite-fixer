-- collision masks
local extraLayer1 = "layer-15" -- for rails
local extraLayer2 = "layer-12" -- for belts

--remove collision mask from curved rails
for _, railData in pairs(data.raw["curved-rail"]) do
  railData.collision_mask = util.table.deepcopy(railData.collision_mask or {"object-layer", "item-layer", "floor-layer", "water-tile"})
    for key,value in pairs(railData.collision_mask) do
        table.remove(railData.collision_mask, key)
    end
end

--remove collision mask from signals
for _, signalType in pairs({"rail-signal", "rail-chain-signal"}) do
  for _, signalData in pairs(data.raw[signalType]) do
    signalData.collision_mask = util.table.deepcopy(signalData.collision_mask or {"object-layer", "item-layer", "floor-layer", "water-tile"})
    for key,value in pairs(signalData.collision_mask) do
        table.remove(signalData.collision_mask, key)
    end
  end
end

--remove collision mask from belts
for _, beltType in pairs({
  "transport-belt",
}) do
  for _, beltEntity in pairs(data.raw[beltType]) do
    beltEntity.collision_mask = util.table.deepcopy(beltEntity.collision_mask or {"floor-layer", "object-layer", "water-tile"})
    for key,value in pairs(beltEntity.collision_mask) do
        table.remove(beltEntity.collision_mask, key)
    end
  end
end
for _, beltType in pairs({
  "underground-belt",
  "splitter",
}) do
  for _, beltEntity in pairs(data.raw[beltType]) do
    beltEntity.collision_mask = util.table.deepcopy(beltEntity.collision_mask or {"item-layer", "object-layer", "water-tile"})
    or key,value in pairs(beltEntity.collision_mask) do
        table.remove(beltEntity.collision_mask, key)
    end
  end
end
