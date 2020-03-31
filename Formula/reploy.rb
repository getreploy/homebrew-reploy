class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-c645ac729f750c183571be29ff97b0ac8791d7c9.zip"
  sha256 "380275c2aed7f0ad50006d82cf2334a3270c7ebe98348e02d707f6476b015020"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end
end
