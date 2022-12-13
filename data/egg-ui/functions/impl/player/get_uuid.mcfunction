#> egg-ui:impl/player/get_uuid
#
#   > Get the value of the `UUID` NBT of a player
#
#@internal


#   Add a temporary tag to be able to select the player if the context of `@s` is changed
tag @s add egg_ui.selected.player


#   Copy the `UUID` NBT of the player, paste it into the `input.b` NBT of the `egg-ui:io` command NBT storage and compare the UUIDs in the `input.a` and `input.b` NBTs of the `egg-ui:io` command NBT storage
data modify storage egg:ui/io input.b set from entity @s UUID

function egg-ui:impl/uuid/compare


#   Remove the temporary tag
tag @s remove egg_ui.selected.player
