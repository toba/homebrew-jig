class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.14.1/jig_darwin_arm64.tar.gz"
  version "2.14.1"
  sha256 "e764c4ad3f895dd03c7e878daef2ef016cb8a673782cde358411832fe9dce1cb"
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
