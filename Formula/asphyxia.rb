class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.7.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "e998258d8c4e087e07017c4bebfdf92f2de42560d4c0cb2d64db1f563990b562"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.7.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "561caf7d0a91928c7522ab30f2ab506b50b9c0ff1584f84b7ab53cea3787e971"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.7.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "f4ca52cd58c9d331e2cb02435792de7147b7097dbdaf1bb6f8ff02afa6bbe52c"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
