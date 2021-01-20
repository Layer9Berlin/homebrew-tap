# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pipedream < Formula
  desc "PipeDream - Maintainable script automation"
  homepage "https://layer9.berlin/"
  version "0.0.3"
  license "GPL-3.0-or-later"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/0.0.3/pipedream_0.0.3_Darwin_x86_64.tar.gz"
    sha256 "a94aa3811bdf403b99213ec409c113d906ae922d0c73130acd59bd7f74530661"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/0.0.3/pipedream_0.0.3_Linux_x86_64.tar.gz"
    sha256 "a1988c1fbc2320fe41b2e00417bda7786e383ca67d150b9e1ec0447257cddac5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Layer9Berlin/PipeDream/releases/download/0.0.3/pipedream_0.0.3_Linux_arm64.tar.gz"
    sha256 "61eac4fcbf2778c86f48866bd2089dba9857a12604f4f5d7af60ced995615389"
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
