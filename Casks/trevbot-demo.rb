cask "trevbot-demo" do
  version "demo-20261010-bbb5b24"
  sha256 "a1fe5aa029d8af9e61b1942bac226f1f089360283c5d6be331d9ac7551fe8926"

  url "https://github.com/redharp/homebrew-trevbot/releases/download/demo-20261010-bbb5b24/trevbot-demo-macos-arm64-bbb5b24.zip"
  name "trev.bot Demo"
  desc "Simulated LG and Pioneer flashing demo; no drive access"
  homepage "https://trev.bot"

  depends_on arch: :arm64

  app "trev.bot Demo.app"

  # Structured steps keep consent at execution time, including JSON API installs.
  # Homebrew 7 launches with env -i: only HOMEBREW_* and its fixed allowlist survive.
  # An unprefixed opt-in installed the app but silently skipped this postflight.
  # Pass the app as an argument: configured appdir paths never become shell code.
  postflight_steps do
    run "/bin/sh", must_succeed: true,
        args: ["-c", <<~'SH', "trevbot-postflight", "{{appdir}}/trev.bot Demo.app"]
      set -eu
      [ "${HOMEBREW_TREVBOT_ALLOW_UNSIGNED_TEST_BUILD:-}" = "1" ] || exit 0
      installed_app=$1
      if [ ! -d "$installed_app" ] || [ -L "$installed_app" ]; then
        echo "Unexpected trev.bot test app destination" >&2
        exit 1
      fi
      identifier=$(/usr/libexec/PlistBuddy -c "Print :CFBundleIdentifier" "$installed_app/Contents/Info.plist")
      if [ "$identifier" != "bot.trev.flash.demo" ]; then
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
