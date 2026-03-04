class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.7/jig_darwin_arm64.tar.gz"
  version "2.15.7"
  sha256 "e8877d63ad1b6383cea54f54412117e981ea30c5cea5ccf5c93df195f1b3bbfc"
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
