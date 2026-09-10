class Asphyxia < Formula
  desc "Fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"

  on_macos do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.10.0/asphyxia-x86_64-apple-darwin.zip"
      sha256 "ad27a8d140e04e5938a476a5e1799f4d069f20cf45384bbbb545a05d0ce54630"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.10.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "b07378a082b28b060283fb99bcffa62d73617b9dcf2b6b7afdc880934a49f729"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.10.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "133d87b887286a9c0e82d528cdbd4a5de04da60d07bce52a1cb9d1b9c7a780ed"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.10.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "6a52035c2dfe0f0110e46160a0fa8361806cc15935e3fd4396e22f9e59b256de"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
