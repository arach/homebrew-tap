cask "lattices" do
  version "0.15.2"
  sha256 "3412ed49ccf6b53c8330fe70e6236c2fb84e9d2bc4a5f10ca347bed24da9fd44"

  url "https://github.com/lattices-dev/lattices/releases/download/v#{version}/Lattices.dmg"
  name "Lattices"
  desc "Workspace manager for windows, projects, and agents"
  homepage "https://lattices.dev/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Lattices.app"

  uninstall quit: "dev.lattices.app"
end
