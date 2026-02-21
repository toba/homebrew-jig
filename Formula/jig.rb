class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.0.0/jig_darwin_arm64.tar.gz"
  version "2.0.0"
  sha256 "a6e8ff93b17c9a2d4018f240629180ccad44e67f41d11a7c0dd32e5e36baf6cd"
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
