class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.8/jig_darwin_arm64.tar.gz"
  version "2.11.8"
  sha256 "9e1a45f33b956a8128ee13a001084cf06b5144ee2fb16c7f1095dc02264f925f"
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
