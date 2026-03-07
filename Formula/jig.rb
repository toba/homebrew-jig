class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.10/jig_darwin_arm64.tar.gz"
  version "2.15.10"
  sha256 "e83c25e24e9477866da5ca1058473b5912c7389f5e0bc24bdbb113f43dc211f3"
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
