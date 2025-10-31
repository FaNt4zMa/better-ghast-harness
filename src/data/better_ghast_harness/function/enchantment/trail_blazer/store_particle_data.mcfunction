# Store particle properties from harness (particle type, primary color name, 2nd color name)
data modify storage better_ghast_harness:storage particle set from entity @s equipment.body.components."minecraft:writable_book_content".pages[0].raw
data modify storage better_ghast_harness:storage color1 set from entity @s equipment.body.components."minecraft:base_color"
data modify storage better_ghast_harness:storage color2 set from entity @s equipment.body.components."minecraft:writable_book_content".pages[1].raw

# Run color converter
function better_ghast_harness:enchantment/trail_blazer/color_converter