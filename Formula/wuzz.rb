class Wuzz < Formula
  desc "Interactive cli tool for HTTP inspection"
  homepage "https://github.com/asciimoo/wuzz"
  url "https://github.com/asciimoo/wuzz/releases/download/v0.1.0/wuzz_darwin_amd64"
  version "0.1.0"
  sha256 "adcc33585265ef1df1b5b6f0e46b683c924add8f3207372f59dc6332bc1a6494"

  def install
    mv "wuzz_darwin_amd64", "wuzz"
    bin.install "wuzz"
  end

  test do
    assert_match /wuzz #{version}/, shell_output("#{bin}/wuzz --version")
  end
end
