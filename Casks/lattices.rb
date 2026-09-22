cask "lattices" do
  version "0.12.0"
  sha256 "5ef8cd8c47095bd59d82346574addaca5e0990fdb7a0bcd3946af8d82bd64966"

  url "https://github.com/arach/lattices/releases/download/v#{version}/Lattices.dmg"
  name "Lattices"
  desc "Workspace manager for windows, projects, and agents"
  homepage "https://lattices.dev/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Lattices.app"

  uninstall quit: "dev.lattices.app"
end
