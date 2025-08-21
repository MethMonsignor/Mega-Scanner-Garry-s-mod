# EmporiumRP Mega Scanner

The Mega Scanner is a modular, lore-integrated diagnostic suite for EmporiumRP. It enforces contributor safety, RP immersion, and Tribunal-grade governance through real-time error detection, cleanup utilities, and onboarding scaffolds.

## Modules

- Error HUD: Live overlay with severity-coded alerts and lore phrasing.
- Conflict Scanner: Detects hook collisions, rogue timers, and unsafe scaffolds.
- Cleanup Utility: Purges orphaned entities and memory leaks with immersive feedback.
- Onboarding Kit: Validates contributor headers, templates, and lore phrasing.

## Lore Integration

All alerts are phrased as Tribunal dispatches:
> "Unauthorized hook detected in sector ‘init.lua’. Verdict: quarantine pending contributor review."

## Installation

Place the `MegaScanner` folder inside your server's `addons/` directory. Ensure `config.lua` is tailored to your RP environment.

## Contributor Notes

- All modules are spawnless and legacy-safe.
- Licensing headers required for all contributions.
- See `onboarding.lua` for phrasing templates and compliance checks.

## License

This project is licensed under the MIT License. See `LICENSE` for details.
