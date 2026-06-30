class Salvager < Formula
  desc "Undo for AI agents — filesystem-level code safety net"
  homepage "https://github.com/usesalvager/salvager"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.0/salvager-v1.4.0-darwin-arm64"
      sha256 "f842acc7a4c1c82cd2ec403c53f7017663abd8284056073ce6ec1468e25bcd8b"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.0/salvager-v1.4.0-darwin-amd64"
      sha256 "cf3129bcfd68cc074d85f7bbfaf59c18088bb8ea8f4b55ad1bb90b9a3e1b70e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.0/salvager-v1.4.0-linux-arm64"
      sha256 "46d0da01468f2f419f307be50d8a478da60841747f1fd75b86ad834c21f28226"
    end
    on_intel do
      url "https://github.com/usesalvager/salvager/releases/download/v1.4.0/salvager-v1.4.0-linux-amd64"
      sha256 "c48d40dd3636c9ca6a3a5921cca6047653031d092c796a395f8bfb660833a957"
    end
  end

  def install
    bin.install Dir["salvager-*"].first => "salvager"
  end

  test do
    assert_match "salvager v#{version}", shell_output("#{bin}/salvager --version")
  end
end
