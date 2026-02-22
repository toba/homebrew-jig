class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.9.0/jig_darwin_arm64.tar.gz"
  version "2.9.0"
  sha256 "aca9bcd30e6346207064da5bf2e53c2ceb6e51023ea64e89ae030dfb0fd145fa"
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
