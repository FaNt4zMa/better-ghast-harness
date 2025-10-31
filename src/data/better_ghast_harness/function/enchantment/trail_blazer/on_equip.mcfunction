# Get particle and color data from the ghast
execute as @e[type=happy_ghast,sort=nearest,limit=1,distance=..10] run function better_ghast_harness:enchantment/trail_blazer/store_particle_data

advancement revoke @s only better_ghast_harness:equip_harness