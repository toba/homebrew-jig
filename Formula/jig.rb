class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.20.0/jig_darwin_arm64.tar.gz"
  version "2.20.0"
  sha256 "fd6406be7bf38388754dc6e295d1b4d6ffd44c32601da4de3c19007b541eb7cc"
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
