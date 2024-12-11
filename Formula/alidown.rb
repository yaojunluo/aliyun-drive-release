class Alidown < Formula
  desc "A Aliyun Drive Download Tool"
  homepage "https://github.com/yaojunluo/homebrew-alidown"
  version "0.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/yaojunluo/homebrew-alidown/releases/download/v0.0.1/alidown_darwin_arm64"
    sha256 "a5106958203b7242557cb9eb6e849c35a93b8aa76f130fd14a70b570e4af2c27"
  else
    url "https://github.com/yaojunluo/homebrew-alidown/releases/download/v0.0.1/alidown_darwin_amd64"
    sha256 "2f257a637858d0c52643552b3650695864eb9891bd1e31d75024afe411ccd743"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "alidown_darwin_arm64" => "alidown"
    else
      bin.install "alidown_darwin_amd64" => "alidown"
    end
  end

  test do
    system "#{bin}/alidown", "--version"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
