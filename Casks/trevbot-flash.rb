cask "trevbot-flash" do
  version "1.0.46"

  on_arm do
    sha256 "fae19c4fcc9cea1365a4db1b54a84f34a69fe1dcaf702bdcceb4fba1e8a52b82"
    url "https://api.trev.bot/v1/desktop-download/platform/21ea36aa1cf13b6effcc9ab330b0c488f96c08aa/darwin-aarch64/trevbot-flash-1.0.46-arm64.dmg"
  end

  on_intel do
    sha256 "26fddc7d3c600f78020fa8c362f185e78e9d42bbfc6d2f2b89c9d3b07022ab69"
    url "https://api.trev.bot/v1/desktop-download/platform/21ea36aa1cf13b6effcc9ab330b0c488f96c08aa/darwin-x86_64/trevbot-flash-1.0.46-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
