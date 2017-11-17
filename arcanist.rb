require "formula"

class Arcanist < Formula
  resource "libphutil" do
    url "https://github.com/facebook/libphutil.git"
    sha256 ""
  end
  homepage "https://github.com/facebook/arcanist"
  head "git://github.com/facebook/arcanist.git"
  sha256 ""
  version "1"
  def install
    system "cp", "-r", ".", prefix
    resource("libphutil").stage {
      system "cp", "-r", ".", "#{prefix}/externals/includes/libphutil"
    }
  end

  test do
    system "arc", "help"
  end
end
