#   Ensure that the button item is actually in the player's inventory (and cursor)
execute unless data storage egg:ui/io output store success score #ui_elements.clicked_button egg-ui run clear @s #egg-ui:all{egg_ui: {data: {id: "example:yes"}}}

execute unless data storage egg:ui/io output if score #ui_elements.clicked_button egg-ui matches 1 run data modify storage egg:ui/io output.data set value {id: "example:yes"}


#   Add a tag to the player that corresponds to the namespace and ID of the button
execute if data storage egg:ui/io output.data{id: "example:yes"} run tag @s add egg_ui.clicked_button.example.yes
