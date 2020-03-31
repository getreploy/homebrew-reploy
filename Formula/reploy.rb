class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-8c01ae2bf8fc3923814725ff3c3cf3a7461971f4.zip"
  sha256 "26bab19829c939d73126c73c3675f74c00ad844238488fa8b3b47feb768f2dcf"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end
end
