ROOT = "prototypes."
ARMOR = ROOT .. "armor."
CAPSULE = ROOT .. "capsule."
PROJECTILE = ROOT .. "projectile."
RECIPE = ROOT .. "recipe."
STREAM = ROOT .. "stream."
TECHNOLOGY = ROOT .. "technology."

--armor
require(ARMOR .. "gasmask")

--capsule
require(CAPSULE .. "acid_capsule")

--projectile
require(PROJECTILE ..  "acid_cluster_projectile")

--recipe
require(RECIPE .. "acid_capsule")
require(RECIPE .. "gasmask")

--stream
require(STREAM .. "acid_stream")




