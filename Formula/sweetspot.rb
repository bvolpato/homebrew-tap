# typed: false
# frozen_string_literal: true

class Sweetspot < Formula
  desc "Interactive terminal dashboard to find the best Wi-Fi spot and diagnose network bottlenecks"
  homepage "https://github.com/bvolpato/sweetspot"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.1/sweetspot_0.2.1_darwin_amd64.tar.gz"
      sha256 "2b60a06bcc8788c4cd4ac80e9aa1cacf3389e54e31bdbb39f98058919b74a5bd"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.1/sweetspot_0.2.1_darwin_arm64.tar.gz"
      sha256 "88df83f59756ca6332c4352e520dcda25a7ca818cfe5dfc6c49566aab7ab76b9"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.1/sweetspot_0.2.1_linux_amd64.tar.gz"
      sha256 "b7a977e98d6ccacd70ad81e3b3856b093c12cf6b8a65d0586bfa874df8faed3a"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.1/sweetspot_0.2.1_linux_arm64.tar.gz"
      sha256 "56122e3b0fc933471d37f41fbdacc8c22178c4c99d03641f1c753630fe9027de"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  test do
    assert_match "sweetspot 0.2.1", shell_output("#{bin}/sweetspot --version")
  end
end
