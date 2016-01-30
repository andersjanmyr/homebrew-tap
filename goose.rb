class Goose < Formula
  homepage "https://github.com/andersjanmyr/goose"
  url "https://github.com/andersjanmyr/goose/archive/v1.4.0.tar.gz"
  sha256 "58cdc9d6437cadc38b82e517e26123fd8311ecab5cdc77f2e054485ed82a05f1"

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

