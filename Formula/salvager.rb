class Salvager < Formula
  desc "Undo for AI agents — filesystem-level code safety net"
  homepage "https://github.com/usesalvager/salvager"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.1.0/salvager-v1.1.0-darwin-arm64"
      sha256 "71d432eb1ae3ad8e1b77dc212a9551fbfc98683bc2a509565307dbe5dc1d530f"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.1.0/salvager-v1.1.0-darwin-amd64"
      sha256 "9e580c81b436581c6102d21992faa8f2481a15dbca05b1f77ef70c525e9a12e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.1.0/salvager-v1.1.0-linux-arm64"
      sha256 "1d9b19f4b5e7f9158aed4d416262ac8f16c0088ca87e5636aa1cd385824cdcf7"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.1.0/salvager-v1.1.0-linux-amd64"
      sha256 "45a104412d42f3797e14921b5a25f59638daa7673586a56bb923f5cb5e167a8d"
    end
  end

  def install
    bin.install Dir["salvager-*"].first => "salvager"
  end

  test do
    assert_match "salvager v#{version}", shell_output("#{bin}/salvager --version")
  end
end
