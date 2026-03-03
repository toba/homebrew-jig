class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.5/jig_darwin_arm64.tar.gz"
  version "2.15.5"
  sha256 "979b0c8663ddaea3faf07f9950de712cc4903730c4afc110482b8087f2266f62"
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
