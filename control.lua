require "defines"
require "util"

local inChainReaction = false

function onDeath(event)
    local entity = event.entity
    if inChainReaction then
        return
    end

    if entity.name == 'stone-rock' then
        local maxRadius = 0
        local maxCount = 200

        -- Check research
        for i, player in pairs(game.players) do
            if player.force.technologies['exploding-rocks-4'].researched then
                maxRadius = 150
                maxCount = 1000
            elseif player.force.technologies['exploding-rocks-3'].researched then
                maxRadius = 80
                maxCount = 50
            elseif player.force.technologies['exploding-rocks-2'].researched then
                maxRadius = 40
                maxCount = 30
            elseif player.force.technologies['exploding-rocks-1'].researched then
                maxRadius = 20
                maxCount = 10
            end
            break
        end

        if maxRadius = 0 then
            return
        end

        inChainReaction = true
        
        local area
        local otherRocks

        local radius = maxRadius
        repeat
            area = {{entity.position.x - radius, entity.position.y - radius}, {entity.position.x + radius, entity.position.y + radius}}
            otherRocks = game.get_surface(1).find_entities_filtered({area = area, name='stone-rock'})
            radius = radius - 5
        until #otherRocks <= maxCount or radius < 5

        for k, v in ipairs(otherRocks) do
            v.die()
        end

        inChainReaction = false
    end
end

script.on_event(defines.events.on_entity_died, onDeath)
