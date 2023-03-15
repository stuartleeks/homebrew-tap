# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devcontainer < Formula
  desc "CLI for working with Visual Studio Code devcontainers"
  homepage "https://github.com/stuartleeks/devcontainer-cli"
  version "0.1.4426644480"

  on_macos do
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.4426644480/devcontainer-cli_darwin_amd64.tar.gz"
    sha256 "9686fd0b8556d2fc93be1364b4d652d9ab7c70f15c3e5ba53556e11716029374"

    def install
      bin.install "devcontainer"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Devcontainer
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.4426644480/devcontainer-cli_linux_amd64.tar.gz"
      sha256 "6a439cdfcaadf0bf278857f005050d639ce9488dfa503c0cf3eaf532a094ba0e"

      def install
        bin.install "devcontainer"
      end
    end
  end

  test do
    system "#{bin}/devcontainer --version"
  end
end
