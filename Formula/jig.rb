class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.3/jig_darwin_arm64.tar.gz"
  version "2.15.3"
  sha256 "381e347bd9d74826f02b3ae4cc30dedf990904b0510a2376fbe3e7df2be94858"
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
