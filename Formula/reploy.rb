class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  url "https://cli.getreploy.com/reploy.zip"
  sha256 e35542db16f2a33c8364d158a23e463febeb5016d95acb3695a10926dbb30890

  def install
    system "echo", "hi"
  end

  test do
    system "echo", "hi"
  end
end
