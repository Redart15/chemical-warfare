local capsule = table.deepcopy(data.raw.capsule["slowdown-capsule"])
capsule.name = "acid-capsule"
capsule.icons = {
    {
        icon = capsule.icon,
        tint = { r = 1, b = 1, g = 0, a = 0.7 },
    }
}

local capsue_action = capsule.capsule_action.attack_parameters.ammo_type.action
capsue_action[1].action_delivery.projectile = "acid-cluster-projectile"

data:extend({ capsule })
