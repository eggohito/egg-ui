#> egg-ui:private/tick
#
#@within
#   function egg-ui:private/load
#   function egg-ui:private/tick


#   Tick all item entities that have the `Item.tag.egg_ui` NBT
execute as @e[type = minecraft:item, nbt = {Item: {tag: {egg_ui: {element: 1b}}}}] run function egg-ui:impl/item/tick


#   Tick all players
execute as @a run function egg-ui:impl/player/tick


#   Loop this function
schedule function egg-ui:private/tick 1t
