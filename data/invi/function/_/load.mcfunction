#> invi:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *invi load-status 1

# settings
execute unless data storage invi:settings {PERSIST:true} run function invi:settings

#declare storage invi:var
#declare storage invi:data
#declare storage invi:hook

# scoreboards
scoreboard objectives add -invi dummy
scoreboard objectives add --invi dummy
