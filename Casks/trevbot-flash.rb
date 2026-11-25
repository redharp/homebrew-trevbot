cask "trevbot-flash" do
  version "1.1.0"

  on_arm do
    sha256 "874c3a9ca9bd0525715d06312a923486d1e18489c01c5fe3d6e89bab3f695273"
    url "https://api.trev.bot/v1/desktop-download/platform/3a089e135bd002969216905dbc2cc6cdae47082e/darwin-aarch64/trevbot-flash-1.1.0-arm64.dmg"
  end

  on_intel do
    sha256 "81c3a536f0caf8e14d3a208cbd6b582eff6c19d131c7af476a984aeec5dc76dd"
    url "https://api.trev.bot/v1/desktop-download/platform/3a089e135bd002969216905dbc2cc6cdae47082e/darwin-x86_64/trevbot-flash-1.1.0-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
