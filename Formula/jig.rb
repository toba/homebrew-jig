class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.16.0/jig_darwin_arm64.tar.gz"
  version "2.16.0"
  sha256 "591afbbbfeb82a6cfe55e5c054fee7c6441475817920c7025d2d5d8a1d4a14b2"
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
