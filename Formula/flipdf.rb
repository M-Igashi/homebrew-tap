class Flipdf < Formula
  desc "Merge duplex-scanned PDFs into proper page order"
  homepage "https://github.com/M-Igashi/flipdf"
  url "https://github.com/M-Igashi/flipdf/releases/download/v1.0.7/flipdf-v1.0.7-macos.tar.gz"
  sha256 "f08d7e54eda0ff691afe0047721f38d76cd0c79ffb02e28fb6b9e2952fb4babb"
  version "1.0.7"
  license "MIT"

  depends_on "qpdf"

  def install
    bin.install "flipdf"
  end

  test do
    assert_match "flipdf", shell_output("#{bin}/flipdf --help")
  end
end
