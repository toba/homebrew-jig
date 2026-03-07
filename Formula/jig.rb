class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.16.2/jig_darwin_arm64.tar.gz"
  version "2.16.2"
  sha256 "8e50c71aeccbb224bbee869606646e417b533a7521ff9b11f69430d4da1b19df"
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
