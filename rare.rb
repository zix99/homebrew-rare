# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rare < Formula
  desc "Fast, realtime regex-extraction, and aggregation into common formats such as histograms, numerical summaries, tables, and more!"
  homepage "https://github.com/zix99/rare"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zix99/rare/releases/download/0.3.4/rare_0.3.4_Darwin_arm64.tar.gz"
      sha256 "8ede1b5eddf5e607f31c84036d226ef721130fde453f03d2825a1c9a79d0ada8"

      def install
        bin.install "rare"
        man1.install Dir["rare.1.gz"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zix99/rare/releases/download/0.3.4/rare_0.3.4_Darwin_x86_64.tar.gz"
      sha256 "44a8882e9d3255c79d34c95f89706b905b30a6f01de29a6bffbbc30277b2c70a"

      def install
        bin.install "rare"
        man1.install Dir["rare.1.gz"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zix99/rare/releases/download/0.3.4/rare_0.3.4_Linux_arm64.tar.gz"
      sha256 "8a166f74dd92761a9194a6845d80092551bde5d3cd233d3c4fb925a132050833"

      def install
        bin.install "rare"
        man1.install Dir["rare.1.gz"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zix99/rare/releases/download/0.3.4/rare_0.3.4_Linux_x86_64.tar.gz"
      sha256 "8486bd6da8a3c2a60060613ef34c2662476cf18bdb1b867ecf74b861f886b5e4"

      def install
        bin.install "rare"
        man1.install Dir["rare.1.gz"]
      end
    end
  end

  test do
    system "#{bin}/rare -v"
  end
end
