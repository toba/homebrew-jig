class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.7.0/jig_darwin_arm64.tar.gz"
  version "2.7.0"
  sha256 "880fa6eb41d503a65dd87a951d99cc45a28cff454adc136d1236d4be24bf4d76"
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
