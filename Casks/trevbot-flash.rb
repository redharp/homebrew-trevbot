cask "trevbot-flash" do
  version "1.0.34"

  on_arm do
    sha256 "ef7ddb9ab7707efdaf536fde98d40cf259e2ffffe39825742022015af336c6e1"
    url "https://api.trev.bot/v1/desktop-download/platform/852b83271e0c5f8732ea8cd3bc6f7002be3df72f/darwin-aarch64/trevbot-flash-1.0.34-arm64.dmg"
  end

  on_intel do
    sha256 "7dd027a080cef927cd44fa3aef6f145bb32ff1cd375f131893f1dff5299597b6"
    url "https://api.trev.bot/v1/desktop-download/platform/852b83271e0c5f8732ea8cd3bc6f7002be3df72f/darwin-x86_64/trevbot-flash-1.0.34-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
