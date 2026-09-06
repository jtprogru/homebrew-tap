class Asphyxia < Formula
  desc "Fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"

  on_macos do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.9.1/asphyxia-x86_64-apple-darwin.zip"
      sha256 "3b0dab29d64f104ea0bf137d8248a4e27514f2feb33a6f9d90eb433f9925e830"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.9.1/asphyxia-aarch64-apple-darwin.zip"
      sha256 "af5dcbaadf8fe031857c691c7f4609c1cf8cd6834ac974fbd7a6145b00969082"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.9.1/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "7ab5bc2b02b9e339e6285433c420c8ae2819923e1e5de8ea211f5d7825e6324a"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.9.1/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "33fc94ccdd811933a7c460d5331d5c5a8d96ee000c9ab0b9f5866b62c017e702"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
