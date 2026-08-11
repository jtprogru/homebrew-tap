class Notiflow < Formula
  desc "Telegram notifier for CI and the terminal"
  homepage "https://jtprogru.github.io/notiflow/"
  version "2.0.0-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0-rc.1/notiflow-aarch64-apple-darwin.tar.gz"
      sha256 "61f55586aa68e74724dba2f226e328b1621b646f5f7d58a0a0e2ed35d4b38db3"
    end
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0-rc.1/notiflow-x86_64-apple-darwin.tar.gz"
      sha256 "0a2a2e61ab302c4b475fc93e42bea0146aca10a758989dde17fea43bbf7d8acf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0-rc.1/notiflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d578f6cb225d88338270ff2ed9f00b408ea8843d97ede9d15c6ca4de576c926e"
    end
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0-rc.1/notiflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7f5850b3fd73a78a6ab9c661827f7fba00090b19127c102098cec32676d4f0e"
    end
  end

  def install
    bin.install "notiflow"
    generate_completions_from_executable(bin/"notiflow", "completions")
  end

  test do
    assert_match "ok success", shell_output("#{bin}/notiflow render --template 'ok {{.Status}}'")
  end
end
