class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.13.0/jig_darwin_arm64.tar.gz"
  version "2.13.0"
  sha256 "cdb97318445ee260244e26d3759ad847bfff856a7a7ddcee2c685bf37456c414"
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
