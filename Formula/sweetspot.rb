# typed: false
# frozen_string_literal: true

class Sweetspot < Formula
  desc "Interactive terminal dashboard to find the best Wi-Fi spot and diagnose network bottlenecks"
  homepage "https://github.com/bvolpato/sweetspot"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.1/sweetspot_0.1.1_darwin_amd64.tar.gz"
      sha256 "8015d18a8c9a69ec8aeadd1bdfd1d55b7cb925b0cdc23028cfdb35a4467f21c9"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.1/sweetspot_0.1.1_darwin_arm64.tar.gz"
      sha256 "ca58e34ffe9d7bedb82965353465c45583a3458c0c285fee7875a7ac49ecc6dd"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.1/sweetspot_0.1.1_linux_amd64.tar.gz"
      sha256 "aca69494ade0fd5f5a0d67269dc1da156e0d9b20c6453ab97841dd5a5e99a3f1"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.1/sweetspot_0.1.1_linux_arm64.tar.gz"
      sha256 "ad92f7e1b524084113aee0e4eaefee8c90f441ad5039375ffb8d657de9c3bfc5"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  test do
    assert_match "sweetspot 0.1.1", shell_output("#{bin}/sweetspot --version")
  end
end
