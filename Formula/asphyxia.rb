class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.6.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "e4d3e1701759c7611b42b82456acf1179d39bb5efe1d8cf71b4c505c99635a69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.6.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "4e55f40975bc0fd796e34a8126282c9d2dbda42f6b1a132226f20df2ade6672b"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.6.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "9145b88ef78cb9836a83c1da831913e16ce1ad5b57e3e1d708839425a420c96f"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
