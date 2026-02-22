class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.11.1/jig_darwin_arm64.tar.gz"
  version "2.11.1"
  sha256 "72fec628cf9cbfce1f31013b989e7be8504c1aaaa83535070fee6c9dbcacb0b4"
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
