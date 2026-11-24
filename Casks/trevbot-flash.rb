cask "trevbot-flash" do
  version "1.0.47"

  on_arm do
    sha256 "c4f478c6d8f7681d8d6f521550bbb52538184a357eb6c49337e245222499bc6c"
    url "https://api.trev.bot/v1/desktop-download/platform/b630e1507dd6341a5d8fb3b8db2a6f3b3b7ae3a8/darwin-aarch64/trevbot-flash-1.0.47-arm64.dmg"
  end

  on_intel do
    sha256 "2dbb8f11a36265f06566a9aa9d61be5541ffda255c138253d3e4200d183a2216"
    url "https://api.trev.bot/v1/desktop-download/platform/b630e1507dd6341a5d8fb3b8db2a6f3b3b7ae3a8/darwin-x86_64/trevbot-flash-1.0.47-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
