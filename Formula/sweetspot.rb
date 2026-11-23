# typed: false
# frozen_string_literal: true

class Sweetspot < Formula
  desc "Interactive terminal dashboard to find the best Wi-Fi spot and diagnose network bottlenecks"
  homepage "https://github.com/bvolpato/sweetspot"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.0/sweetspot_0.2.0_darwin_amd64.tar.gz"
      sha256 "9827830b96106a556a59a39a58b7c2b762325b3c72c3136f38f57d1663c85b42"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.0/sweetspot_0.2.0_darwin_arm64.tar.gz"
      sha256 "5deab0da33d399e4bebe360873553c4de2ddb1368f431d01ccc51b1c75d9124f"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.0/sweetspot_0.2.0_linux_amd64.tar.gz"
      sha256 "c5e927eeadf19af31953445ba1e476a95f0ab7e4da09d9080be9db37bbe0e6d8"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.0/sweetspot_0.2.0_linux_arm64.tar.gz"
      sha256 "340dd37fdfa5bad6ad9cb260389c28d90dc1149ded0407e33b2eebb1cd60bc9d"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  test do
    assert_match "sweetspot 0.2.0", shell_output("#{bin}/sweetspot --version")
  end
end
