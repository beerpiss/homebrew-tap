# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AidokuCli < Formula
  desc "Aidoku development toolkit"
  homepage "https://github.com/beerpiss/aidoku-cli"
  version "0.3.5"
  license "0BSD"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/beerpiss/aidoku-cli/releases/download/v0.3.5/aidoku-cli_0.3.5_macos_arm64.tar.gz"
      sha256 "028008816e6d72314ce2b70140769eb910fb693729b0df519269c80d6fb7116c"

      def install
        bin.install "aidoku"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beerpiss/aidoku-cli/releases/download/v0.3.5/aidoku-cli_0.3.5_macos_x86_64.tar.gz"
      sha256 "a050675af335cacc30dbe0469027a8b8a0d164e31a998c1e49424bcf5b113101"

      def install
        bin.install "aidoku"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beerpiss/aidoku-cli/releases/download/v0.3.5/aidoku-cli_0.3.5_linux_x86_64.tar.gz"
      sha256 "4b6e968f1f13b68ecdba5365ed055c21011459189217493f4c05bd0d0876baa5"

      def install
        bin.install "aidoku"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beerpiss/aidoku-cli/releases/download/v0.3.5/aidoku-cli_0.3.5_linux_arm64.tar.gz"
      sha256 "0a7e93f05f88a102fb9b8005fadb07f09f587195746d93348dd624d75de41544"

      def install
        bin.install "aidoku"
      end
    end
  end

  test do
    system "#{bin}/aidoku version"
  end
end
