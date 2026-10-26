cask "trevbot-flash" do
  version "1.0.17"

  on_arm do
    sha256 "04fbd1df84e2ba17239ed02b4f2a7947afd11c94f9db9d16519926ced3747360"
    url "https://api.trev.bot/v1/desktop-download/platform/2c06fa9acab20df6c28c1e1679e921f984ab5329/darwin-aarch64/trevbot-flash-1.0.17-arm64.dmg"
  end

  on_intel do
    sha256 "1bb1070a54b3d94e0d2e1da53c1286281a480edb6167ca26a710c21dda486792"
    url "https://api.trev.bot/v1/desktop-download/platform/2c06fa9acab20df6c28c1e1679e921f984ab5329/darwin-x86_64/trevbot-flash-1.0.17-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
