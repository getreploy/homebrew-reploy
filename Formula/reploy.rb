class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "204095cd4f55050ba63e83cce3ed335b7e20c25a9dbd43caf65f9c3a10e8c77e"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end
end
