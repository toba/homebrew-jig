class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.5/jig_darwin_arm64.tar.gz"
  version "2.11.5"
  sha256 "2908170f969a3a87ef114473b2a0bf809f0cd19bbfc5f904750c5c6f37516f25"
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
