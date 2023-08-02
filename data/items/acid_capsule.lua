
local create_acid_action = {
  action_delivery ={
    target_effect = {
      {
        sticker = "acid-sticker-big",
        type = "create-sticker",
      },
    },
    type = "instant",
    radius = 9,
  },
  force = "all"
}


local acid_splash = table.deepcopy(data.raw["projectile"]["cluster-grenade"])
acid_splash.name = "acid-splash"
local acid_splash_action = acid_splash.action[2]
acid_splash_action.cluster_count = 4
acid_splash_action.distance_deviation = 1
acid_splash_action.action_delivery.projectile = create_acid



-- needs to be added first in order to be used in definition of the capsule
data:extend{acid_splash}

-- define acid capsule + recipe
local iacid_capsule = table.deepcopy(data.raw["capsule"]["poison-capsule"]) -- copy the table that defines the heavy armor item into the fireArmor variable
iacid_capsule.name = "acid-capsule"
iacid_capsule.icons = {
  {
    icon = iacid_capsule.icon, -- need an actual icon for this
    tint = {r=1,g=1,b=0,a=0.5}
  },
}
iacid_capsule.capsule_action.attack_parameters.ammo_type.action[1].action_delivery.projectile = "acid-splash"


local racid_capsule = {
  type = "recipe",
  name = "acid-capsule",
  enabled = true,
  category = "chemistry",
  energy_required = 12,
  ingredients = {
    {"steel-plate", 3},
    {"electronic-circuit",3},
    {amount = 25, name = "sulfuric-acid" , type = "fluid"},
  },
  result = "acid-capsule",
}

data:extend{iacid_capsule,racid_capsule}

