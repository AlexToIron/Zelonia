#######################################
#      Code écrit par Darkin88        #
#                                     #
#######################################

scoreboard players set @a[team=joueur] grade 0
scoreboard players set @a[team=dona] grade 1
scoreboard players set @a[team=vip] grade 2
scoreboard players set @a[team=legende] grade 3
scoreboard players set @a[team=ytb] grade 4
scoreboard players set @a[team=helper] grade 5
scoreboard players set @a[team=builder] grade 6
scoreboard players set @a[team=dev] grade 7
scoreboard players set @a[team=modo] grade 8
scoreboard players set @a[team=admin] grade 9

# op
scoreboard players tag @a[score_grade_min=8] add op
scoreboard players tag @a[score_grade_min=0,score_grade=7] remove op

scoreboard teams join joueur @a[score_grade_min=0,score_grade=0,team=]
scoreboard teams join dona @a[score_grade_min=1,score_grade=1,team=]
scoreboard teams join vip @a[score_grade_min=2,score_grade=2,team=]
scoreboard teams join legende @a[score_grade_min=3,score_grade=3,team=]
scoreboard teams join ytb @a[score_grade_min=4,score_grade=4,team=]
scoreboard teams join helper @a[score_grade_min=5,score_grade=5,team=]
scoreboard teams join builder @a[score_grade_min=6,score_grade=6,team=]
scoreboard teams join dev @a[score_grade_min=7,score_grade=7,team=]
scoreboard teams join modo @a[score_grade_min=8,score_grade=8,team=]
scoreboard teams join admin @a[score_grade_min=9,score_grade=9,team=]
