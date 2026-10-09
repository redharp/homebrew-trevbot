cask "trevbot-flash-test" do
  version "rust-test-20261008-52d2f53"
  sha256 "77ea928065929623b323813df82a309777e5dc9f9b5ab85004182e22c471711c"

  url "https://github.com/redharp/homebrew-trevbot/releases/download/rust-test-20261008-52d2f53/trevbot-native-test-macos-arm64.zip"
  name "trev.bot native test"
  desc "Optical drive desktop test build"
  homepage "https://trev.bot"

  depends_on arch: :arm64

  app "trev.bot native test.app"

  # Structured steps keep consent at execution time, including JSON API installs.
  # Homebrew 7 launches with env -i: only HOMEBREW_* and its fixed allowlist survive.
  # An unprefixed opt-in installed the app but silently skipped this postflight.
  # Pass the app as an argument: configured appdir paths never become shell code.
  postflight_steps do
    run "/bin/sh", must_succeed: true,
        args: ["-c", <<~'SH', "trevbot-postflight", "{{appdir}}/trev.bot native test.app"]
      set -eu
      [ "${HOMEBREW_TREVBOT_ALLOW_UNSIGNED_TEST_BUILD:-}" = "1" ] || exit 0
      installed_app=$1
      if [ ! -d "$installed_app" ] || [ -L "$installed_app" ]; then
        echo "Unexpected trev.bot test app destination" >&2
        exit 1
      fi
      identifier=$(/usr/libexec/PlistBuddy -c "Print :CFBundleIdentifier" "$installed_app/Contents/Info.plist")
      if [ "$identifier" != "bot.trev.flash.native-test" ]; then
        echo "Unexpected trev.bot test app identity" >&2
        exit 1
      fi
      /usr/bin/codesign --verify --deep --strict "$installed_app"
      attributes=$(/usr/bin/xattr -r "$installed_app")
      if printf '%s\n' "$attributes" | /usr/bin/grep -Eq '(^|: )com[.]apple[.]quarantine$'; then
        /usr/bin/xattr -dr com.apple.quarantine "$installed_app"
      fi
    SH
  end
end
