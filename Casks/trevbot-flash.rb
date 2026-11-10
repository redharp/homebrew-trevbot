cask "trevbot-flash" do
  version "1.0.33"

  on_arm do
    sha256 "7f3a34c479ca3a0de1422de04abd94054e8bcf16b81748aa443ba74945991212"
    url "https://api.trev.bot/v1/desktop-download/platform/80f224ccd7d44bf13afaf1ad0dbcf11477eb39ff/darwin-aarch64/trevbot-flash-1.0.33-arm64.dmg"
  end

  on_intel do
    sha256 "7bee2df8e3ca1c9e2bafcf1d286bb7fef936795aad08d511fbee8226c664cb62"
    url "https://api.trev.bot/v1/desktop-download/platform/80f224ccd7d44bf13afaf1ad0dbcf11477eb39ff/darwin-x86_64/trevbot-flash-1.0.33-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
