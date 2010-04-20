require 'formula'

class Tokyocabinet <Formula
  url 'http://1978th.net/tokyocabinet/tokyocabinet-1.4.43.tar.gz'
  homepage 'http://1978th.net/tokyocabinet/'
  md5 '5e3e267c023ea7bf3710b13de9f954a9'

  # depends_on 'cmake'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    # system "cmake . #{std_cmake_parameters}"
    system "make"
    system "make install"
  end
end
