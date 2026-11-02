cask "trevbot-flash" do
  version "1.0.25"

  on_arm do
    sha256 "19fd8694c597f2125f3d11a09c3bf736a1567effe68f5ca528448f8fafdab632"
    url "https://api.trev.bot/v1/desktop-download/platform/502b96de168aae252fd49e69310c9fe6e2cc9115/darwin-aarch64/trevbot-flash-1.0.25-arm64.dmg"
  end

  on_intel do
    sha256 "fcbb9426d3e63e62fc2b4957fe6d233a8c78d9eed77bf21b3df12f1611476ad7"
    url "https://api.trev.bot/v1/desktop-download/platform/502b96de168aae252fd49e69310c9fe6e2cc9115/darwin-x86_64/trevbot-flash-1.0.25-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
