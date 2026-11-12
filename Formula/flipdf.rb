class Flipdf < Formula
  desc "Merge duplex-scanned PDFs into proper page order"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.5/flipdf-v1.0.5-macos.tar.gz"
  sha256 "c80310ab39524be8c76b3b508ba1921e38ee08cc77921ce4fbf0bdca58c05b33"
  version "1.0.5"
  license "MIT"

  depends_on "qpdf"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
