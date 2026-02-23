class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.7/jig_darwin_arm64.tar.gz"
  version "2.11.7"
  sha256 "75b0e3bb375212498490b7177414270a821bbe62a0107868eac6b1929abfa317"
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
