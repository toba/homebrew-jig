class Ja < Formula
  desc "An agent multi-tool for little things"
  homepage "https://github.com/toba/skill"
  url "https://github.com/toba/skill/releases/download/v1.2.0/skill_darwin_arm64.tar.gz"
  version "1.2.0"
  sha256 "8265f47ba994fc41f0df54bb66fce04c493012b06c23a1610571c29ee525a6a2"
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
