class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "72aa3dd579c3a770d819a065220fb004664166f6567c9b5c56a302d208f0d973"

  def install
    bin.install "doppler"
  end

  test do
    system "test", "hi"
  end
end
