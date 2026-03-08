class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.18.0/jig_darwin_arm64.tar.gz"
  version "2.18.0"
  sha256 "8ad385b75c66066573a8f913dd192c734443ca2969d3f34c445a4ddf7a3c7fa3"
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
