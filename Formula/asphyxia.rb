class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.7.1/asphyxia-aarch64-apple-darwin.zip"
      sha256 "b6454a477ce7e9db50dd814eaa84be894c7e8bc9ce3c2f2dffe17648891a6428"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.7.1/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "ea569195e083d9860dff2383dc35f195bdf2225b2596c561f3ace513b389bd12"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.7.1/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "4fc52fd50ddd704536ba3a50eb9ff5ab8144d593eaf74f885f16b1260c74f7e4"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
