cask "trevbot-flash" do
  version "1.0.29"

  on_arm do
    sha256 "694735ed65b0d1b698e973888941e79f01357944ff2f2b15e1667da902b5fd7c"
    url "https://api.trev.bot/v1/desktop-download/platform/ca198a24aa804de8164d0ea32a632e71b19ea458/darwin-aarch64/trevbot-flash-1.0.29-arm64.dmg"
  end

  on_intel do
    sha256 "a128f309254a2d30d45a7f4f6e84a67f6155ce742c111e46203840c0f392b147"
    url "https://api.trev.bot/v1/desktop-download/platform/ca198a24aa804de8164d0ea32a632e71b19ea458/darwin-x86_64/trevbot-flash-1.0.29-intel.dmg"
  end

  name "trev.bot flash"
  desc "Optical drive desktop application"
  homepage "https://trev.bot/"

  auto_updates true
  depends_on macos: :monterey

  app "trev.bot flash.app"
end
