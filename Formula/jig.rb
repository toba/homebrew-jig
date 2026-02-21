class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.4.0/jig_darwin_arm64.tar.gz"
  version "2.4.0"
  sha256 "585e8ee9e45b913a18d80445b0a6e3b106acf3382954f7eb9ced0208654ed3d3"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig", shell_output("#{bin}/jig version")
  end
end
