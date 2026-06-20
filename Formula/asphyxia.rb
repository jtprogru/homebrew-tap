class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "6c912f50ff28aafae9f994f374786740e5855e453cc46ca3aa0fd9b213d57589"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "1fab76d9a2c565405f8f93e3468fa5f3a3c1b875f7a4da56a283d9b4b37dbffa"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.2.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "a4c95477e5a3ec7f4f28db43f2d90379b267788f88dfb012fa66020de12a3754"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
