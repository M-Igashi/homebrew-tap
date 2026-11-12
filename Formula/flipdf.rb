class Flipdf < Formula
  desc "Merge duplex-scanned PDFs into proper page order"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.6/flipdf-v1.0.6-macos.tar.gz"
  sha256 "30cc753d136c6b2d7a017729a79b603fdc0612d387f6832aee49d0e3e3bc3caf"
  version "1.0.6"
  license "MIT"

  depends_on "qpdf"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
