#> egg-ui:impl/item/get_thrower
#
#   > Get the value of the `Thrower` NBT of an item entity
#
#@within egg-ui:impl/item/tick


#   Add a temporary tag to be able to select the item entity if the context of `@s` is changed
tag @s add egg_ui.selected.item


#   Copy the `Thrower` NBT of the item entity, paste it into the `input.a` NBT of the `egg-ui:io` command NBT storage and execute as all players to find the player that has the matching UUID
data modify storage egg:ui/io input.a set from entity @s Thrower

execute as @a run function egg-ui:impl/player/get_uuid


#   Remove the temporary tag
tag @s remove egg_ui.selected.item
