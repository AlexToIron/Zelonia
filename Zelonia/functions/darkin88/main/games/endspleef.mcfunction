#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


# Fin de la partie
title @a[score_etat_min=10,score_etat=10] title {"selector":"@a[score_etat_min=10,score_etat=10]"}
title @a[score_etat_min=10,score_etat=10] subtitle {"text":"à gagné la partie","color":"yellow"}
tellraw @a[score_etat_min=10,score_etat=10] [{"text":"\nSpleef> ","color":"gold","bold":"true"},{"selector":"@a[score_etat_min=10,score_etat=10]","color":"white","bold":"true"},{"text":" A gagné la partie !","color":"white","bold":"true"}]
tellraw @a[score_etat=0] [{"text":"\nSpleef> ","color":"gold","bold":"true"},{"selector":"@a[score_etat_min=10,score_etat=10]","color":"white","bold":"true"},{"text":" A gagné la partie !","color":"white","bold":"true"}]
xp 10l @a[score_etat_min=10,score_etat=10]
scoreboard players add @a[score_etat_min=10,score_etat=10] victoires 1

# Reset de la map
fill X1 Y1 Z1 X2 Y2 Z2 minecraft:snow

blockdata X Y Z {Text1:"{\"text\":\"\\u25cf Spleef \\u25cf\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger join set 3\"},\"bold\":true}",Text2:"{\"text\":\"\"}",Text3:"{\"text\":\" \\u2263 Rejoindre \\u2263\",\"bold\":true,\"color\":\"dark_green\"}"}
scoreboard players set @a[score_etat_min=10,score_etat=10] spawn 1
