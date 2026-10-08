class Notiflow < Formula
  desc "Telegram notifier for CI and the terminal"
  homepage "https://jtprogru.github.io/notiflow/"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.2/notiflow-aarch64-apple-darwin.tar.gz"
      sha256 "3614349531d89e975bb99d991ac785de2220cc7612f224b6eefa4ebbcff2b2d4"
    end
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.2/notiflow-x86_64-apple-darwin.tar.gz"
      sha256 "40facc5b76ec100bcd08db78f8115511e10a031e0050c393a46a24d57d5a9ce2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.2/notiflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e770f9a9d546bf29b8bb1224f2d089454659b5dd4b126a0e33b8bf0e78d9af1c"
    end
    on_arm do
      url "https://github.com/jtprogru/notiflow/releases/download/v2.0.2/notiflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4188f1f65144f493f8dfeb989abd42cffe0ab12a4c92ee3ca88c58e30076e5f7"
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
