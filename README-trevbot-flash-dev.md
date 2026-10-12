# trev.bot flash dev

Apple Silicon development-service installer, signed with Developer ID and notarized. The download is on the owner's lab network; access to that network is required.

```sh
brew tap redharp/trevbot
brew install --cask redharp/trevbot/trevbot-flash-dev
# Close the app before upgrading.
brew upgrade --cask redharp/trevbot/trevbot-flash-dev
```

Requires macOS 12 or newer. The development app has its own bundle identifier and app name. Homebrew preserves normal macOS trust checks.

Version: 0.6.0-beta.86
SHA-256: 910273dcee7586fff95ec48715cad3a28f6d4b32e6656656381e180c6328a5f4
