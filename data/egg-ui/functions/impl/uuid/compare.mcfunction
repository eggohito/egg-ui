#> egg-ui:impl/uuid/compare
#
#   > Compare the UUIDs from the `input.a` and `input.b` NBTs of the `egg:ui/io` command NBT storage
#
#@within egg-ui:impl/player/get_uuid


#   Compare the values of the `input.a` and  the `input.b` NBTs of the `egg:ui/io` command NBT storage
data modify storage egg:ui/io temp.input.a set from storage egg:ui/io input.a

data modify storage egg:ui/io temp.input.b set from storage egg:ui/io input.b

execute store success score #matches egg-ui run data modify storage egg:ui/io temp.input.a set from storage egg:ui/io temp.input.b


#   Invert the result value
execute store result score #matches egg-ui if score #matches egg-ui matches 0


#   Call the `egg-ui:impl/uuid/match` function if the UUID of the player matches the Thrower UUID of the item entity
execute if score #matches egg-ui matches 1 run function egg-ui:impl/uuid/match
