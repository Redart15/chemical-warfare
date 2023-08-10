local capsule = table.deepcopy(data.raw.capsule["slowdown-capsule"])
capsule.name = "acid-capsule"
capsule.icons = {
    {
        icon = capsule.icon,
        tint = { r = 255/255, b = 255/255, g = 0/255, a = 0.6 },
    }
}

local capsue_action = capsule.capsule_action.attack_parameters.ammo_type.action
capsue_action[1].action_delivery.projectile = "acid-cluster-projectile"

data:extend({ capsule })
