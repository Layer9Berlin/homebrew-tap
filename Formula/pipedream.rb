# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pipedream < Formula
  desc "PipeDream - Maintainable script automation"
  homepage "https://layer9.berlin/"
  version "0.33.5"
  license "GPL-3.0-or-later"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.33.5/brew_pipedream_0.33.5_darwin_amd64.tar.gz"
    sha256 "4afe9da1e2f295dda3c64f204b1a080be8350ced482b56393328dceec2c2bead"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.33.5/brew_pipedream_0.33.5_linux_amd64.tar.gz"
    sha256 "a33b725b63d875ffa29534e908990e35e8cb18b200bda645090e2abc8fd390a2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/v0.33.5/brew_pipedream_0.33.5_linux_arm64.tar.gz"
    sha256 "1355ce2ea7d371ff342f4cb34e672a27ef20c8f2813a688df659b1f4b6af20d9"
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
