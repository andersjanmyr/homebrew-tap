class Goose < Formula
  homepage "https://github.com/andersjanmyr/goose"
  url "https://github.com/andersjanmyr/goose/archive/v1.3.4.tar.gz"
  sha256 "4d3ee7f9f31083544a508514d74e60ec86877e88277b6dfe826bcd302f3008ce"

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

