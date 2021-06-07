# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devcontainer < Formula
  desc "CLI for working with Visual Studio Code devcontainers"
  homepage "https://github.com/stuartleeks/devcontainer-cli"
  version "0.1.913729827"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.913729827/devcontainer-cli_darwin_amd64.tar.gz"
    sha256 "f8d880a480980e0226b6e68a2d541949c075dd3b5259403bb8fa7628ad459dec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.913729827/devcontainer-cli_linux_amd64.tar.gz"
    sha256 "6907f10c02801ecbb689ff1dc2c138d63e504759ebeffd0c819e0ebd37271b63"
  end

  def install
    bin.install "devcontainer"
  end

  test do
    system "#{bin}/devcontainer --version"
  end
end
