local capsule_explosion_sound = {
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-1.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-2.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-3.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-4.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-5.ogg",
        volume = 1.0
    }
}

local target_sound = {
    type = "play-sound",
    sound = capsule_explosion_sound
}

local action = {
    type = "stream",
    stream = "acid-player-stream",
}

local projectile = table.deepcopy(data.raw.projectile["slowdown-capsule"])
projectile.name = "acid-cluster-projectile"
projectile.action = {
    -- works to, however seems to be abit to predictable
    -- {
    --     type = "cluster",
    --     distance = 3,
    --     cluster_count = 3,
    --     repeat_count = 3,
    --     distance_deviation = 0.5,
    --     action_delivery = action,
    -- },
    {
        type = "area",
        repeat_count = 9,
        target_entities = false,
        trigger_from_target = true,
        radius = 3.5,
        action_delivery = action,
    },
    {
        type = "direct",
        action_delivery = {
            type = "instant",
            target_effects = target_sound,
        },
    }
}

data:extend { projectile }
