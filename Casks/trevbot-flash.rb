cask "trevbot-flash" do
  version "1.0.43"

  on_arm do
    sha256 "0bab9099115a2f560485029a66892b252a15f72943e9dbd4b53a0bb0bf9e9040"
    url "https://api.trev.bot/v1/desktop-download/platform/89522fa463ab1dfe6c45dc5c5822a2ff8f8c6a43/darwin-aarch64/trevbot-flash-1.0.43-arm64.dmg"
  end

  on_intel do
    sha256 "42bbf014bbdc23da44a52b2001d34d43bbd2fac6b71ef9a8734b89c9a4c323d6"
    url "https://api.trev.bot/v1/desktop-download/platform/89522fa463ab1dfe6c45dc5c5822a2ff8f8c6a43/darwin-x86_64/trevbot-flash-1.0.43-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
