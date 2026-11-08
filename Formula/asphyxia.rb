class Asphyxia < Formula
  desc "Fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"

  on_macos do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.0/asphyxia-x86_64-apple-darwin.zip"
      sha256 "8d4f9903bdb0d69ea8aaea94349b7db644e92f4d1414fdf73138db328bc5cbf8"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.0/asphyxia-aarch64-apple-darwin.zip"
      sha256 "f9157aa65da6b5a3f6302d5c06f5b663b3598e07037e1ff7acec509257dfe44e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.0/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "f8238f14019d77aa9eb851cf3d8944f36a5ec0974c322744111e015e55c62f19"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.0/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "78e2f4eedd9f62577f2a2aba59f7e5f3329f88e8a1d3ee6b9724c1b591527d29"
    end
  end

  def install
    bin.install "asphyxia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asphyxia --version")
  end
end
