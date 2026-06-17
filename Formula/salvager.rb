class Salvager < Formula
  desc "Undo for AI agents — filesystem-level code safety net"
  homepage "https://github.com/usesalvager/salvager"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.0/salvager-v1.2.0-darwin-arm64"
      sha256 "c589362e5ff1f873f8b97e28c7da7dcc52b5eba8cfbc2447290a46a92ea1ef48"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.0/salvager-v1.2.0-darwin-amd64"
      sha256 "c8032fe54c1312d00947375e2fc0c1356c1a47d88bb1b83e92d868828fcd593b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.0/salvager-v1.2.0-linux-arm64"
      sha256 "59b2c13b99e47ef68f2b2142b90f76252a035b55d384677d7ba5e5861aaf2d33"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.2.0/salvager-v1.2.0-linux-amd64"
      sha256 "b73f94a5e7a9684650df2929b23c7c42f6e656e223093b5a5832568ae9182783"
    end
  end

  def install
    bin.install Dir["salvager-*"].first => "salvager"
  end

  test do
    assert_match "salvager v#{version}", shell_output("#{bin}/salvager --version")
  end
end
