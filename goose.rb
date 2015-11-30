class Goose < Formula
  homepage "https://github.com/andersjanmyr/goose"
  url "https://github.com/andersjanmyr/goose/archive/v1.3.5.tar.gz"
  sha256 "d8e6f6fc362a98ab1aee0819c0f5fbfbb6b576430d1a684c274ec11abd1da737"

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

