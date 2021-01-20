# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pipedream < Formula
  desc "PipeDream - Maintainable script automation"
  homepage "https://layer9.berlin/"
  version "0.0.9"
  license "GPL-3.0-or-later"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/0.0.9/pipedream_0.0.9_darwin_amd64.tar.gz"
    sha256 "2cac01e6d767f1cba67c13f7762be2a787a2f82c71c86679794d611b13693433"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/0.0.9/pipedream_0.0.9_linux_amd64.tar.gz"
    sha256 "ea8e04f32500a51cc0b582371dc42380b0c890558644ddc2c1fa2b9b5488d025"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/0.0.9/pipedream_0.0.9_linux_arm64.tar.gz"
    sha256 "fccc56effc8edf42582447dae5febb713e3ddd9f2b4fb25ebfab533cfbf5f5b2"
  end

  def install
    bin.install "pipedream"
    include.install Dir["pipes/*"]
    system "#{bin}/pipedream"
  end

  test do
    system "#{bin}/pipedream --version"
  end
end
