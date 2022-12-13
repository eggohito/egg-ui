#> egg-ui:impl/player/tick
#
#   > Tick all player entities
#
#@within function egg-ui:private/tick


#   Check if the player has an item that has the `{egg_ui: {element: 1b}}` NBT in its inventory
execute store result score #ui_elements.clicked_any egg-ui run clear @s #egg-ui:all{egg_ui: {element: 1b}} 0

execute if score #ui_elements.clicked_any egg-ui matches 1.. run tag @s add egg_ui.screen.reset


#   Check if the player has an item that has the `{egg_ui: {type: "clickable_button"}}` NBT in its inventory
execute store result score #ui_elements.clicked_button egg-ui run clear @s #egg-ui:all{egg_ui: {type: "clickable_button"}} 0

execute if score #ui_elements.clicked_button egg-ui matches 1.. run function #egg-ui:api/click_button


#   Do some clean up
clear @s #egg-ui:all{egg_ui: {element: 1b}}

function egg-ui:impl/clean_up
