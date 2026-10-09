cask "trevbot-flash-test" do
  version "rust-test-20261008-f3c8f03"
  sha256 "7a9debf0b990ad3f12fe478ca913ebe393728ec4af6e1c81f048b6df0950200b"

  url "https://github.com/redharp/homebrew-trevbot/releases/download/rust-test-20261008-f3c8f03/trevbot-native-test-macos-arm64.zip"
  name "trev.bot native test"
  desc "Optical drive desktop test build"
  homepage "https://trev.bot"

  depends_on arch: :arm64

  app "trev.bot native test.app"

  # Third-party postflight compatibility DSL; explicit consent for this app only.
  # Homebrew 7 launches with env -i: only HOMEBREW_* and its fixed allowlist survive.
  # An unprefixed opt-in installed the app but silently skipped this postflight.
  postflight do
    if ENV["HOMEBREW_TREVBOT_ALLOW_UNSIGNED_TEST_BUILD"] == "1"
      installed_app = appdir.join("trev.bot native test.app")
      unless installed_app.directory? && !installed_app.symlink?
        raise "Unexpected trev.bot test app destination"
      end
      identifier = system_command "/usr/libexec/PlistBuddy",
                                  args: ["-c", "Print :CFBundleIdentifier", installed_app.join("Contents/Info.plist").to_s],
                                  must_succeed: true
      unless identifier.stdout.strip == "bot.trev.flash.native-test"
        raise "Unexpected trev.bot test app identity"
      end
      system_command "/usr/bin/codesign",
                     args: ["--verify", "--deep", "--strict", installed_app.to_s],
                     must_succeed: true
      attributes = system_command "/usr/bin/xattr",
                                  args: ["-r", installed_app.to_s],
                                  must_succeed: true
      quarantined = attributes.stdout.lines.any? do |line|
        attribute = line.strip
        attribute == "com.apple.quarantine" || attribute.end_with?(": com.apple.quarantine")
      end
      if quarantined
        system_command "/usr/bin/xattr",
                       args: ["-dr", "com.apple.quarantine", installed_app.to_s],
                       must_succeed: true
      end
    end
  end
end
