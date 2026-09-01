class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.8.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "d39b3a8b15a6c0ab14c8781ef068d761d27c87d8fcd528db7aec0863e7b3ec0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.8.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "6b0276940db163096c0f92469b91843cb831c0e21aa47d1502e0693a26504932"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.8.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "3c1e82f5bce4d8d2d5e581e598fc01ddd07fd64db4e6f262cd2883b3a3dd64df"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
