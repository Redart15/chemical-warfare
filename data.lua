ROOT = "prototypes."
ARMOR = ROOT .. "armor."
CAPSULE = ROOT .. "capsule."
PROJECTILE = ROOT .. "projectile."
RECIPE = ROOT .. "recipe."
STREAM = ROOT .. "stream."
STICKER = ROOT .. "sticker."
TECHNOLOGY = ROOT .. "technology."
FIRE = ROOT .. "fire."

-- armor
require(ARMOR .. "gasmask")

-- capsule
require(CAPSULE .. "acid_capsule")

--projectile
require(PROJECTILE ..  "acid_cluster_projectile")
-- require(PROJECTILE .. "acid_fire_cluster_projectile")

-- recipe
require(RECIPE .. "acid_capsule")
require(RECIPE .. "gasmask")

-- sticker
-- require(STICKER .. "acid_fire_sticker")

-- stream
require(STREAM .. "acid_stream_player")
-- require(STREAM ..  "acid_fire_stream")

-- fire
require(FIRE .. "acid_splash_fire_player")




