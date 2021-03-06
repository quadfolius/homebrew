require 'formula'

class Gd <Formula
  version "2.0.36RC1"
  url "http://www.libgd.org/releases/gd-#{version}.tar.gz"
  homepage "http://www.libgd.org"
  md5 "39ac48e6d5e0012a3bd2248a0102f209"

  aka :libgd

  depends_on 'jpeg' => :recommended

  def install
    system "./configure", "--prefix=#{prefix}", "--with-freetype=/usr/X11"
    system "make install"
  end
end
