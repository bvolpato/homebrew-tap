# typed: false
# frozen_string_literal: true

class Sweetspot < Formula
  desc "Interactive terminal dashboard to find the best Wi-Fi spot and diagnose network bottlenecks"
  homepage "https://github.com/bvolpato/sweetspot"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.2/sweetspot_0.2.2_darwin_amd64.tar.gz"
      sha256 "32515f8b5734f0131da2788f20bd94f7dfcffcca6d67479b3560be4b86040b56"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.2/sweetspot_0.2.2_darwin_arm64.tar.gz"
      sha256 "5df0948e5367bf594887749a90840ba22444a8169977f87ca3ffc002f032ee08"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.2/sweetspot_0.2.2_linux_amd64.tar.gz"
      sha256 "e326d65ee0d27a1ae07cc2dfd64e7e6deddf6d70750c04f0cf92511a19ce9dc4"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.2.2/sweetspot_0.2.2_linux_arm64.tar.gz"
      sha256 "30a03e4952351f6bc491aa5273705d37d9df9db09a58a082569efbc7b4fa3da7"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  test do
    assert_match "sweetspot 0.2.2", shell_output("#{bin}/sweetspot --version")
  end
end
