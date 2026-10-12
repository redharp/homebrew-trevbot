cask "trevbot-flash-dev" do
  version "0.6.0-beta.86"
  sha256 "910273dcee7586fff95ec48715cad3a28f6d4b32e6656656381e180c6328a5f4"

  url "https://trevbot.proxius.trevorold.dev/downloads/releases/40a7f4460ffd8e6513cd24564b840a2188e863e1/trevbot-flash-dev-0.6.0-beta.86-arm64.dmg"
  name "trev.bot flash dev"
  desc "Optical drive desktop application for the development service"
  homepage "https://trev.bot/"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "trev.bot flash dev.app"
end
