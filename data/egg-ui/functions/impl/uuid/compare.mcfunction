#> egg-ui:impl/uuid/compare
#
#   > Compare the UUIDs from the `input.a` and `input.b` NBTs of the `egg:ui/io` command NBT storage
#
#@within egg-ui:impl/player/get_uuid


#   Reset the values of the `temp.input.a` and `temp.input.b` NBTs of the `egg:ui/io` storage
data modify storage egg:ui/io temp.input.a set from storage egg:ui/io input.a

data modify storage egg:ui/io temp.input.b set from storage egg:ui/io input.b


#   Compare the UUIDs from the `temp.input.a` and `temp.input.b` NBTs of the `egg:ui/io` storage
execute store success score #matches egg-ui run data modify storage egg:ui/io temp.input.a set from storage egg:ui/io temp.input.b


#   Invert the result value of the comparison check
execute store result score #matches egg-ui if score #matches egg-ui matches 0


#   Call the `egg-ui:impl/uuid/match` function if the UUIDs from the `input.a` and `input.b` NBTs match
execute if score #matches egg-ui matches 1 run function egg-ui:impl/uuid/match
