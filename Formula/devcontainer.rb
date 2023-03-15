# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devcontainer < Formula
  desc "CLI for working with Visual Studio Code devcontainers"
  homepage "https://github.com/stuartleeks/devcontainer-cli"
  version "0.1.4426706804"

  on_macos do
    url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.4426706804/devcontainer-cli_darwin_amd64.tar.gz"
    sha256 "050c56ed7d66c991290edcf6a1ebaf022f4222cf728da5c18be782eeac958ce8"

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
      url "https://github.com/stuartleeks/devcontainer-cli/releases/download/v0.1.4426706804/devcontainer-cli_linux_amd64.tar.gz"
      sha256 "2e3b6a8b412b65b8aa2704b0da2e83ce031138e686b9034fb898cf5a71c0418b"

      def install
        bin.install "devcontainer"
      end
    end
  end

  test do
    system "#{bin}/devcontainer --version"
  end
end
