class Salvager < Formula
  desc "Undo for AI agents — filesystem-level code safety net"
  homepage "https://github.com/usesalvager/salvager"
  version "1.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.2/salvager-v1.4.2-darwin-arm64"
      sha256 "6cc687c2201c986c809d5cb70ea6344babede54bf00312e1551db9d4ce102f45"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.2/salvager-v1.4.2-darwin-amd64"
      sha256 "199967e706e0d0377eba6d73c21fc739535c6b6477c8ecb7bea45633d5326315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.2/salvager-v1.4.2-linux-arm64"
      sha256 "3f4f27cb636e8f712c9f3d5b1d9f6123e73c3d03bbab85b6d93d9a9c0b19e8f1"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.2/salvager-v1.4.2-linux-amd64"
      sha256 "bd414021af8ced45865f6a3256e4e6db8ca8ee627779db6bd314c485264a24e7"
    end
  end

  def install
    bin.install Dir["salvager-*"].first => "salvager"
  end

  test do
    assert_match "salvager v#{version}", shell_output("#{bin}/salvager --version")
  end
end
