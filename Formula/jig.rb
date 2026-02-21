class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.2.0/jig_darwin_arm64.tar.gz"
  version "2.2.0"
  sha256 "e72c45cee2d677e98f5db7c0654ea7959ca85acca6e194838220bb3d94123564"
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
