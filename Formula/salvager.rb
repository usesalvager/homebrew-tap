class Salvager < Formula
  desc "Undo for AI agents — filesystem-level code safety net"
  homepage "https://github.com/usesalvager/salvager"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.1/salvager-v1.2.1-darwin-arm64"
      sha256 "fe4faeeb99fd31524e97a0fdf7a4ee906407f67d1f09e105c132f6c66eca6d55"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.1/salvager-v1.2.1-darwin-amd64"
      sha256 "ad9b139ec0b5b8c165a989b81f6e6b720c1c831f70e0297260ea017d3a8904a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.1/salvager-v1.2.1-linux-arm64"
      sha256 "7160e1c06aed6bcb59a0cd7abbf734e8a7fbdc74c2c38fd07217163fc242ddd3"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.1/salvager-v1.2.1-linux-amd64"
      sha256 "3dcdfc7e27d0dba6b3cfc24a0073004abe6cf982438d44e145b30e92d1279f02"
    end
  end

  def install
    bin.install Dir["salvager-*"].first => "salvager"
  end

  test do
    assert_match "salvager v#{version}", shell_output("#{bin}/salvager --version")
  end
end
