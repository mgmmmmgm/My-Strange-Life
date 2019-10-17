-- Actions =
-- {
--     -- Teleport an entity from the current position to the given position
--     Teleport = function(map, tileX, tileY)
--         return function(trigger, entity)
--             entity.mTileX = tileX
--             entity.mTileY = tileY
--             Teleport(entity, map)
--         end
--     end
-- }

Actions =
{
    -- Teleport an entity from the current position to the given position
    Teleport = function(map, tileX, tileY, layer)
        layer = layer or 1
        return function(trigger, entity)
            entity:SetTilePos(tileX, tileY, layer, map)
        end
    end,

    --
    --
    AddNPC = function(map, npc)
        return function(trigger, entity)

            local charDef = gCharacters[npc.def]
            assert(charDef)
            local char = Character:Create(charDef, map)
            local x = npc.x or char.mEntity.mTileX
            local y = npc.y or char.mEntity.mTileY
            local layer = npc.layer or char.mEntity.mLayer

            char.mEntity:SetTilePos(x, y, layer, map)

            table.insert(map.mNPCs, char)
            assert(map.mNPCbyId[npc.id] == nil)
            char.mId = npc.id
            map.mNPCbyId[npc.id] = char
        end
    end,


    RunScript = function(map, Func)
        return function(trigger, entity, tX, tY, tLayer)
            Func(map, trigger, entity, tX, tY, tLayer)
        end
    end,

    -- ShortText = function(map, text)
    --     return function(trigger, entity, tX, tY, tLayer)
    --         tY = tY - 1
    --         local x, y = map:TileToScreen(tX, tY)
    --         gStack:PushFix(gRenderer, x, y, 18*16, 5*16, text)
    --     end
    -- end,
}