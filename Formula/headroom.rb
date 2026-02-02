class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.5.0/headroom-v1.5.0-macos-universal.tar.gz"
  sha256 "f2177c4a47c0f37b914b604ebb59c83fdd008f0fdcb4ea2a353ed732a4d8a0bf"
  version "1.5.0"
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
