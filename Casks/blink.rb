cask "blink" do
  version "2.1.0"
  sha256 "96fb2be2d59526ab9b6c0f10857719c7037f39f026620046ac935dfbbc152305"

  url "https://github.com/arach/blink/releases/download/v#{version}/Blink.dmg"
  name "Blink"
  desc "Spatial note-taking with floating panels"
  homepage "https://blink.arach.dev/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Blink.app"

  uninstall quit: "dev.arach.blink"
end
