#> egg-ui:private/load
#
#@within tag/function minecraft:load


#   Display load/reload message
execute unless data storage egg:ui root.loaded run tellraw @a[tag = egg_ui.debugger] {"text": "[+ Loaded \"Egg UI\" by eggohito]", "color": "green"}

execute if data storage egg:ui root.loaded run tellraw @a[tag = egg_ui.debugger] {"text": "[= Reloaded \"Egg UI\" by eggohito]", "color": "gold"}


#   Add scoreboard objectives
scoreboard objectives add egg-ui dummy


#   Set constants
data modify storage egg:ui root.loaded set value 1b


#   Re-initialize the tick function
schedule function egg-ui:private/tick 1t replace
