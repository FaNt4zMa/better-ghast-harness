## [1.2.0] - 2025-12-29

### Added

- Optional resource pack to enhance visbility of harness tier in the inventory
![Optional Resourcepack Screenshot](https://cdn.modrinth.com/data/tXHowlQJ/images/6ce5983cc18b89a6c00f5fd3c0ef88b81269db3b.png)
- Custom happy ghast drop when killed by a player (don't do it..)
- Recipe to fix said drop so it stacks again. Simply place in any crafting slot to fix.

### Changed

- Adjusted armor values of some tiers that were lacking compared to their previous one (*cough* *cough* netherite...)
  - Gold: 6 Armor -> 7 Armor
  - Iron: 7 Armor -> 9 Armor
  - Diamond: 10 Armor, 4 Toughness -> 11 Armor, 2 Toughness
  - Netherite: 10 Armor, 6 Toughness, 20% Knockback Resistance -> 19 Armor, 3 Toughness, 10% Knockback Resistance

- Refactored components in recipes
  - Switch from `custom_name` to `item_name`
  - Use `minecraft:armor.body` attributes ID instead of `minecraft:armor` (minimal change as the happy ghast doesn't have an armor field anyway...)
  - No longer uses the `tooltip_display` component to hide attributes modifier

- Updated `pack.png` and project icon to reflect the optional resourcepack

### Fixed

- The `Unlocks all recipes` advancement no longer shows up in the advancment screen



## [1.1.1] - 2025-12-12

### Added

- 1.21.11 support



## [1.1.0] - 2025-12-07

### Added

- Color transmute recipes*

### Changed

- Enchant power is now 2x instead of 1.5x
- Renamed tier to material type

### Fixed

- *Harness doesn't lose custom data on color change anymore



## [1.0.1] - 2025-10-27

### Fixed

- Fixed a typo for the tier 2 lime harness



## [1.0.0] - 2025-10-23

### Added

- Initial release



## [0.0.0] - YYYY-MM-DD

### Added

### Changed

### Removed

### Fixed