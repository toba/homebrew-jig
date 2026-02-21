class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.1.0/jig_darwin_arm64.tar.gz"
  version "2.1.0"
  sha256 "17f055620399a708fba0cbb9194cdc89c42cbef39391952547f1aa5f3f10efe5"
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
