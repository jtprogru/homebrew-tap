class Asphyxia < Formula
  desc "Fast and efficient network scanner written in Rust"
  homepage "https://github.com/jtprogru/asphyxia"

  on_macos do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.1/asphyxia-x86_64-apple-darwin.zip"
      sha256 "07773b1ed1edc235b7a1bd62dd786357f8131f39e06e7dd963574a6f4c116b80"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.1/asphyxia-aarch64-apple-darwin.zip"
      sha256 "018ee05a5659e9f4c1d62e551af7e6f187bc411b2ece0d685fbde8004f099638"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.1/asphyxia-x86_64-unknown-linux-gnu.zip"
      sha256 "9ea79bc3bafbd2b2ab222ec007ac1d140f4dcd81b37dfec3e2920daf65aba628"
    end
    on_arm do
      url "https://github.com/jtprogru/asphyxia/releases/download/0.11.1/asphyxia-aarch64-unknown-linux-gnu.zip"
      sha256 "1876faa06ad8a0970e242548c60610e73f7d71087c86fc15dc4e0be67e1ad855"
    end
  end

  def install
    bin.install "asphyxia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asphyxia --version")
  end
end
