cask "trevbot-flash" do
  version "1.0.19"

  on_arm do
    sha256 "a08dc9e636032252e78f8e47b218729789a988b1dbd21ce0151c8e76f0c188b3"
    url "https://api.trev.bot/v1/desktop-download/platform/4fee6d9247244892ccbc95b00595fb0855e27ac0/darwin-aarch64/trevbot-flash-1.0.19-arm64.dmg"
  end

  on_intel do
    sha256 "8089ea82676e5fa2376f87a41c823f4fecd8897788e01f0750cb715516e8f4de"
    url "https://api.trev.bot/v1/desktop-download/platform/4fee6d9247244892ccbc95b00595fb0855e27ac0/darwin-x86_64/trevbot-flash-1.0.19-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
