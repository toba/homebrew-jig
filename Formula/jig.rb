class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.6/jig_darwin_arm64.tar.gz"
  version "2.15.6"
  sha256 "a727740d2662e5b944347b9a63ba6b74544513f2ceeacf62b41fecd7205ae48a"
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
