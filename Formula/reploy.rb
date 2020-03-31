class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "3bb6e00f8c22e4bc703f16aab5bf886f9d86fcc8965d8d50596040ae01bd42fe"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end
end
