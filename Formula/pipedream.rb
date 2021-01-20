# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pipedream < Formula
  desc "PipeDream - Maintainable script automation"
  homepage "https://layer9.berlin/"
  version "0.0.2"
  license "GPL-3.0-or-later"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.0.2/pipedream_0.0.2_darwin_amd64.tar.gz"
    sha256 "cfb3a1b48393467a177d25f86799625682d2fc09f74d89419a5028d476cdb9b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.0.2/pipedream_0.0.2_linux_amd64.tar.gz"
    sha256 "28e088999052a14311d74a371773d58bf7950c0e1908e47e71cd3f7d1cbc5a39"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.0.2/pipedream_0.0.2_linux_arm64.tar.gz"
    sha256 "9c54b5ec249db1216e5f590e4786640cdc68fb51b96d6ac79cc776a63fd56bc5"
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
