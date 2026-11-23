# typed: false
# frozen_string_literal: true

class Sweetspot < Formula
  desc "Interactive terminal dashboard to find the best Wi-Fi spot and diagnose network bottlenecks"
  homepage "https://github.com/bvolpato/sweetspot"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.3/sweetspot_0.1.3_darwin_amd64.tar.gz"
      sha256 "bffd903399f207d21632378ad378452d58777e1ac75b8b63ead6733abebf91e0"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.3/sweetspot_0.1.3_darwin_arm64.tar.gz"
      sha256 "726940aa093b814fae4fb68d64147c3fbe67b395e6b468cec3411f66d3a6670f"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.3/sweetspot_0.1.3_linux_amd64.tar.gz"
      sha256 "477f9cd007b5d2215803bfd3b05f6025d735b990d85131b7ba649ee1aaf10838"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvolpato/sweetspot/releases/download/v0.1.3/sweetspot_0.1.3_linux_arm64.tar.gz"
      sha256 "1d8197bd0934e34e1296c5730b2b29cf5182f4595459a1f14e9d06355a441d7e"

      define_method(:install) do
        bin.install "sweetspot"
      end
    end
  end

  test do
    assert_match "sweetspot 0.1.3", shell_output("#{bin}/sweetspot --version")
  end
end
