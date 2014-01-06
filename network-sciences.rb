require 'formula'

class NetworkSciences < Formula
  homepage 'http://github.com/inureyes/homebrew-researchers'
  url 'https://raw.github.com/inureyes/homebrew-researchers/master/version/Jan-2014-1.0.0.md'
  sha1 '33800f80aaa317ad78a83cae45bd87a7569751d8'

  depends_on :fortran
  depends_on :x11
  depends_on 'python' => :recommended
  depends_on 'gnuplot' => :recommended

  def install
  	system "pip", "install", "numpy", "scipy", "matplotlib", "pyzmq", "Jinja2", "tornado", "networkx", "wsgiref", "MarkupSafe", "ipython" if build.with? 'python'
  end

  def caveats
    native_caveats = <<-EOS.undent
      TEST
    EOS

    python_caveats = <<-EOS.undent
      TEST
    EOS

    s = native_caveats
    s = python_caveats + s if build.with? 'python'
  end
end
