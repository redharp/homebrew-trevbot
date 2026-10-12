# trev.bot flash dev

Apple Silicon and Intel development-service installer, signed with Developer ID and notarized. The download is on the owner's lab network; access to that network is required.

```sh
brew tap redharp/trevbot
brew install --cask redharp/trevbot/trevbot-flash-dev
# Close the app before upgrading.
brew upgrade --cask redharp/trevbot/trevbot-flash-dev
```

Requires macOS 12 or newer. The development app has its own bundle identifier and app name. Homebrew preserves normal macOS trust checks.

Version: 0.6.0-beta.88
arm64 SHA-256: be621f77e9595d24f01afeb928f7b0841b2a9499c6f596a751f3c842909aa2c7
intel SHA-256: b581489c7f5f28284a0fd410a15a5e2ac954536e6f3d93217e9a95fca0befa8f
