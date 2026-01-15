class Headroom < Formula
  desc "Audio loudness analyzer and gain adjustment tool for mastering and DJ workflows"
  homepage "https://github.com/M-Igashi/headroom"
  url "https://github.com/M-Igashi/headroom/releases/download/v1.4.0/headroom-v1.4.0-macos-universal.tar.gz"
  sha256 "e074f65e16db162dddad0dec2933bfdb265a035d28cc15fa64633d066a26be99"
  version "1.4.0"
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
