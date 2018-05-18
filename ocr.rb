class Ocr < Formula
  homepage "https://github.com/andersjanmyr/ocr"
  url "https://github.com/andersjanmyr/ocr/archive/v1.0.1.tar.gz"
  sha256 "6679f20b47673b04e826bc4cfca370cb19a862f3721eb0dec28876001b303ca6"

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

