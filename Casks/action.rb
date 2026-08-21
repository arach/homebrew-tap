cask "action" do
  version "0.2.0"
  sha256 "1a6de7eb208d70919815f9878114b0e9264dc7e50e6f616a834645ebd7aa1b69"

  url "https://github.com/arach/action/releases/download/v#{version}/Action-#{version}.dmg",
      verified: "github.com/arach/action/"
  name "Action"
  desc "Automation runtime that records what agents do on screen"
  homepage "https://github.com/arach/action"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Action.app"

  # Sessions, scenarios and themes live here, so this is deliberately left to
  # `brew uninstall --zap` rather than removed on a plain uninstall.
  zap trash: [
    "~/Library/Application Support/Action",
    "~/Library/Preferences/dev.action.Action.plist",
    "~/Library/Saved Application State/dev.action.Action.savedState",
  ]
end
