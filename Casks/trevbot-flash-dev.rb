cask "trevbot-flash-dev" do
  version "0.6.0-beta.87,21d686087a460ad44d3ef8b5829e2962a4fb4615"

  on_arm do
    sha256 "a7534747a2e6312f70a27639c278cc8a98a16fd89a34a07531092c9765402b25"

    url "https://trevbot.proxius.trevorold.dev/downloads/releases/21d686087a460ad44d3ef8b5829e2962a4fb4615/trevbot-flash-dev-0.6.0-beta.87-arm64.dmg"
  end
  on_intel do
    sha256 "258cc44c5ebf6f88f7baaea7980811498d238e9bb0b4653820e48345282163a5"

    url "https://trevbot.proxius.trevorold.dev/downloads/releases/21d686087a460ad44d3ef8b5829e2962a4fb4615/trevbot-flash-dev-0.6.0-beta.87-intel.dmg"
  end

  name "trev.bot flash dev"
  desc "Optical drive desktop application for the development service"
  homepage "https://trev.bot/"

  depends_on macos: :monterey

  app "trev.bot flash dev.app"
end
