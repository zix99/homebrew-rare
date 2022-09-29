# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rare < Formula
  desc "Fast, realtime regex-extraction, and aggregation into common formats such as histograms, numerical summaries, tables, and more!"
  homepage "https://github.com/zix99/rare"
  version "0.3.0-rc2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zix99/rare/releases/download/0.3.0-rc2/rare_0.3.0-rc2_Darwin_arm64.tar.gz"
      sha256 "230b54d8943d6576c2b53ff17084afc7ae7c4396d92872bcff2da1fb4bf78a65"

      def install
        bin.install "rare"
        man1.install Dir["rare.1.gz"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zix99/rare/releases/download/0.3.0-rc2/rare_0.3.0-rc2_Darwin_x86_64.tar.gz"
      sha256 "6993e99b260dab9eddaa32b98f47632cd6a7d4382099e429c1be4feed75d1f0e"

      def install
        bin.install "rare"
        man1.install Dir["rare.1.gz"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zix99/rare/releases/download/0.3.0-rc2/rare_0.3.0-rc2_Linux_arm64.tar.gz"
      sha256 "307a00eade7a7aa0c8fd1d8a44c99a9493cdc48ff4868c1e3964f2c497336d4f"

      def install
        bin.install "rare"
        man1.install Dir["rare.1.gz"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zix99/rare/releases/download/0.3.0-rc2/rare_0.3.0-rc2_Linux_x86_64.tar.gz"
      sha256 "4e4399523e7ecf083722c4285c41cce3f7533f00273cabaf6e1e1810248a08cf"

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
