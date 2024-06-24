#> invi:_/check
#--------------------
# ./tick
#--------------------

advancement revoke @s only invi:_/inventory_change
function pdata:api/self/get

data modify storage six:in difference.a set from storage pdata:out get.result.storage.invi._.last_items
data modify storage six:in difference.b set from entity @s Inventory

execute store result score *check.diff --invi run function six:api/array/set/difference
execute unless score *check.diff --invi matches 1.. run return run data remove storage invi:var check


#-- HOOK : invi:inventory_change --
data modify storage invi:hook inventory_change append value {}
data modify storage invi:hook inventory_change[-1].info.removed set from storage six:out difference.unique_a
data modify storage invi:hook inventory_change[-1].info.added set from storage six:out difference.unique_b
function #invi:hook/inventory_change
data remove storage invi:hook inventory_change[-1]
#-- > < --

execute store result storage invi:var check.with.pindex int 1 run scoreboard players get @s pdata-index
function invi:_/check.1 with storage invi:var check.with

data remove storage invi:var check