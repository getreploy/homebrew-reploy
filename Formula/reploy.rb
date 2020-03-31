class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "e36d1d7ba167e85069f7c312b2c8afed127363afca42249e7a8ac546b8a44fab"

  def install
    system "echo", "hi"
  end

  test do
    system "echo", "hi"
  end
end
