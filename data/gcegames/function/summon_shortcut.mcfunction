execute if items entity @p weapon.offhand armor_stand positioned ~ ~-1 ~ run return run function gcegames:macros/do_and_kill {"cmd":"function gcegames:trackplacer/summon"}
execute if items entity @p weapon.offhand paper[item_model="gcegames:boost"] positioned ~ ~0.5 ~ run return run function gcegames:macros/do_and_kill {"cmd":"function gcegames:boost/summon"}
execute if items entity @p weapon.offhand paper[item_model="gcegames:car"] positioned ~ ~ ~ run return run function gcegames:macros/do_and_kill {"cmd":"function gcegames:car/summon"}
execute if items entity @p weapon.offhand paper[item_model="gcegames:coin"] positioned ~ ~0.5 ~ run return run function gcegames:macros/do_and_kill {"cmd":"function gcegames:coin/summon"}
execute if items entity @p weapon.offhand paper[item_model="gcegames:item_box"] positioned ~ ~0.5 ~ run return run function gcegames:macros/do_and_kill {"cmd":"function gcegames:item_box/summon"}
tellraw @p {"text":"Please use an offhand item to specify action","color":"red"}
data modify entity @s DeathLootTable set value "minecraft:empty"
kill @s
