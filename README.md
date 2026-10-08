# trev.bot macOS test build

Requires an Apple Silicon Mac and [Homebrew](https://brew.sh).

```sh
TREVBOT_ALLOW_UNSIGNED_TEST_BUILD=1 brew install --cask redharp/trevbot/trevbot-flash-test
```

Open **trev.bot native test** from Applications after installation.
This test app is ad-hoc signed. It is not Apple Developer ID signed or notarized.
The explicit environment variable permits removing quarantine only from the
installed test app after checking its bundle identity and code signature.
It leaves system Gatekeeper settings enabled.

This is a test build with incomplete drive support. LG operations are free.
Pioneer flashing requires an active flash license; Pioneer surveys require survey access.
Firmware is downloaded when needed. Automatic production updates are disabled.
Updates are manual: run `brew update`, then use
`TREVBOT_ALLOW_UNSIGNED_TEST_BUILD=1 brew upgrade --cask redharp/trevbot/trevbot-flash-test`
when a new test build is published.

Uninstall with `brew uninstall --cask redharp/trevbot/trevbot-flash-test`.
Keep your existing app and saved operation records. Do not repeat a completed flash.
Send an exported support report with any issue.

Pinned test release: [rust-test-20261007-33e59dc](https://github.com/redharp/homebrew-trevbot/releases/tag/rust-test-20261007-33e59dc).
