# This file was generated by GoReleaser. DO NOT EDIT.
class Rare < Formula
  desc "Fast, realtime regex-extraction, and aggregation into common formats such as histograms, numerical summaries, tables, and more!"
  homepage "https://github.com/zix99/rare"
  version "0.1.21"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/zix99/rare/releases/download/0.1.21/rare_0.1.21_Darwin_x86_64.tar.gz"
    sha256 "7a343e3ccc50ff5dfc15906e0100a8239eca116f33c02586b1bf8f9500089721"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/zix99/rare/releases/download/0.1.21/rare_0.1.21_Linux_x86_64.tar.gz"
      sha256 "fff6eae923e1e01fc18b536f3c4c46d97eb65e5423ce4fbc456ee38cd343fd24"
    end
  end

  def install
    bin.install "rare"
  end

  test do
    system "#{bin}/rare -v"
  end
end
