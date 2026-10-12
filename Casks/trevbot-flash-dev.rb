cask "trevbot-flash-dev" do
  version "0.6.0-beta.88,2d0fc534b24d6e6169b4d868f0ddb9fad2f76aa1"

  on_arm do
    sha256 "be621f77e9595d24f01afeb928f7b0841b2a9499c6f596a751f3c842909aa2c7"

    url "https://trevbot.proxius.trevorold.dev/downloads/releases/2d0fc534b24d6e6169b4d868f0ddb9fad2f76aa1/trevbot-flash-dev-0.6.0-beta.88-arm64.dmg"
  end
  on_intel do
    sha256 "b581489c7f5f28284a0fd410a15a5e2ac954536e6f3d93217e9a95fca0befa8f"

    url "https://trevbot.proxius.trevorold.dev/downloads/releases/2d0fc534b24d6e6169b4d868f0ddb9fad2f76aa1/trevbot-flash-dev-0.6.0-beta.88-intel.dmg"
  end

  name "trev.bot flash dev"
  desc "Optical drive desktop application for the development service"
  homepage "https://trev.bot/"

  depends_on macos: :monterey

  app "trev.bot flash dev.app"
end
