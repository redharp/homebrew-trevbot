cask "trevbot-flash" do
  version "1.0.26"

  on_arm do
    sha256 "44a1d27ccedff0a8a9aba45da7e5814ac044231248f1bfd8013dae3d52e45983"
    url "https://api.trev.bot/v1/desktop-download/platform/0c7bda15b1315ff4554c6f1d3b5c25ece7c63022/darwin-aarch64/trevbot-flash-1.0.26-arm64.dmg"
  end

  on_intel do
    sha256 "45c47cf947dbd2572c6a33d8326d166039206a094cb19ce8e3828eabc97a62da"
    url "https://api.trev.bot/v1/desktop-download/platform/0c7bda15b1315ff4554c6f1d3b5c25ece7c63022/darwin-x86_64/trevbot-flash-1.0.26-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
