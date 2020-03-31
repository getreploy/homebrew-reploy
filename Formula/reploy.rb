class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "a7771d00edc67f2e88a7bcf92baab20ef9f93116e659ae1eda94b155c62a7610"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end
end
