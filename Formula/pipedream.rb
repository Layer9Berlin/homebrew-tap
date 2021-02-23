# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pipedream < Formula
  desc "PipeDream - Maintainable script automation"
  homepage "https://layer9.berlin/"
  version "0.32.36"
  license "GPL-3.0-or-later"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.32.36/brew_pipedream_0.32.36_darwin_amd64.tar.gz"
    sha256 "4c3abc4a3fffa7d5090a43838362ccd6916140ae764ab125e60f86a724070ce4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.32.36/brew_pipedream_0.32.36_linux_amd64.tar.gz"
    sha256 "b969c1e75882f397393ec85f1b1a44f00fc21cc58325e9f5a4bb6417594273eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.32.36/brew_pipedream_0.32.36_linux_arm64.tar.gz"
    sha256 "0349e706e6421f345c5996f11581ee96539fbc01ad04670974725db7ccb4843c"
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
