cask "trevbot-flash" do
  version "1.0.30"

  on_arm do
    sha256 "e1afb2a071549d5eb46e08dbafd6acc1647f986169625ab629c854f5e284fff5"
    url "https://api.trev.bot/v1/desktop-download/platform/bbb0a0557851e6d51cfce4f9ec5f2dda1a18e3e8/darwin-aarch64/trevbot-flash-1.0.30-arm64.dmg"
  end

  on_intel do
    sha256 "374300df568eb4ff19b0f7669a50a6c0365519ceee6d21efe48a3cf782d040d0"
    url "https://api.trev.bot/v1/desktop-download/platform/bbb0a0557851e6d51cfce4f9ec5f2dda1a18e3e8/darwin-x86_64/trevbot-flash-1.0.30-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
