class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.6.0/jig_darwin_arm64.tar.gz"
  version "2.6.0"
  sha256 "f721b0ccb17dfdb1cbfaa5f04fa247a8477124e7b455ca5b9bd1e2e033588617"
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
