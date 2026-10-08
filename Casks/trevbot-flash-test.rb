cask "trevbot-flash-test" do
  version "rust-test-20261007-33e59dc"
  sha256 "655ad019b33a22482fc2eef886b4fab904265df03653e5de774d397333793858"

  url "https://github.com/redharp/homebrew-trevbot/releases/download/rust-test-20261007-33e59dc/trevbot-native-test-macos-arm64.zip"
  name "trev.bot native test"
  desc "Optical drive desktop test build"
  homepage "https://trev.bot"

  depends_on arch: :arm64

  app "trev.bot native test.app"

  # Third-party postflight compatibility DSL; explicit consent for this app only.
  postflight do
    if ENV["TREVBOT_ALLOW_UNSIGNED_TEST_BUILD"] == "1"
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
