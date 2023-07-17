# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AidokuCli < Formula
  desc "Aidoku development toolkit"
  homepage "https://github.com/Aidoku/aidoku-cli"
  version "0.4.13"
  license "0BSD"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.13/aidoku-cli_0.4.13_macos_x86_64.tar.gz"
      sha256 "3b7c15cd8ce1708b938847c688ca1a9ebb06e2af00b96f63c0619b4f421949e6"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.13/aidoku-cli_0.4.13_macos_arm64.tar.gz"
      sha256 "452b90207915f9047e214f7d26818cedf13576d94d11f8b2c75bda4119f34214"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.13/aidoku-cli_0.4.13_linux_arm64.tar.gz"
      sha256 "0028879ffc0693c7798bb9e25592e0c9b87f6ec6cbc3e16c00b99fc4a64dd22a"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.13/aidoku-cli_0.4.13_linux_x86_64.tar.gz"
      sha256 "eef03f8df7eb6a495a49e186fdbbcc09bc1230ee328c585f274be4a955ba0830"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
  end

  test do
    system "#{bin}/aidoku --version"
  end
end
