#> egg-ui:impl/item/tick
#
#   > Tick all item entities that have the `{Item: {tag: {egg_ui: {element: 1b}}}}` NBT
#
#@within egg-ui:tick


#   Compare the item entity's `Thrower` NBT to the `UUID` NBT of all players
execute if data entity @s Thrower run function egg-ui:impl/item/get_thrower


#   Do some clean up
kill @s

function egg-ui:impl/clean_up
