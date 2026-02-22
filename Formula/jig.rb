class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.8.0/jig_darwin_arm64.tar.gz"
  version "2.8.0"
  sha256 "a242379abf2711b1689436a8e48d2979a6632428af66b20e25f492c3a1c6e786"
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
