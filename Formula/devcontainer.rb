# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devcontainer < Formula
  desc "CLI for working with Visual Studio Code devcontainers"
  homepage "https://github.com/stuartleeks/devcontainer-cli"
  version "0.1.2493445248"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.2493445248/devcontainer-cli_darwin_amd64.tar.gz"
      sha256 "afa393befef530ced16dd49bee127e270793ad51077480ec9a25c56228729ea4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.2493445248/devcontainer-cli_linux_amd64.tar.gz"
      sha256 "f2ec8caf0897bc4955c95d818ffbfeb79335ffc2ff904dde7fc0d2272190b80e"
    end
  end

  def install
    bin.install "devcontainer"
  end

  test do
    system "#{bin}/devcontainer --version"
  end
end
