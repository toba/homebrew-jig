class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.14.2/jig_darwin_arm64.tar.gz"
  version "2.14.2"
  sha256 "907d72388c02c278323f37c993f25ca62546c0215eba66c96a1288ab6d2cd289"
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
