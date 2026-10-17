cask "trevbot-demo" do
  version "demo-20261016-75eb70b"
  sha256 "246ad9bf1bb239696673b1b0e945f8b5deb4dd821da9abcb64155107da871b9d"
  url "https://github.com/redharp/homebrew-trevbot/releases/download/demo-20261016-75eb70b/trevbot-demo-macos-arm64-75eb70b.zip"
  name "trev.bot Demo"
  desc "Interactive optical-drive simulation; no drive access"
  homepage "https://trev.bot"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

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
