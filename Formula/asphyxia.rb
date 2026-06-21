class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.5.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "1003a80001d4412140d27c15533b5d9d5685ba3844491afe498ae5126460e662"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.5.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "b333af5973480427d0bc0bff78f88d3cf4ecbe50cd43d6c0666b41c81bc8c87a"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.5.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "a54b44bb29d5c97ae90ddec22dadc085ef7d38202125bdae708785229039d661"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
