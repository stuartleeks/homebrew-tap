# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devcontainer < Formula
  desc "CLI for working with Visual Studio Code devcontainers"
  homepage "https://github.com/stuartleeks/devcontainer-cli"
  version "0.1.901789955"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.901789955/devcontainer-cli_darwin_amd64.tar.gz"
    sha256 "a9962d02da996421e04ebdb3e52cd3ce80dac5b63b472e6277e3523e37c2787d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.901789955/devcontainer-cli_linux_amd64.tar.gz"
    sha256 "50dd78329fef4f4d570535f1f4f1db4ac8ca8ab2fbf9a45e4a415b72190f48bd"
  end

  def install
    bin.install "devcontainer"
  end

  test do
    system "#{bin}/devcontainer --version"
  end
end
