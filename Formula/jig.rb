class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.16.1/jig_darwin_arm64.tar.gz"
  version "2.16.1"
  sha256 "b5fa4ce5d17fc28abc0c2e2870ee3f9099c6703b707960068c052279128ea4ec"
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
