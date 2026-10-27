cask "trevbot-flash" do
  version "1.0.20"

  on_arm do
    sha256 "c24cd318a7c4f7de877cff6db06e0c8f656beb5b277207a3d871d89ca5246be2"
    url "https://api.trev.bot/v1/desktop-download/platform/81cca119191762d4a314e47381d7a58c5c02199a/darwin-aarch64/trevbot-flash-1.0.20-arm64.dmg"
  end

  on_intel do
    sha256 "5b7fc97ecb2fd79772c29eaa38f47d0979bcee9a26546554305c6507e7eb5c23"
    url "https://api.trev.bot/v1/desktop-download/platform/81cca119191762d4a314e47381d7a58c5c02199a/darwin-x86_64/trevbot-flash-1.0.20-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
