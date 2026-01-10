class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.0.0/headroom-v1.0.0-macos-universal.tar.gz"
  sha256 "c9df093c5c9f99e64b9e949b0ace37017e1472802062b798cbfee22555cd90b2"
  version "1.0.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom 2>&1", 1)
  end
end
