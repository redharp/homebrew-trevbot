cask "trevbot-flash" do
  version "1.0.41"

  on_arm do
    sha256 "01fbc02bc6d8f1241a8e0d4be9ce7054bb48cb3b62d105272d44fb4901cca317"
    url "https://api.trev.bot/v1/desktop-download/platform/a5f0146c4e0057489a16ae422a493a1d58130d77/darwin-aarch64/trevbot-flash-1.0.41-arm64.dmg"
  end

  on_intel do
    sha256 "c5f6e389c0b9298e9f33ef24a0c5f50351eefe2abfdcb84428bd243c174b73d3"
    url "https://api.trev.bot/v1/desktop-download/platform/a5f0146c4e0057489a16ae422a493a1d58130d77/darwin-x86_64/trevbot-flash-1.0.41-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
