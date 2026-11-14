cask "trevbot-flash" do
  version "1.0.38"

  on_arm do
    sha256 "30739325851b5ae3978d51026c27f616639c49c90cb4905e554061f72f148dc6"
    url "https://api.trev.bot/v1/desktop-download/platform/61e1aa37652c343e90e43123473b8d41128c6fbc/darwin-aarch64/trevbot-flash-1.0.38-arm64.dmg"
  end

  on_intel do
    sha256 "5126c142cb1418994401675148da7993d441840459ca489f4adfdac506a62307"
    url "https://api.trev.bot/v1/desktop-download/platform/61e1aa37652c343e90e43123473b8d41128c6fbc/darwin-x86_64/trevbot-flash-1.0.38-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
