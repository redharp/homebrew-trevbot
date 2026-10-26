cask "trevbot-flash" do
  version "1.0.16"

  on_arm do
    sha256 "03869d334aa7a42a6561656fee2091fa57d261468d109927ce193b1e9e916b70"
    url "https://api.trev.bot/v1/desktop-download/platform/d7a538dab6071381956b3ea70ea279a442b1ed21/darwin-aarch64/trevbot-flash-1.0.16-arm64.dmg"
  end

  on_intel do
    sha256 "e7003ce57b4169411ef3bb6bcdd2d465f45192cc396688cb66028f1aa07e6a4e"
    url "https://api.trev.bot/v1/desktop-download/platform/d7a538dab6071381956b3ea70ea279a442b1ed21/darwin-x86_64/trevbot-flash-1.0.16-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
