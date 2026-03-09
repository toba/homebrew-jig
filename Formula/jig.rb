class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.21.1/jig_darwin_arm64.tar.gz"
  version "2.21.1"
  sha256 "16f354772a46cd8b3342a8e69f65f9ebb3addadb5241651116680038bb5f7383"
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
