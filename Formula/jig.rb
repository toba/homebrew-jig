class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.9/jig_darwin_arm64.tar.gz"
  version "2.15.9"
  sha256 "19b0b86162cd8e547a44663c545b502a14c49955f25ef4c3268de4734fc1684e"
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
