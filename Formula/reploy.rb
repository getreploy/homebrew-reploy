class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  url "https://cli.getreploy.com/reploy-latest.zip"
  sha256 1cb818c6da5fde3378b74ec24b8b9b81f51c6430b34a113c3a1bf1377bd1aefd

  def install
    system "echo", "hi"
  end

  test do
    system "echo", "hi"
  end
end
