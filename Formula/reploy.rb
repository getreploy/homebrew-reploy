class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-44a1d2053d2eeed3feb958a59950205c79cf2e21.zip"
  sha256 "c5dd207e68b10901feaa6b616f56545253aecc8903bd6d915a208439e82bd7fe"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end
end
