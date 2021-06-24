# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devcontainer < Formula
  desc "CLI for working with Visual Studio Code devcontainers"
  homepage "https://github.com/stuartleeks/devcontainer-cli"
  version "0.1.968022249"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.968022249/devcontainer-cli_darwin_amd64.tar.gz"
    sha256 "aef4ddbf4726a733eab5f3df735eeac3dfeccf1757d3b076e6ef88ef8d741af5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.968022249/devcontainer-cli_linux_amd64.tar.gz"
    sha256 "7b484fd6d4036f8297b38af0eb9b05f904763e23dfcf48b41a6ead54ab0507eb"
  end

  def install
    bin.install "devcontainer"
  end

  test do
    system "#{bin}/devcontainer --version"
  end
end
