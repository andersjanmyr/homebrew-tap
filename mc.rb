class Mc < Formula
  homepage "https://github.com/andersjanmyr/mc"
  url "https://github.com/andersjanmyr/mc/archive/v1.4.2.tar.gz"
  sha256 "ca322526597179df6c26a4b911fbabe155b035fc495784f16e91c9955e9a198a"

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

