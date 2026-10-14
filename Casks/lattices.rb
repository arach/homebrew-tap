cask "lattices" do
  version "0.14.0"
  sha256 "c064af221ea7a63f5da24b73d08cdc16a8ad28567e6e29e914bbfdfa020fa5c6"

  url "https://github.com/arach/lattices/releases/download/v#{version}/Lattices.dmg"
  name "Lattices"
  desc "Workspace manager for windows, projects, and agents"
  homepage "https://lattices.dev/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Lattices.app"

  uninstall quit: "dev.lattices.app"
end
