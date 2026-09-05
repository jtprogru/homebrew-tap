class Notiflow < Formula
  desc "Telegram notifier for CI and the terminal"
  homepage "https://jtprogru.github.io/notiflow/"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.1/notiflow-aarch64-apple-darwin.tar.gz"
      sha256 "ab29106c99fa944702eaa71d46254f096d25777d3ae7ec3c39dc4acaf5c6c776"
    end
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.1/notiflow-x86_64-apple-darwin.tar.gz"
      sha256 "2a7eb46ebe645e917c227f501cf6cdd2d65d804be7f13c0a15e36f4c32a557fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.1/notiflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "362392665a2865493ad88f0982da1027bcb6c1551287d11a56ab039f0fa930f2"
    end
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.1/notiflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "979be62b654167ff7432806734e0e03a914d8ac14abbf21d02dfd42e470ed0ef"
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
