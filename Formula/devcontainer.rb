# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devcontainer < Formula
  desc "CLI for working with Visual Studio Code devcontainers"
  homepage "https://github.com/stuartleeks/devcontainer-cli"
  version "0.1.868183587"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.868183587/devcontainer-cli_darwin_amd64.tar.gz"
    sha256 "4962da85ea52024c82ec49078c71d3eb67d3990450e7abda5768c43ce9657912"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.868183587/devcontainer-cli_linux_amd64.tar.gz"
    sha256 "4c4a4d001b6518577eb82c087b82d0a0e5442a43ee2e07a54a6147ebe2da0cf7"
  end

  def install
    bin.install "devcontainer"
  end

  test do
    system "#{bin}/devcontainer --version"
  end
end
