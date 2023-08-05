local acid_capsule = table.deepcopy(data.raw.capsule["slowdown-capsule"])
acid_capsule.name = "acid-capsule"
acid_capsule.icons = {
    {
        icon = acid_capsule.icon,
        tint = {r=1,b=1,g=0,a=0.7},
    }
}
local ac_action = acid_capsule.capsule_action.attack_parameters.ammo_type.action
ac_action[1].action_delivery.projectile = "acid-cluster-projectile"


data:extend({acid_capsule})