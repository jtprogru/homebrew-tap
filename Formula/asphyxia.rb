class Asphyxia < Formula
  desc "Fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"

  on_macos do
    # Апстрим не публикует сборку под x86_64-apple-darwin, только Apple Silicon.
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.9.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "0ece438d847e489745e48fa777a9c6b032bb4aa033704b2972cc54ad73713f5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.9.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "393f5a27cefe989d4327a4aa7c6864ac32dd9a90b5b0a0e97fa58f554986d935"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.9.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "14d6491ebdfe02a46ca0005481e62150766fd70e1e37c5cdd9e9e85b09c7e42c"
    end
  end

  def install
    bin.install "asphyxia"
  end
end
