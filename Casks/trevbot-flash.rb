cask "trevbot-flash" do
  version "1.0.27"

  on_arm do
    sha256 "b23815339b20cad7c392fa8be7efc6f78c76561d3da18370f050c54c103f4c3c"
    url "https://api.trev.bot/v1/desktop-download/platform/3f6ec670cc3f6aacd26582078f8fd995f5d9ccaa/darwin-aarch64/trevbot-flash-1.0.27-arm64.dmg"
  end

  on_intel do
    sha256 "0cc0f40d0ff3d188852b6e2d28a3f00bb15da08e1c713aaf9925db3e9b2d9be6"
    url "https://api.trev.bot/v1/desktop-download/platform/3f6ec670cc3f6aacd26582078f8fd995f5d9ccaa/darwin-x86_64/trevbot-flash-1.0.27-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
