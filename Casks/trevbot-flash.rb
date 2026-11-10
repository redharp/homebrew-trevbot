cask "trevbot-flash" do
  version "1.0.32"

  on_arm do
    sha256 "44df1d163284ab1c3296660e2e7e82802c048e275853f8ac9b69ae20ddfa3b01"
    url "https://api.trev.bot/v1/desktop-download/platform/1c097bcf0466e66ec78e05e00d9dc8f138922477/darwin-aarch64/trevbot-flash-1.0.32-arm64.dmg"
  end

  on_intel do
    sha256 "107eaac6fa27e1989dd5ee662a0eec6cf0b5affc1c417b2973596022b0019633"
    url "https://api.trev.bot/v1/desktop-download/platform/1c097bcf0466e66ec78e05e00d9dc8f138922477/darwin-x86_64/trevbot-flash-1.0.32-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
