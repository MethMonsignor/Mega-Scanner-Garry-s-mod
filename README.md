# EmporiumRP Mega Scanner

The Mega Scanner is a modular, lore-integrated diagnostic suite for EmporiumRP. It enforces contributor safety, RP immersion, and Tribunal-grade governance through real-time error detection, cleanup utilities, and onboarding scaffolds.

## Modules

- Error HUD: Live overlay with severity-coded alerts and lore phrasing.
- Conflict Scanner: Detects hook collisions, rogue timers, and unsafe scaffolds.
- Cleanup Utility: Purges orphaned entities and memory leaks with immersive feedback.
- Onboarding Kit: Validates contributor headers, templates, and lore phrasing.
- Commands **emporium_scan_conflicts**, **emporium_cleanup**, **emporium_onboard_dev**, **emporium_reload_tool**

## Lore Integration

All alerts are phrased as Tribunal dispatches:
> "Unauthorized hook detected in sector ‘init.lua’. Verdict: quarantine pending contributor review."

## Installation

Place the `MegaScanner` folder inside your server's `addons/` directory.

## Mega Scanner: Core Functions
Error HUD Overlay
Displays live error feedback in-game

Color-coded severity (e.g. Tribunal Red for critical, Lore Yellow for warnings)

Links directly to contributor notes or onboarding guides

## Conflict Scanner
Detects overlapping hooks, rogue timers, and metatable collisions

Flags legacy code that violates contributor safety or RP immersion

Can optionally log to a lore-stamped verdict file for postmortem review

## Cleanup Utility
Identifies orphaned entities, broken references, and memory leaks

Offers one-click cleanup with lore-conscious phrasing like “Purge unauthorized remnants”

Can be configured to auto-clean on map load or admin trigger

## Contributor Onboarding Kit
Scans for missing licensing headers, malformed templates, or unsafe scaffolds

Suggests lore-integrated phrasing for tooltips, descriptions, and commit messages

Ensures every module meets EmporiumRP’s ethical and immersive standards

## Contributor Notes

- All modules are spawnless and legacy-safe.
- Licensing headers required for all contributions.
- See `onboarding.lua` for phrasing templates and compliance checks.

## License

This project is licensed under the MIT License. See `LICENSE` for details.
