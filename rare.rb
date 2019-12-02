# This file was generated by GoReleaser. DO NOT EDIT.
class Rare < Formula
  desc "Fast, realtime regex-extraction, and aggregation into common formats such as histograms, numerical summaries, tables, and more!"
  homepage "https://github.com/zix99/rare"
  version "0.1.22"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/zix99/rare/releases/download/0.1.22/rare_0.1.22_Darwin_x86_64.tar.gz"
    sha256 "8985131546267d50174225c2db513d27062967993859d4242341545d46d09533"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/zix99/rare/releases/download/0.1.22/rare_0.1.22_Linux_x86_64.tar.gz"
      sha256 "693673f704461528e937d81598165a6ec01632d3bc3f824b58e7c86c26d455d1"
    end
  end

  def install
    bin.install "rare"
  end

  test do
    system "#{bin}/rare -v"
  end
end
