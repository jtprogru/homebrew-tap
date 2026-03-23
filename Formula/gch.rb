class Gch < Formula
  desc "Go CLI Helper - a simple CLI utility for everyday tasks"
  homepage "https://github.com/jtprogru/gch"
  version "0.12.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jtprogru/gch/releases/download/0.12.3/gch_Darwin_arm64.tar.gz"
      sha256 "8879a4a0372409a96ecd9cd7baf8c02681ab58c7cacaa51b12f81074316b3611"
    else
      url "https://github.com/jtprogru/gch/releases/download/0.12.3/gch_Darwin_x86_64.tar.gz"
      sha256 "39775273edac7c3600d01091dc737bbf61714ed68bf127da03a52094e8b9a5cf"
    end
  end

  def install
    bin.install "gch"
  end

  test do
    system "#{bin}/gch", "--help"
  end
end