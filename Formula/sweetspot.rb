# typed: false
# frozen_string_literal: true

class Sweetspot < Formula
  desc "Interactive terminal dashboard to find the best Wi-Fi spot and diagnose network bottlenecks"
  homepage "https://github.com/bvolpato/sweetspot"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.0/sweetspot_0.1.0_darwin_amd64.tar.gz"
      sha256 "62f06dbacbeea59aedda4739dc0072a3dacb78f7735a91c5324c0346512598a4"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.0/sweetspot_0.1.0_darwin_arm64.tar.gz"
      sha256 "be20cd923844ac40cf002c0587dcb232294a0fedf9fa4e47ab9bae123e237dcb"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.0/sweetspot_0.1.0_linux_amd64.tar.gz"
      sha256 "62844701ef7e725895468e235ab77112d87e2636db99d3af73d2980caf774cea"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.0/sweetspot_0.1.0_linux_arm64.tar.gz"
      sha256 "10359547cde880f8b0b60bcf14af9c3ca5f9f4e0d1bcdfba7b520366f078b6bd"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  test do
    assert_match "sweetspot 0.1.0", shell_output("#{bin}/sweetspot --version")
  end
end
