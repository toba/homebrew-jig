class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.22.0/jig_darwin_arm64.tar.gz"
  version "2.22.0"
  sha256 "eca1e803c7cd08f9394ac699bf98d4542fdcb931bbefbc5d3c09d9ed3f7aca52"
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
