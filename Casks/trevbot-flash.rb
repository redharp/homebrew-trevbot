cask "trevbot-flash" do
  version "1.0.40"

  on_arm do
    sha256 "6323aced036139d6004b8ee266251e749b1e797a30e03cfa3e6cadd4b72ad12e"
    url "https://api.trev.bot/v1/desktop-download/platform/937920d411c399b268d17cb4de1885a80196fec6/darwin-aarch64/trevbot-flash-1.0.40-arm64.dmg"
  end

  on_intel do
    sha256 "0f923144440572b18d694cc25457e2d60031290ed1af6b05162f178a2c2ace5e"
    url "https://api.trev.bot/v1/desktop-download/platform/937920d411c399b268d17cb4de1885a80196fec6/darwin-x86_64/trevbot-flash-1.0.40-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
