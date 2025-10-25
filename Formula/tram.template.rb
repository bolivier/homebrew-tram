class Tram < Formula
  desc "A web framework written in Clojure"
  homepage "https://github.com/bolivier/tram"
  url "https://github.com/bolivier/tram/releases/download/__VERSION__/tram.tar.gz"
  sha256 "__SHA__"
  license "MIT"

  depends_on "borkdude/brew/babashka"
  depends_on "clojure"

  def install
    libexec.install "src"
    libexec.install "bb.edn"
    bin.install "tram"
  end

  test do
    system "#{bin}/tram", "--help"
  end
end
