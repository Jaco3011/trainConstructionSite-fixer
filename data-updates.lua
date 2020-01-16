-- collision masks
local extraLayer1 = "layer-15" -- for rails
local extraLayer2 = "layer-12" -- for belts

--add collision mask to the trainassembler itself

--the code was here

--add collision mask to curved rails
for _, railData in pairs(data.raw["curved-rail"]) do
  railData.collision_mask = 0
end

--add collision mask to signals
for _, signalType in pairs({"rail-signal", "rail-chain-signal"}) do
  for _, signalData in pairs(data.raw[signalType]) do
    signalData.collision_mask = 0
  end
end

--add collision mask to belts
for _, beltType in pairs({
  "transport-belt",
}) do
  for _, beltEntity in pairs(data.raw[beltType]) do
    beltEntity.collision_mask = 0
  end
end
for _, beltType in pairs({
  "underground-belt",
  "splitter",
}) do
  for _, beltEntity in pairs(data.raw[beltType]) do
    beltEntity.collision_mask = 0
  end
end
