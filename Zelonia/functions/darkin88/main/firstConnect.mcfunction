#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################

scoreboard players set @a[tag=!hasFirstSpawn] fSpawnTellraw 1
execute @a[score_fSpawnTellraw_min=1,score_fSpawnTellraw=1] ~ ~ ~ tellraw @a ["",{"text":"Nouveau >","bold":true,"color":"gold"},{"text":" "},{"selector":"@p","bold":true},{"text":" s'est connécté pour la première fois sur le serveur !","bold":true}]
execute @a[score_fSpawnTellraw_min=1,score_fSpawnTellraw=1] ~ ~ ~ scoreboard players add Uniques sb 1
execute @a[score_fSpawnTellraw_min=1,score_fSpawnTellraw=1] ~ ~ ~ summon minecraft:fireworks_rocket X Y Z {LifeTime:30,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:3,Flicker:0,Trail:0,Colors:[I;2651799,12801229],FadeColors:[I;3887386]}]}}}}
title @a[score_fSpawnTellraw_min=1,score_fSpawnTellraw=1] title {"text":"Bienvenue sur","color":"gold","bold":"true"}
title @a[score_fSpawnTellraw_min=1,score_fSpawnTellraw=1] subtitle {"text":"Zelonia","color":"yellow","bold":"true"}
scoreboard players set @a[score_fSpawnTellraw_min=1,score_fSpawnTellraw=1] fSpawnTellraw 2
scoreboard players set @a[score_fSpawnTellraw_min=2,score_fSpawnTellraw=2] etat 0
scoreboard players set @a[score_fSpawnTellraw_min=2,score_fSpawnTellraw=2] grade 0
scoreboard players set @a[score_fSpawnTellraw_min=2,score_fSpawnTellraw=2] vip 0
scoreboard players set @a[score_fSpawnTellraw_min=2,score_fSpawnTellraw=2] spawn 1
tp @a[score_fSpawnTellraw_min=2,score_fSpawnTellraw=2] X Y Z
spawnpoint @a[score_fSpawnTellraw_min=2,score_fSpawnTellraw=2] X Y Z
scoreboard players set @a[score_fSpawnTellraw_min=2,score_fSpawnTellraw=2] fSpawnTellraw 3
scoreboard players tag @a[tag=!hasFirstSpawn] add hasFirstSpawn