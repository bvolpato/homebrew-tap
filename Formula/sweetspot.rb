# typed: false
# frozen_string_literal: true

class Sweetspot < Formula
  desc "Interactive terminal dashboard to find the best Wi-Fi spot and diagnose network bottlenecks"
  homepage "https://github.com/bvolpato/sweetspot"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.2/sweetspot_0.1.2_darwin_amd64.tar.gz"
      sha256 "d1bf8805685600197416cc9df8b125f3c84ec0b69250bf5505246f9e48d5030d"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.2/sweetspot_0.1.2_darwin_arm64.tar.gz"
      sha256 "dcb0e1ab6eaa56eac5b6baa4f39ac456e1f4f8d87d233d814a2d7c48f09eea46"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.2/sweetspot_0.1.2_linux_amd64.tar.gz"
      sha256 "8c772c3025ce0369da75b3733ec5d1aff722c8eb64c67e07fcb2ce5eb63a5276"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.2/sweetspot_0.1.2_linux_arm64.tar.gz"
      sha256 "7d1a5a0042ca2e28711c3f7a746138956ee234bb715659d2fe9d22e89353a528"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  test do
    assert_match "sweetspot 0.1.2", shell_output("#{bin}/sweetspot --version")
  end
end
