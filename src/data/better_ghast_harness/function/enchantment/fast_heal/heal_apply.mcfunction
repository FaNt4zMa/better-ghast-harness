# Reset timer
scoreboard players set @s heal_timer 0

# Get enchantment level and health values into storage
execute store result score #level heal_timer run data get entity @s equipment.body.components."minecraft:enchantments"."better_ghast_harness:fast_heal"
scoreboard players remove #level heal_timer 1
execute store result storage better_ghast_harness:heal amplifier int 1 run scoreboard players get #level heal_timer

# Call the heal macro
function better_ghast_harness:enchantment/fast_heal/heal_apply_macro with storage better_ghast_harness:heal

# Visual feedback
particle heart ~ ~1 ~ 0.3 0.3 0.3 0 5