class Wuzz < Formula
  desc "Interactive cli tool for HTTP inspection"
  homepage "https://github.com/asciimoo/wuzz"
  url "https://github.com/asciimoo/wuzz/releases/download/v0.2.0/wuzz_darwin_amd64"
  version "0.2.0"
  sha256 "cd2afbca2a6415a618b960000176ba0d76882e93d2feb36588ecb68b3ee32fec"

  def install
    mv "wuzz_darwin_amd64", "wuzz"
    bin.install "wuzz"
  end

  test do
    assert_match /wuzz #{version}/, shell_output("#{bin}/wuzz --version")
  end
end
