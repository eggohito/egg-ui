#> egg-ui:load
#
#@within tag/function minecraft:load


#   Add scoreboard objectives
scoreboard objectives add egg-ui dummy


#   Display load/reload message
execute unless data storage egg:ui root.loaded run tellraw @a[tag = egg_ui.debugger] {"text": "[+ Loaded \"Egg UI\" by eggohito]", "color": "green"}

execute if data storage egg:ui root.loaded run tellraw @a[tag = egg_ui.debugger] {"text": "[= Reloaded \"Egg UI\" by eggohito]", "color": "gold"}


#   Set constants
data modify storage egg:ui root.loaded set value 1b


#   Re-initialize the tick function
schedule function egg-ui:tick 1t replace
