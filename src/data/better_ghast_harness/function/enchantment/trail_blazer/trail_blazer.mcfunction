# If particle type is dual color particles run macro then stop function
execute at @s anchored feet if data storage better_ghast_harness:storage {particle:"dust_color_transition"} run return run function better_ghast_harness:enchantment/trail_blazer/dual_color_macro with storage better_ghast_harness:storage

# If particle type is single color particles run macro then stop function
execute at @s anchored feet if data storage better_ghast_harness:storage {particle:"dust"} run return run function better_ghast_harness:enchantment/trail_blazer/single_color_macro with storage better_ghast_harness:storage
execute at @s anchored feet if data storage better_ghast_harness:storage {particle:"effect"} run return run function better_ghast_harness:enchantment/trail_blazer/single_color_macro with storage better_ghast_harness:storage
execute at @s anchored feet if data storage better_ghast_harness:storage {particle:"instant_effect"} run return run function better_ghast_harness:enchantment/trail_blazer/single_color_macro with storage better_ghast_harness:storage

# If no particle type above is matched run default particle macro
execute at @s anchored feet run function better_ghast_harness:enchantment/trail_blazer/particle_macro with storage better_ghast_harness:storage