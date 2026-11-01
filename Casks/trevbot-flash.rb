cask "trevbot-flash" do
  version "1.0.24"

  on_arm do
    sha256 "a0336f1def0e72c3275ef3bf625caee13ebe62e37650857e7adc047d4e200ca1"
    url "https://api.trev.bot/v1/desktop-download/platform/ef94bba09e0dd74cbebb475c82741d62be62dcbd/darwin-aarch64/trevbot-flash-1.0.24-arm64.dmg"
  end

  on_intel do
    sha256 "ca864a4ab0ac84992ec03ed5c49e0333c26e2252482a1ea86cf475806f1100a1"
    url "https://api.trev.bot/v1/desktop-download/platform/ef94bba09e0dd74cbebb475c82741d62be62dcbd/darwin-x86_64/trevbot-flash-1.0.24-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
