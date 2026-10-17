# trev.bot interactive demo

This Apple Silicon preview shows the redesigned trev.bot desktop interface with simulated drives. It does not access real drives or process payments.

Install with Homebrew:

```sh
HOMEBREW_TREVBOT_ALLOW_UNSIGNED_TEST_BUILD=1 brew install --cask redharp/trevbot/trevbot-demo
```

Open **trev.bot Demo** from Applications. The preview is ad hoc signed and not notarized. The opt-in above lets the cask remove quarantine from this app only after checking its bundle identity and code signature; system Gatekeeper settings remain enabled.

To update an existing installation, close the demo, run `brew update`, then:

```sh
HOMEBREW_TREVBOT_ALLOW_UNSIGNED_TEST_BUILD=1 brew upgrade --cask redharp/trevbot/trevbot-demo
```

This package requires macOS 11 or later on Apple Silicon. It is separate from the production trev.bot app.
