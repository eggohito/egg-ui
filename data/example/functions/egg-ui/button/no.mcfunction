#   Check if the button item is in the inventory of the player
execute unless data storage egg:ui/io output store success score #clicked_button.example.no egg-ui run clear @s #egg-ui:all{egg_ui: {data: {id: "example:no"}}}

execute unless data storage egg:ui/io output if score #clicked_button.example.no egg-ui matches 1 run data modify storage egg:ui/io output.data set value {id: "example:no"}


#   Add a tag that corresponds to the namespace and ID of the button
execute if data storage egg:ui/io output.data{id: "example:no"} run tag @s add egg_ui.clicked_button.example.no
