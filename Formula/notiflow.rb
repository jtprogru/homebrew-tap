class Notiflow < Formula
  desc "Telegram notifier for CI and the terminal"
  homepage "https://jtprogru.github.io/notiflow/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0/notiflow-aarch64-apple-darwin.tar.gz"
      sha256 "9e10e28737184d6b26b0ba09d74f232a4c197c14be95912120147b5d6a526e0d"
    end
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0/notiflow-x86_64-apple-darwin.tar.gz"
      sha256 "9c7608f80f3ce9681b63be00b2a9f73d9ed09b5b4f38e9e4cf67ad7d3a4120c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0/notiflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3757549f0337cfeb81b276837daad6bf7ba7efa8b82351c3e583d1a2ea7d3473"
    end
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.0/notiflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5821733801efa370c355adb702e78598c0f96477c59521c7b192410b16e546fe"
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
