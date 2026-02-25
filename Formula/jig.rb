class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.12.1/jig_darwin_arm64.tar.gz"
  version "2.12.1"
  sha256 "e7cefb5e77e43fced58203e3503c77d4ffbfb43442a63eccc47fc48751340cfa"
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
