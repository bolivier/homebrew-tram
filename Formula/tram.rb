class Tram < Formula
  desc "A web framework written in Clojure"
  homepage "https://github.com/bolivier/tram"
  url "https://github.com/bolivier/tram/releases/download/v0.0.1/tram.tar.gz"
  sha256 "e0b202f355f1c3a228f27e6ce50d5c26ac44d2fd82b9f3cb942fa4c6e31ad2ac"
  license "MIT"

  depends_on "borkdude/brew/babashka"
  depends_on "clojure"

  def install
    libexec.install "src"
    libexec.install "bb.edn"
    bin.install "tram"
  end



  test do
    system "#{bin}/wtm", "--help"
  end
end
