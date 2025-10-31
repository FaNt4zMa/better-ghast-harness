# Mark harness as processed (hidden flag)
item modify entity @s weapon.mainhand [{"function":"minecraft:set_firework_explosion","shape":"small_ball"}]
item modify entity @s weapon.mainhand [{"function":"minecraft:toggle_tooltips","toggles":{"minecraft:firework_explosion":false}}]

# Store particle properties from held harness and call converters
data modify storage better_ghast_harness:storage particle set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw
data modify storage better_ghast_harness:storage color1 set from entity @s SelectedItem.components."minecraft:base_color"
data modify storage better_ghast_harness:storage color2 set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[1].raw

function better_ghast_harness:enchantment/trail_blazer/converter/color_converter
function better_ghast_harness:enchantment/trail_blazer/converter/display_name_converter

# Debug
execute as @s run tellraw @a "add_particle_lore function triggered!"

# Route to different set lore macros based on particle type
execute if data storage better_ghast_harness:storage {particle:"dust_color_transition"} run return run function better_ghast_harness:enchantment/trail_blazer/dynamic_lore/macros/set_lore_dual_color_macro with storage better_ghast_harness:storage
execute if data storage better_ghast_harness:storage {particle:"dust"} run return run function better_ghast_harness:enchantment/trail_blazer/dynamic_lore/macros/set_lore_single_color_macro with storage better_ghast_harness:storage
execute if data storage better_ghast_harness:storage {particle:"effect"} run return run function better_ghast_harness:enchantment/trail_blazer/dynamic_lore/macros/set_lore_single_color_macro with storage better_ghast_harness:storage
execute if data storage better_ghast_harness:storage {particle:"instant_effect"} run return run function better_ghast_harness:enchantment/trail_blazer/dynamic_lore/macros/set_lore_single_color_macro with storage better_ghast_harness:storage

# If no particle type above is matched run default set lore macro
function better_ghast_harness:enchantment/trail_blazer/dynamic_lore/macros/set_lore_macro with storage better_ghast_harness:storage