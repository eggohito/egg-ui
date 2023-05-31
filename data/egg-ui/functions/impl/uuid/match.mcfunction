#> egg-ui:impl/uuid/match
#
#   > Call this function if the UUID of the player and the Thrower UUID of the item entity matches
#
#@within egg-ui:impl/uuid/compare


#   Copy the `egg_ui` data of the item entity that has the `egg_ui.selected.item` tag
data modify storage egg:ui/io output set from entity @e[type = minecraft:item, tag = egg_ui.selected.item, limit = 1] Item.tag.egg_ui


#   Add an `egg_ui.screen.reset` tag to the player
tag @s add egg_ui.screen.reset


#   Call the `#egg-ui:api/click_button` function tag
function #egg-ui:api/click_button
