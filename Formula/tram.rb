class Tram < Formula
  desc "A web framework written in Clojure"
  homepage "https://github.com/bolivier/tram"
  url "https://github.com/bolivier/tram/releases/download/v0.0.5/tram.tar.gz"
  sha256 "7c7fbbdbbcc113bda27fa5e7faa590354ba12fb39ea90345f839369a63223afb"
  license "MIT"

  depends_on "borkdude/brew/babashka"
  depends_on "clojure"

  def install
    libexec.install "tram.jar"

    script = libexec/"tram"


    script.write <<-SH
      #! /usr/bin/env bash
      set -euo pipefail
      exec bb "#{libexec}/tram.jar" "$@"
    SH

    script.chmod 0755

    bin.install_symlink script => "tram"
  end

  test do
    system "#{bin}/tram", "--help"
  end
end
