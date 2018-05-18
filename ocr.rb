class Ocr < Formula
  homepage "https://github.com/andersjanmyr/ocr"
  url "https://github.com/andersjanmyr/ocr/archive/v1.0.1.tar.gz"
  sha256 "e8eb4fec60ddb3fd82f218c4cedda0339e573cd2bb22d6b4dc45b8c49c05b9da"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./scripts/build.sh"
    bin.install "bin/ocr"
  end

  test do
    system "#{bin}/ocr", "version"
  end
end

