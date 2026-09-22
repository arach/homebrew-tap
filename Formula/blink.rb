class Blink < Formula
  desc "Command-line interface for Blink spatial notes"
  homepage "https://blink.arach.dev/"
  url "https://github.com/arach/blink/releases/download/v2.1.0/blink-macos-arm64"
  sha256 "c654b327957c552ea34b76c429de8432b98feb48198fa39979fab15fc469e3a6"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    chmod 0755, "blink-macos-arm64"
    bin.install "blink-macos-arm64" => "blink"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blink --version")
  end
end
