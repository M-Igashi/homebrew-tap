class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.0/flipdf-v1.0.0-macos.tar.gz"
  sha256 "81897a9a89dfc3e320b51947c2459a4ba83155ceb4d886966e0fcd50abaf573b"
  version "1.0.0"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
