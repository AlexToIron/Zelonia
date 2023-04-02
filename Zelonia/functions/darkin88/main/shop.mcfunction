#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################


scoreboard players enable @a[score_etat_min=0,score_etat=0] shop 

# money
xp 5l @a[score_money_min=1,score_money=1]
scoreboard players set @a[score_money_min=1,score_money=1] money 0

# Artifices
tellraw @a[score_shop_min=1,score_shop=1,lm=30,score_etat_min=0,score_etat=0] ["",{"text":"Shop - ","color":"gold","bold":true},{"text":"Item acheté avec succès !","color":"green","bold":true}]
tellraw @a[score_shop_min=1,score_shop=1,l=29,score_etat_min=0,score_etat=0] ["",{"text":"Shop - ","color":"gold","bold":true},{"text":"Vous n'avez pas assez d'XP pour acheter cet item !","color":"red","bold":true}]
give @a[score_shop_min=1,score_shop=1,lm=30,score_etat_min=0,score_etat=0,score_etat_min=0,score_etat=0] minecraft:fireworks 10 0 {Fireworks:{Flight:1,Explosions:[{Type:1,Colors:[7995154,16252672,15615],FadeColors:[16777215]}]}}
xp -30l @a[score_shop_min=1,score_shop=1,lm=30,score_etat_min=0,score_etat=0]
scoreboard players set @a[score_shop_min=1,score_shop=1,score_etat_min=0,score_etat=0] shop 0

# Grade vip
tellraw @a[score_shop_min=2,score_shop=2,lm=1000,score_etat_min=0,score_etat=0] ["",{"text":"Shop - ","color":"gold","bold":true},{"text":"Grade acheté avec succès !","color":"green","bold":true}]
tellraw @a[score_shop_min=2,score_shop=2,l=999,score_etat_min=0,score_etat=0] ["",{"text":"Shop - ","color":"gold","bold":true},{"text":"Vous n'avez pas assez d'XP pour acheter ce grade !","color":"red","bold":true}]
scoreboard teams join vip @a[score_shop_min=2,score_shop=2,lm=1000,score_etat_min=0,score_etat=0]
xp -1000l @a[score_shop_min=2,score_shop=2,lm=1000,score_etat_min=0,score_etat=0]
scoreboard players set @a[score_shop_min=2,score_shop=2,score_etat_min=0,score_etat=0] shop 0

# Grade legende
tellraw @a[score_shop_min=3,score_shop=3,lm=3000,score_etat_min=0,score_etat=0] ["",{"text":"Shop - ","color":"gold","bold":true},{"text":"Grade acheté avec succès !","color":"green","bold":true}]
tellraw @a[score_shop_min=3,score_shop=3,l=2999,score_etat_min=0,score_etat=0] ["",{"text":"Shop - ","color":"gold","bold":true},{"text":"Vous n'avez pas assez d'XP pour acheter ce grade !","color":"red","bold":true}]
scoreboard teams join legende @a[score_shop_min=3,score_shop=3,lm=3000,score_etat_min=0,score_etat=0]
xp -3000l @a[score_shop_min=3,score_shop=3,lm=3000,score_etat_min=0,score_etat=0]
scoreboard players set @a[score_shop_min=3,score_shop=3,score_etat_min=0,score_etat=0] shop 0
