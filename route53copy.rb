class Route53copy < Formula
  homepage "https://github.com/andersjanmyr/route53copy"
  url "https://github.com/andersjanmyr/route53copy/archive/v1.1.2.tar.gz"
  sha256 "a9268ed8a3f408d8ae00e23c5f5d7d809306afefea393f8c480ece73661ebc6e"

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

