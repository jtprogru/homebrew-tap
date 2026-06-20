class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.2/asphyxia-aarch64-apple-darwin.zip"
      sha256 "bc8f51b7efad55e2f90739df40af4426b1662d51773e874ac90de2eec43d8df5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.2/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "566c23f9bfc6e98088c432729ca337b9cdf0e2cdc1db0498b65b919f204830d2"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.2/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "162100c3a78a0c0bb04e1e9a60aa6c94cbac0035351d46f177a2e4dd2382a413"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
