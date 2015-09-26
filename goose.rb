class Goose < Formula
  homepage "https://github.com/andersjanmyr/goose"
  url "https://github.com/andersjanmyr/goose/archive/v1.3.4.tar.gz"
  sha256 "20a2c79880ddb2d68c39dd39834e9b9de1348d4c2e35e876c5f3e09766c90722"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/goose"

    bash_completion.install "goose_completion.sh"
  end

  test do
    system "#{bin}/goose", "--version"
  end
end

