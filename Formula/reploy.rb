class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "aca5ad047d013a5e81b9b6248b976fb475f45458b8cc65c7ec028a6f224eef0c"

  def install
    bin.install "reploy-latest"
  end

  test do
    system "test", "hi"
  end
end
