class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.3/jig_darwin_arm64.tar.gz"
  version "2.11.3"
  sha256 "c3393b17705494640b3a37d480e815e9528d9fe79e03ea2eecea10eafbda5c8e"
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
