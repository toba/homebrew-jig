class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.17.0/jig_darwin_arm64.tar.gz"
  version "2.17.0"
  sha256 "48a46265fc824cead9b4eeb24b9c8b336caf0dd0714456666f3b1e4fceb16bec"
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
