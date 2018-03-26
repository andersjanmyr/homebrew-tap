class Mc < Formula
  homepage "https://github.com/andersjanmyr/mc"
  url "https://github.com/andersjanmyr/mc/archive/v1.4.3.tar.gz"
  sha256 "22cdcd1326fe54603eb61e93c193a73a2cf9da48a53a083cd7673c94c8011a69"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build.sh"
    bin.install "bin/mc"
  end

  test do
    system "#{bin}/mc", "version"
  end
end

