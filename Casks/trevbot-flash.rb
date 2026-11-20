cask "trevbot-flash" do
  version "1.0.45"

  on_arm do
    sha256 "e05de3c15a0c4d6dbd47b9577227206b7544c5281f3367f93c42e313cd53fa84"
    url "https://api.trev.bot/v1/desktop-download/platform/46d8cedab44ad5c908fc90e9e7b4723dec80059b/darwin-aarch64/trevbot-flash-1.0.45-arm64.dmg"
  end

  on_intel do
    sha256 "bccc572e6b9bac3a6ebb527ae2ffbfab175b49132ae63f18ce16babfb0e99428"
    url "https://api.trev.bot/v1/desktop-download/platform/46d8cedab44ad5c908fc90e9e7b4723dec80059b/darwin-x86_64/trevbot-flash-1.0.45-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
