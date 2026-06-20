class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.2/asphyxia-aarch64-apple-darwin.zip"
      sha256 "5189d49dfe0e9a5925ed6bc4d9d2e82ce26586ad478e7ae8762f4853a94011f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.2/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "13677cd24c10c9d7f9323bb6c49ee5718458dee66b4f828524a6611f30f2028b"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.2/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "cf918015ef711a2cd78107460a1e09782f7f95585d2a526702fd6466e3553a39"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
