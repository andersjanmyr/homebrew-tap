class RedisCopy < Formula
  homepage "https://github.com/andersjanmyr/redis-copy"
  url "https://github.com/andersjanmyr/redis-copy/archive/v1.0.3.tar.gz"
  sha256 "7ada8f7e434ce1ce6c09d22f87edf96c73950272e863aaad185534118783deeb"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/redis-copy"
  end

  test do
    system "#{bin}/redis-copy", "--version"
  end
end

