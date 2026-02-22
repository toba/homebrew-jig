class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.2/jig_darwin_arm64.tar.gz"
  version "2.11.2"
  sha256 "23b914c9839e4ae2b558c41b02bde598f5adccc1f5c8ea926d37746222cc18b1"
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
