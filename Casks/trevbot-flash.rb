cask "trevbot-flash" do
  version "1.1.1"

  on_arm do
    sha256 "63dcc87a812b9ffdf39a36926ff36fafb08c4995aa226ac98d9ab2a43ee163d4"
    url "https://api.trev.bot/v1/desktop-download/platform/7380684bd13727dec953419fc54b5cc0f660310a/darwin-aarch64/trevbot-flash-1.1.1-arm64.dmg"
  end

  on_intel do
    sha256 "e8748edeefd4de794e0260797547987f468fc67567e3b0b11f37c70d469b9cdd"
    url "https://api.trev.bot/v1/desktop-download/platform/7380684bd13727dec953419fc54b5cc0f660310a/darwin-x86_64/trevbot-flash-1.1.1-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
