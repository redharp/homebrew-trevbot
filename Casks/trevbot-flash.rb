cask "trevbot-flash" do
  version "1.0.36"

  on_arm do
    sha256 "4563afadadfa2599b63316f77d33c12e8896be230cb93d5b9df6ef94ec8b981a"
    url "https://api.trev.bot/v1/desktop-download/platform/af90bcf947477e67a3ca53df931af6dece895d4b/darwin-aarch64/trevbot-flash-1.0.36-arm64.dmg"
  end

  on_intel do
    sha256 "2464e4abadc6f573e4c80f6ace4165f57b0ed2ed4b5dd22f25af11c4631d26c8"
    url "https://api.trev.bot/v1/desktop-download/platform/af90bcf947477e67a3ca53df931af6dece895d4b/darwin-x86_64/trevbot-flash-1.0.36-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
