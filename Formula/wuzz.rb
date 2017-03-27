class Wuzz < Formula
  desc "Interactive cli tool for HTTP inspection"
  homepage "https://github.com/asciimoo/wuzz"
  url "https://github.com/asciimoo/wuzz/releases/download/v0.3.0/wuzz_darwin_amd64"
  version "0.3.0"
  sha256 "6491a2ec31f83fcaeb1f55e7478fcfb8adde431c22a61d18bdcd208103e133c5"

  def install
    mv "wuzz_darwin_amd64", "wuzz"
    bin.install "wuzz"
  end

  test do
    assert_match /wuzz #{version}/, shell_output("#{bin}/wuzz --version")
  end
end
