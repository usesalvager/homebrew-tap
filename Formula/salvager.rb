class Salvager < Formula
  desc "Undo for AI agents — filesystem-level code safety net"
  homepage "https://github.com/usesalvager/salvager"
  version "1.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.1/salvager-v1.4.1-darwin-arm64"
      sha256 "e4e2d98fff8fade15b956312d78b25787fbe22294bcf463289dc2e3f694bb6a5"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.1/salvager-v1.4.1-darwin-amd64"
      sha256 "ecf0d1367f43313699cb7ae9be2fff6a3af1c6d2e0e1ec9e3cfadf9c191eab9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.1/salvager-v1.4.1-linux-arm64"
      sha256 "b091a1c7e23051f73c7371f2cdf8d4b6c535526af9609485ac212fa5de26c6fc"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.1/salvager-v1.4.1-linux-amd64"
      sha256 "5abb7f61bfe86dc30f3bf31e79a3c02b7792686118a48a33f71ffe42fcc97e12"
    end
  end

  def install
    bin.install Dir["salvager-*"].first => "salvager"
  end

  test do
    assert_match "salvager v#{version}", shell_output("#{bin}/salvager --version")
  end
end
