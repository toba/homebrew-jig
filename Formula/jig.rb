class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.21.0/jig_darwin_arm64.tar.gz"
  version "2.21.0"
  sha256 "3c1692f9228adb07fdf06351a1cc6f43ba58043ab844b006c2de778bc31d2248"
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
