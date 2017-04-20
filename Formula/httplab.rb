class Httplab < Formula
  desc "An interactive web server"
  homepage "https://github.com/gchaincl/httplab"
  url "https://github.com/gchaincl/httplab/releases/download/v0.2.1/httplab_darwin_amd64"
  version "v0.2.1"
  sha256 "facdb77d54d4fb706b76bd00998c333e742f5ca5152d0e11be4658702f758505"

  def install
    mv "httplab_darwin_amd64", "httplab"
    bin.install "httplab"
  end

  test do
    assert_match /#{version}/, shell_output("#{bin}/httplab -version")
  end
end
