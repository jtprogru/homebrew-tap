class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.1/asphyxia-aarch64-apple-darwin.zip"
      sha256 "3e5f18982145fe5a5bdc7f81267cb4a6263a6dd4dfad220b34ce4eb29f53e908"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.1/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "227d06748f93efbc5a2953cb3b4f1b7dc25426b6cce44ca38f19a98c9787432e"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.1/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "b871b795972479abddfa6f9a412716fcbd1bf0364627190464ae729b0a834989"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
