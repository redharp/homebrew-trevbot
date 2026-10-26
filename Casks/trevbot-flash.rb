cask "trevbot-flash" do
  version "1.0.17"

  on_arm do
    sha256 "3b3d9d1063dbf847b324a0baf5c00a8bb265e49059a1b62cbf14132c55cc2138"
    url "https://api.trev.bot/v1/desktop-download/platform/dcb60ce3f77d76bab60fdbadd5933055c06ee095/darwin-aarch64/trevbot-flash-1.0.17-arm64.dmg"
  end

  on_intel do
    sha256 "c5723f4dc4c09f69c9979207c3f44652be2ce192054f139c676b37b00f150111"
    url "https://api.trev.bot/v1/desktop-download/platform/dcb60ce3f77d76bab60fdbadd5933055c06ee095/darwin-x86_64/trevbot-flash-1.0.17-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
