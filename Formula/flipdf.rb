class Flipdf < Formula
  desc "CLI tool to reverse page order in PDF files"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.4/flipdf-v1.0.4-macos.tar.gz"
  sha256 "6afad45320f376a6cd580f4cd52962edf83b69aa80918175884f7927d7d23fd2"
  version "1.0.4"
  license "MIT"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
