class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.19.0/jig_darwin_arm64.tar.gz"
  version "2.19.0"
  sha256 "3f7be3685b52257c1ab54f48872b35702db569a60739c56b6ea5de08a8d6ef28"
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
