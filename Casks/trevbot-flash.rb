cask "trevbot-flash" do
  version "1.0.39"

  on_arm do
    sha256 "9c1d2ceff5f0faaf818e029f1e6fc65937e2a354229cfdc0be3b62129da6dddb"
    url "https://api.trev.bot/v1/desktop-download/platform/515ab874fed4cdb21ac7c101c54c289cf1edfc4e/darwin-aarch64/trevbot-flash-1.0.39-arm64.dmg"
  end

  on_intel do
    sha256 "efae609420e405ba558f24fd677f00843dc2bf02031c780442c6cbdb7537c449"
    url "https://api.trev.bot/v1/desktop-download/platform/515ab874fed4cdb21ac7c101c54c289cf1edfc4e/darwin-x86_64/trevbot-flash-1.0.39-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
