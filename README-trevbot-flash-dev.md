# trev.bot flash dev

Apple Silicon and Intel development-service installer, signed with Developer ID and notarized. The download is on the owner's lab network; access to that network is required.

```sh
brew tap redharp/trevbot
brew install --cask redharp/trevbot/trevbot-flash-dev
# Close the app before upgrading.
brew upgrade --cask redharp/trevbot/trevbot-flash-dev
```

Requires macOS 12 or newer. The development app has its own bundle identifier and app name. Homebrew preserves normal macOS trust checks.

Version: 0.6.0-beta.87
arm64 SHA-256: a7534747a2e6312f70a27639c278cc8a98a16fd89a34a07531092c9765402b25
intel SHA-256: 258cc44c5ebf6f88f7baaea7980811498d238e9bb0b4653820e48345282163a5
