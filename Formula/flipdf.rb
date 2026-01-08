class Flipdf < Formula
  desc "Merge duplex-scanned PDFs into proper page order"
  homepage "https://github.com/M-Igashi/flipdf"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/M-Igashi/flipdf/releases/download/v#{version}/flipdf-v#{version}-macos.tar.gz"
    sha256 "6eebeaac512254dbf215d94f65cc0d156dcabec0002490e8813cc3be1b456cf6"
  end

  depends_on "qpdf"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --version")
  end
end
