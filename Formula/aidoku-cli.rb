# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AidokuCli < Formula
  desc "Aidoku development toolkit"
  homepage "https://github.com/Aidoku/aidoku-cli"
  version "0.4.0-rc.2"
  license "0BSD"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.0-rc.2/aidoku-cli_0.4.0-rc.2_macos_x86_64.tar.gz"
      sha256 "94cd28797258ef7d49072c63799d8974a008db302cd783fa387e7640c52127a5"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.0-rc.2/aidoku-cli_0.4.0-rc.2_macos_arm64.tar.gz"
      sha256 "58b05821c7d1933c858a78336d474123b2b9152d9d0d87057c6cfd2ff6436618"

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
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.0-rc.2/aidoku-cli_0.4.0-rc.2_linux_x86_64.tar.gz"
      sha256 "cbece0cdc1880f71fbd0f72424fd8e5e37721efd0b12d5225511d6c88b98b069"

      def install
        bin.install "aidoku"
        (bash_completion/"aidoku").write `#{bin}/aidoku completion bash`
        (zsh_completion/"_aidoku").write `#{bin}/aidoku completion zsh`
        (fish_completion/"aidoku.fish").write `#{bin}/aidoku completion fish`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Aidoku/aidoku-cli/releases/download/v0.4.0-rc.2/aidoku-cli_0.4.0-rc.2_linux_arm64.tar.gz"
      sha256 "a7a4e30b571c8bed557064e2c5afc8def734ca516300ab4dfd946b71be82d872"

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
