class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 "de1ce529090131b87090f4471fc30ab88207ef2e82268e5f0fe53eaa5d6a062c"

  def install
    bin.install "reploy-latest"
  end

  test do
    system "test", "hi"
  end
end
