cask "trevbot-flash" do
  version "1.0.37"

  on_arm do
    sha256 "a37e94f4b012a829a529b2ad005e0dc2808407ee611c20fa2f456cb5177baf3c"
    url "https://api.trev.bot/v1/desktop-download/platform/9ed79b7553270fa73fec8ae9d8b40cefd8c0a8dc/darwin-aarch64/trevbot-flash-1.0.37-arm64.dmg"
  end

  on_intel do
    sha256 "9fc82bfda4a7acc603f3ccbc79bcba3bb6b0a3819e9b81c614be79de6fc7afde"
    url "https://api.trev.bot/v1/desktop-download/platform/9ed79b7553270fa73fec8ae9d8b40cefd8c0a8dc/darwin-x86_64/trevbot-flash-1.0.37-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
