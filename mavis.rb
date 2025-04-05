# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mavis < Formula
  desc "unconventional commit"
  homepage "https://github.com/kristofferahl/mavis"
  version "0.1.2"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kristofferahl/mavis/releases/download/v0.1.2/mavis_v0.1.2_darwin_amd64.zip"
      sha256 "b0fcb59f49a7d3dcfc64ef2b748348157af6048f933d8d406a1fcf25b31b4a16"

      def install
        bin.install 'mavis'
        output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'bash')
        (bash_completion/'mavis').write output
        output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'zsh')
        (zsh_completion/'_mavis').write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kristofferahl/mavis/releases/download/v0.1.2/mavis_v0.1.2_darwin_arm64.zip"
      sha256 "3846d67ce8f8a2145affd7a8d8bbd637a4b22d796116fbabe4ee53999babb609"

      def install
        bin.install 'mavis'
        output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'bash')
        (bash_completion/'mavis').write output
        output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'zsh')
        (zsh_completion/'_mavis').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kristofferahl/mavis/releases/download/v0.1.2/mavis_v0.1.2_linux_amd64.tar.gz"
        sha256 "e18d166f6922b7367db1fa6830acfb6550298f41096a707471b395f3c7fc4a0d"

        def install
          bin.install 'mavis'
          output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'bash')
          (bash_completion/'mavis').write output
          output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'zsh')
          (zsh_completion/'_mavis').write output
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kristofferahl/mavis/releases/download/v0.1.2/mavis_v0.1.2_linux_arm64.tar.gz"
        sha256 "ce6628f8e2825e0325873fc2fd4ad7f5fa955264bf17722bbc03e6afb7a10732"

        def install
          bin.install 'mavis'
          output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'bash')
          (bash_completion/'mavis').write output
          output = Utils.safe_popen_read("#{bin}/mavis", 'completion', 'zsh')
          (zsh_completion/'_mavis').write output
        end
      end
    end
  end
end
