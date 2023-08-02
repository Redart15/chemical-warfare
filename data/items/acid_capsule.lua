local iacid_capsule = table.deepcopy(data.raw["capsule"]["poison-capsule"]) -- copy the table that defines the heavy armor item into the fireArmor variable

iacid_capsule.name = "acid-capsule"
iacid_capsule.icons = {
  {
    icon = table.deepcopy(data.raw["armor"]["heavy-armor"]).icon, -- need an actual icon for this
    tint = {r=1,g=1,b=0,a=0.3}
  },
}

local racid_capsule = table.deepcopy(data.raw["recipe"]["poison-capsule"])
racid_capsule.enabled = true
racid_capsule.name = "acid-capsule"
racid_capsule.ingredients = {{"copper-plate",200},{"steel-plate",50}}
racid_capsule.result = "acid-capsule"

data:extend{iacid_capsule,racid_capsule}
