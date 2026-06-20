class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.3.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "c54e46b6a43643e58e68b25da232bf8eff58e67460aea2bfea56631b8b83019b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.3.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "63f47bd82d65c59cc81e863399332f3b5777edc0a1aa76ff2d740aa8a5e5b377"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.3.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "abc88b6ce1ed007e471c32dbc56b6e622ad6bf88e5e98bb2c3a7cfb0be1a030b"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
