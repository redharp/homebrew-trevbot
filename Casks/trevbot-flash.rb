cask "trevbot-flash" do
  version "1.0.35"

  on_arm do
    sha256 "065e024747b633216664996a14041d2e67a04679a7ae608db329c3e45c56294d"
    url "https://api.trev.bot/v1/desktop-download/platform/b275c0815abbdb5d2214f48b69214f3be7153c72/darwin-aarch64/trevbot-flash-1.0.35-arm64.dmg"
  end

  on_intel do
    sha256 "70e856c2bba04409e36d6c588c7405fbeae2fb36762330fdc09203104b1b9b9d"
    url "https://api.trev.bot/v1/desktop-download/platform/b275c0815abbdb5d2214f48b69214f3be7153c72/darwin-x86_64/trevbot-flash-1.0.35-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
