# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "The hello hello cli"
  homepage "https://github.com/kristofferahl/hello"
  version "0.0.1"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kristofferahl/hello/releases/download/v0.0.1/hello_v0.0.1_darwin_arm64.zip"
      sha256 "86268cee3bcc966a8b786fe55c3105e708c0a00b8d021e034cbdd4d9dd1637e2"

      def install
        bin.install 'hello'
        output = Utils.safe_popen_read("#{bin}/hello", 'completion', 'bash')
        (bash_completion/'hello').write output
        output = Utils.safe_popen_read("#{bin}/hello", 'completion', 'zsh')
        (zsh_completion/'_hello').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kristofferahl/hello/releases/download/v0.0.1/hello_v0.0.1_darwin_amd64.zip"
      sha256 "16f1ad5d9f231cddbbb346b883f01b7ed1db8fb562bf2598179e8fcb84259f5a"

      def install
        bin.install 'hello'
        output = Utils.safe_popen_read("#{bin}/hello", 'completion', 'bash')
        (bash_completion/'hello').write output
        output = Utils.safe_popen_read("#{bin}/hello", 'completion', 'zsh')
        (zsh_completion/'_hello').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kristofferahl/hello/releases/download/v0.0.1/hello_v0.0.1_linux_amd64.tar.gz"
      sha256 "8e7bb8e1d869af17627b4d1cc8b6586f48b4f2daba41d6dae8d267857e09e425"

      def install
        bin.install 'hello'
        output = Utils.safe_popen_read("#{bin}/hello", 'completion', 'bash')
        (bash_completion/'hello').write output
        output = Utils.safe_popen_read("#{bin}/hello", 'completion', 'zsh')
        (zsh_completion/'_hello').write output
      end
    end
  end
end
