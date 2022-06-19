# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AidokuCli < Formula
  desc "Aidoku development toolkit"
  homepage "https://github.com/Aidoku/aidoku-cli"
  version "0.4.7"
  license "0BSD"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.7/aidoku-cli_0.4.7_macos_arm64.tar.gz"
      sha256 "9e0f2546a4582daab036982b2906f2381c57a8c2991bf7cc978c28d16ec34096"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.7/aidoku-cli_0.4.7_macos_x86_64.tar.gz"
      sha256 "2d74804ae8f5910a1bac2522c48c40a05184848b584bc2801c3f263e63e54fa8"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.7/aidoku-cli_0.4.7_linux_x86_64.tar.gz"
      sha256 "ce1090aa33a59b916397e310b82779fcfa0197d733fc601b367d0f933e66e680"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.7/aidoku-cli_0.4.7_linux_arm64.tar.gz"
      sha256 "2bde18fb87c08ab98dc11aef69f7d18edf4e928179a0f3c162c07406bbbb27fa"

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
