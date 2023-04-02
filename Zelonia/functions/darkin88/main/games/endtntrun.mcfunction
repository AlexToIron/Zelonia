#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


gamemode 3 @a[score_etat_min=6,score_etat=6]
title @a[score_etat_min=6,score_etat=6] title {"selector":"@a[score_etat_min=6,score_etat=6,score_spectator_min=0,score_spectator=0]"}
title @a[score_etat_min=6,score_etat=6] subtitle {"text":"à gagné la partie","color":"yellow"}
tellraw @a[score_etat_min=6,score_etat=6] [{"text":"\nTNTrun> ","color":"gold","bold":"true"},{"selector":"@a[score_etat_min=6,score_etat=6,score_spectator_min=0,score_spectator=0]","color":"white","bold":"true"},{"text":" A gagné la partie !","color":"white","bold":"true"}]
tellraw @a[score_etat=0] [{"text":"\nTNTrun> ","color":"gold","bold":"true"},{"selector":"@a[score_etat_min=6,score_etat=6,score_spectator_min=0,score_spectator=0]","color":"white","bold":"true"},{"text":" A gagné la partie !","color":"white","bold":"true"}]
xp 8l @a[score_etat_min=6,score_etat=6,score_spectator_min=0,score_spectator=0]
xp 2l @a[score_etat_min=6,score_etat=6]
scoreboard players add @a[score_etat_min=6,score_etat=6,score_spectator_min=0,score_spectator=0] victoires 1

# reset de la map
# Fois le nombre de couches
fill X1 Y1 Z1 X2 Y2 Z2 sand
fill X1 Y1 Z1 X2 Y2 Z2 tnt

blockdata X Y Z {Text1:"{\"text\":\"\\u25cf TNT run \\u25cf\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger join set 2\"},\"bold\":true}",Text2:"{\"text\":\"\"}",Text3:"{\"text\":\" \\u2263 Rejoindre \\u2263\",\"bold\":true,\"color\":\"dark_green\"}"}
scoreboard players set @a[score_etat_min=6,score_etat=6] spawn 1
