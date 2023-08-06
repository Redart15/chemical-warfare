local poison_rocket_ammo = table.deepcopy(data.raw.ammo["rocket"])
poison_rocket_ammo.name = "poison-rocket-ammo"
poison_rocket_ammo.icons = {
    {
        icon = poison_rocket_ammo.icon,
        tint = {b=1, g=0, r=0, a=0.5}
    },
}
poison_rocket_ammo.ammo_type.action.action_delivery.projectile = "poison-rocket-projectile"

data:extend({poison_rocket_ammo})