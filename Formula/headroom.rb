class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.2.1/headroom-v1.2.1-macos-universal.tar.gz"
  sha256 "6b3c495d47f7cb06117d7764d156a8127348f813df05ab9ee69f26b8849f9162"
  version "1.2.1"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "m-igashi/tap/mp3rgain"

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
