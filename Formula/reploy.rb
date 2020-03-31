class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-434d755ceb59399f632ec86868d2ad57062f92d3.zip"
  sha256 "f8c7f4aef29de3efa8e6fd85efccdce10947395069d18085c23b8d51a19cff70"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end
end
