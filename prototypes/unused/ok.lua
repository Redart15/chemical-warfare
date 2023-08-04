local entity_name = data.raw.stream["acid-stream-spitter-big"].initial_action[1].action_delivery.target_effects[2].entity_name
local splash = data.raw.entity[entity_name]
print(splash)