class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "24c7b53be76af363aa0132e4d0967dbcb7623df324d540f61f7515990baf7c96"

  def install
    bin.install "reploy-latest"
  end

  test do
    system "test", "hi"
  end
end
