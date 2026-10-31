cask "trevbot-flash" do
  version "1.0.23"

  on_arm do
    sha256 "cbcc04c92fdb083c07ad2bc1ea490c91ad03bf9fd70e1b7ee10b5bffa28e67bc"
    url "https://api.trev.bot/v1/desktop-download/platform/d0b88274dbc9ccd368e535bc143f8d564a8de00f/darwin-aarch64/trevbot-flash-1.0.23-arm64.dmg"
  end

  on_intel do
    sha256 "407b5aa0938858de059815d85ff4e603043d9f454b1cb4b193401ad98472e687"
    url "https://api.trev.bot/v1/desktop-download/platform/d0b88274dbc9ccd368e535bc143f8d564a8de00f/darwin-x86_64/trevbot-flash-1.0.23-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
