class Httplab < Formula
  desc "An interactive web server"
  homepage "https://github.com/gchaincl/httplab"
  url "https://github.com/gchaincl/httplab/releases/download/v0.1.0/httplab_darwin_amd64"
  sha256 "d0bc5d05e1f749215e46c3d1c7e9fb55ac44e3396546e6fd35bb38d6fc1fa9c4"

  def install
    mv "httplab_darwin_amd64", "httplab"
    bin.install "httplab"
  end

  test do
    assert_match /httplab: Mach-O 64-bit executable x86_64/, shell_output("file #{bin}/httplab")
  end
end
