cask "trevbot-flash" do
  version "1.0.42"

  on_arm do
    sha256 "34fb185822c6122f77b92c428475d752b6fd2dcaa58f3e9ddfdcdfa8a42676c0"
    url "https://api.trev.bot/v1/desktop-download/platform/bc1688b38600c5e54fb9aa6845e49a20f1b9d2f4/darwin-aarch64/trevbot-flash-1.0.42-arm64.dmg"
  end

  on_intel do
    sha256 "d7e96b02a5f701252edff980883ec94a62e5658a0f5e171c010f0a0a8ff6574d"
    url "https://api.trev.bot/v1/desktop-download/platform/bc1688b38600c5e54fb9aa6845e49a20f1b9d2f4/darwin-x86_64/trevbot-flash-1.0.42-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
