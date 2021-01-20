# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pipedream < Formula
  desc "PipeDream - Maintainable script automation"
  homepage "https://layer9.berlin/"
  version "0.1.0"
  license "GPL-3.0-or-later"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.1.0/pipedream_0.1.0_darwin_amd64.tar.gz"
    sha256 "9c480e469571fede744a038afcaf320129129eb9eae6911f1913942ecb82f934"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.1.0/pipedream_0.1.0_linux_amd64.tar.gz"
    sha256 "26d052795d04b75cbdca12ccaea5377a78b27cdb0c72cd33332f857473f47cf1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.1.0/pipedream_0.1.0_linux_arm64.tar.gz"
    sha256 "e3f86660677626daae4f1d3f44c52bf61f7dbdace659e6a9aa016a5324cd143b"
  end

  def install
    bin.install "pipedream"
    include.install Dir["pipes/*"]
    system "ln -s #{include}/pipes #{bin}"
    system "#{bin}/pipedream"
  end

  test do
    system "#{bin}/pipedream --version"
  end
end
