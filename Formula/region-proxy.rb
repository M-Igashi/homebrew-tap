class RegionProxy < Formula
  desc "CLI tool to create a SOCKS proxy through AWS EC2 in any region"
  homepage "https://github.com/M-Igashi/region-proxy"
  version "1.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/M-Igashi/region-proxy/releases/download/v#{version}/region-proxy-v#{version}-macos.tar.gz"
    sha256 "3b6654bb8818105842bf4934b50d8aee268d18ccf1e44479c0b40567224cc623"
  end

  def install
    bin.install "region-proxy"
  end

  def caveats
    <<~EOS
      region-proxy requires AWS credentials to be configured.
      
      Configure your AWS credentials:
        aws configure
      
      Or set environment variables:
        export AWS_ACCESS_KEY_ID=your_access_key
        export AWS_SECRET_ACCESS_KEY=your_secret_key
      
      For more information, see:
        https://github.com/M-Igashi/region-proxy#aws-setup
    EOS
  end

  test do
    assert_match "region-proxy", shell_output("#{bin}/region-proxy --help")
  end
end
