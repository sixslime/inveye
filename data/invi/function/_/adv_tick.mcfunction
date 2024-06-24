#> invi:_/adv_tick
#--------------------
# @advancement : _/tick
#--------------------
# using advancement tick because of tick order:
# 1. (regular tick function)
# 2. (inventory change advancement check)
# 3. (ticking advancement check)
# regular ticking functions would detect the inventory change advancement a tick late.

execute as @a[advancements={invi:_/inventory_change=true}] at @s run function invi:_/check
advancement revoke @s only invi:_/tick