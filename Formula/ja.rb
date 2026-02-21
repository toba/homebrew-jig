class Ja < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/skill"
  url "https://github.com/toba/skill/releases/download/v1.2.3/ja_darwin_arm64.tar.gz"
  version "1.2.3"
  sha256 "bdda54cbd5a790ebe755279c307ec9c82cf4e06de7bd2ba8d2105ee752624ee3"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "ja"
  end

  test do
    assert_match "ja", shell_output("#{bin}/ja version")
  end
end
