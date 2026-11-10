cask "trevbot-flash" do
  version "1.0.31"

  on_arm do
    sha256 "82f39342bf166b44f0af186c28fe30aaa1ea8dd1052f7cd8e2321b3856b92410"
    url "https://api.trev.bot/v1/desktop-download/platform/5d63285f125f73b04968c1ba0fe7c36cea51027a/darwin-aarch64/trevbot-flash-1.0.31-arm64.dmg"
  end

  on_intel do
    sha256 "9640f9d78cba0f86c1ffccc12ef7c65666b2472c24ba618ca7505f918759a1ae"
    url "https://api.trev.bot/v1/desktop-download/platform/5d63285f125f73b04968c1ba0fe7c36cea51027a/darwin-x86_64/trevbot-flash-1.0.31-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
