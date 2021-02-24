# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pipedream < Formula
  desc "PipeDream - Maintainable script automation"
  homepage "https://layer9.berlin/"
  version "0.33.1"
  license "GPL-3.0-or-later"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.33.1/brew_pipedream_0.33.1_darwin_amd64.tar.gz"
    sha256 "f177d6f5a8df538f1f40a09d9b0fff24469834cbeac47636a47aab46f5af145c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.33.1/brew_pipedream_0.33.1_linux_amd64.tar.gz"
    sha256 "52783e453352f95de2eafb42da8ad97303eec716a9fae3766d30ddb3cb5b9c2f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.33.1/brew_pipedream_0.33.1_linux_arm64.tar.gz"
    sha256 "7771832a1a6b8e9cb011794ef2c6dc15d73ea29891897ccb31ee2c56bb27a74e"
  end

  def install
    bin.install "pipedream"
    include.install Dir["include/*"]
    ln_s("#{include}/pipedream_pipes", "#{bin}", force: true)
    system "#{bin}/pipedream"
    ln_s("#{bin}/pipedream", "#{bin}/p", force: true)
  end

  test do
    system "#{bin}/pipedream --version"
  end
end
