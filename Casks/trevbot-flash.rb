cask "trevbot-flash" do
  version "1.0.28"

  on_arm do
    sha256 "420ac92b78f52cd910a2468eb0eafe07dbf4e38404c942c6a6fa8dfa35f8caf6"
    url "https://api.trev.bot/v1/desktop-download/platform/0d18735b22885c1d67830657edfabad91ffcad66/darwin-aarch64/trevbot-flash-1.0.28-arm64.dmg"
  end

  on_intel do
    sha256 "40aa6c46de88b7de1a784ba61b5bbcf452e5a31614f6690014cbd0f8de82378b"
    url "https://api.trev.bot/v1/desktop-download/platform/0d18735b22885c1d67830657edfabad91ffcad66/darwin-x86_64/trevbot-flash-1.0.28-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
