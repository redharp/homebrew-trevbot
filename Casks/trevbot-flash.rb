cask "trevbot-flash" do
  version "1.0.21"

  on_arm do
    sha256 "1bb8c635c26a23bb0c3fc6b56a3ecf55e976471c376c4a177d0dce2e66e94aa3"
    url "https://api.trev.bot/v1/desktop-download/platform/d83f8cf2496532c50d133d6704535cc0ebd1fc1d/darwin-aarch64/trevbot-flash-1.0.21-arm64.dmg"
  end

  on_intel do
    sha256 "44811eb5b621d01c6abdc33a4fb57f84e11c5758778de0b5da281fab70a4351b"
    url "https://api.trev.bot/v1/desktop-download/platform/d83f8cf2496532c50d133d6704535cc0ebd1fc1d/darwin-x86_64/trevbot-flash-1.0.21-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
