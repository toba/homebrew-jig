class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.7.1/jig_darwin_arm64.tar.gz"
  version "2.7.1"
  sha256 "664ddf39d788e6157733a8c9538aef99923ca9cee6492f13fef2e6e95ea61aa8"
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
