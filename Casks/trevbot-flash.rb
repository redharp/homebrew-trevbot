cask "trevbot-flash" do
  version "1.0.44"

  on_arm do
    sha256 "52b9b4603c84f6f7f87a49d08de0cb0b24ed6a51cb8995cb937be56c41c1b9dc"
    url "https://api.trev.bot/v1/desktop-download/platform/e954d0ff78f2810116c585bcfa60f0be079440c8/darwin-aarch64/trevbot-flash-1.0.44-arm64.dmg"
  end

  on_intel do
    sha256 "6f3fbcacdeb43ce571cd7f0068d2b6596230442179719363f56685a93c184ba7"
    url "https://api.trev.bot/v1/desktop-download/platform/e954d0ff78f2810116c585bcfa60f0be079440c8/darwin-x86_64/trevbot-flash-1.0.44-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
