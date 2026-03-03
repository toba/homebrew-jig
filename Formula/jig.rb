class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.15.4/jig_darwin_arm64.tar.gz"
  version "2.15.4"
  sha256 "2804ac465b41cf6e79ecb61510267b92ee4e9a5ffcf2b7b99f46a9ae1582cf67"
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
