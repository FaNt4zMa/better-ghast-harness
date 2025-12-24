# Increment timer
scoreboard players add @s heal_timer 1

# Check if 10 seconds have passed (200 ticks)
execute if score @s heal_timer matches 200.. run function better_ghast_harness:enchantment/fast_heal/heal_apply