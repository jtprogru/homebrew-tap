class Asphyxia < Formula
  desc "A fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.4.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "372491d56190b5cb25e90771f2aab3608c703725352f6abcbbb83ed6c661d673"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.4.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "9ba5ef1aec12a593434bbfae33b9a82cd65bd3a17f7bd106b69f3f539bfb6b5f"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.4.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "e63978afc6b26669c25467bf207020abb5d7e08165c9b35f6a22d5bbf6eb295b"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
