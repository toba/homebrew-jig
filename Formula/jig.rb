class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.4/jig_darwin_arm64.tar.gz"
  version "2.11.4"
  sha256 "090b04399faa1444343d859bc43b74bf5dbae965b676cd9418304b8c14ea84f6"
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
