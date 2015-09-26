class Route53copy < Formula
  homepage "https://github.com/andersjanmyr/route53copy"
  url "https://github.com/andersjanmyr/route53copy/archive/v1.1.1.tar.gz"
  sha256 "1bd8bc7c4aad2a9d71c53cd17368da06b9b315d8577d9cba39bccd2b72b7f1e3"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/route53copy"
  end

  test do
    system "#{bin}/route53copy", "--version"
  end
end

