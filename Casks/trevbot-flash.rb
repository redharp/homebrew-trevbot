cask "trevbot-flash" do
  version "1.0.18"

  on_arm do
    sha256 "2222c316a1edc1c6831cf9a69f0c96e8710b90ad581aa22f0c0071618ff0fceb"
    url "https://api.trev.bot/v1/desktop-download/platform/32f53c49ad09b266a54d9fcfb78307d8b5990508/darwin-aarch64/trevbot-flash-1.0.18-arm64.dmg"
  end

  on_intel do
    sha256 "a9e21f561b5f5d9e79dd906e081b4ef808efd6314f883cbca7350d3fb2a5ee67"
    url "https://api.trev.bot/v1/desktop-download/platform/32f53c49ad09b266a54d9fcfb78307d8b5990508/darwin-x86_64/trevbot-flash-1.0.18-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
