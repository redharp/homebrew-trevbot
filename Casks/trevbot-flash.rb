cask "trevbot-flash" do
  version "1.0.22"

  on_arm do
    sha256 "8755db64efedbda2b0b12133f9bb51f88e4f7f6bebeab019a00d112aae5fe1e4"
    url "https://api.trev.bot/v1/desktop-download/platform/4cd8363ae4ad80a2f9a02bdf367f11292dd4b958/darwin-aarch64/trevbot-flash-1.0.22-arm64.dmg"
  end

  on_intel do
    sha256 "170a2c72c3712c2bb563410dc262891023f2728b5985ca75e0971f2e24d4a961"
    url "https://api.trev.bot/v1/desktop-download/platform/4cd8363ae4ad80a2f9a02bdf367f11292dd4b958/darwin-x86_64/trevbot-flash-1.0.22-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
