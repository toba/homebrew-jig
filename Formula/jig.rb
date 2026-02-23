class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.6/jig_darwin_arm64.tar.gz"
  version "2.11.6"
  sha256 "efe6cf46952ffd1fd3ebb011a23ef9bf817322c29b4683dd6bdad8df3c43a5ba"
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
