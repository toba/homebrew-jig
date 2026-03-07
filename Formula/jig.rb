class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.16.3/jig_darwin_arm64.tar.gz"
  version "2.16.3"
  sha256 "ff00b00e517e31d0b831f021d9c3b7944a3a86c86bc9d979fe78c9abf469dd6a"
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
