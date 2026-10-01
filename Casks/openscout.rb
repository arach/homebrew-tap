cask "openscout" do
  version "0.2.106"
  sha256 "ca7c6c0d8587e6e50a45c337b5e59caa9c3565d57218696dd944cdcd07b36067"

  url "https://github.com/oscout/scout/releases/download/v#{version}/OpenScout-#{version}.dmg",
      verified: "github.com/oscout/scout/"
  name "Scout"
  desc "Local-first control plane for coordinating AI coding agents"
  homepage "https://openscout.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Scout.app"

  uninstall quit: [
    "app.openscout.scout",
    "app.openscout.scout.menu",
  ]

  # Scout's broker and CLI share their durable state with the app, so this
  # deliberately leaves ~/.scout, ~/.openscout, and Application Support intact.
  zap trash: [
    "~/Library/Caches/app.openscout.scout",
    "~/Library/Caches/app.openscout.scout.menu",
    "~/Library/HTTPStorages/app.openscout.scout",
    "~/Library/HTTPStorages/app.openscout.scout.menu",
    "~/Library/HTTPStorages/app.openscout.scout.menu.binarycookies",
    "~/Library/Preferences/app.openscout.scout.menu.plist",
    "~/Library/Preferences/app.openscout.scout.plist",
    "~/Library/Saved Application State/app.openscout.scout.menu.savedState",
    "~/Library/Saved Application State/app.openscout.scout.savedState",
    "~/Library/WebKit/app.openscout.scout",
  ]
end
