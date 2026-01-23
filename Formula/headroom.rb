class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.4.2/headroom-v1.4.2-macos-universal.tar.gz"
  sha256 "c3a3dac7a2457c9f2fa9494c0702f68bd7508bfe3de3fd483a4e2e08389e56c4"
  version "1.4.2"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "headroom"
  end

  def caveats
    <<~EOS
      mp3rgain is now built-in as a library dependency.
      No separate installation required for lossless MP3 gain adjustment.
    EOS
  end

  test do
    assert_match "headroom", shell_output("#{bin}/headroom --version")
  end
end
