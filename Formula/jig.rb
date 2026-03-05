class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.8/jig_darwin_arm64.tar.gz"
  version "2.15.8"
  sha256 "ab48fefed6ea0c00e29c229cb17d45bae5aaa57d3325642a342b0be140aab510"
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
