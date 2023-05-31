#> egg-ui:impl/item/get_thrower
#
#   > Get the value of the `Thrower` NBT of an item entity
#
#@within egg-ui:impl/item/tick


#   Add a temporary tag to be able to select the item entity if the context of `@s` is changed
tag @s add egg_ui.selected.item


#   Copy the `Thrower` NBT of the item entiyt to the `input.a` NBT of the `egg:ui/io` storage
data modify storage egg:ui/io input.a set from entity @s Thrower


#   Get the UUIDs of all players and compare it to the UUIDs from the `input.a` NBT of the `egg:ui/io` storage
execute as @a run function egg-ui:impl/player/get_uuid


#   Remove the temporary tag
tag @s remove egg_ui.selected.item
