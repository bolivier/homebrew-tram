class Tram < Formula
  desc "A web framework written in Clojure"
  homepage "https://github.com/bolivier/tram"
  url "https://github.com/bolivier/tram/releases/download/v0.0.3/tram.tar.gz"
  sha256 "d2114ded1cadc74f6edf802f2df385eca9288585362e8fcf650f241548b0e80f"
  license "MIT"

  depends_on "borkdude/brew/babashka"
  depends_on "clojure"

  def install
    libexec.install "tram.jar"

    (bin/"tram").write <<-SH
      #! /usr/bin/env bash
      set -euo pipefail
      exec bb "#{libexec}/tram.jar" "$@"
    SH

    (bin/"tram").chmod 0555
  end

  test do
    system "#{bin}/tram", "--help"
  end
end
