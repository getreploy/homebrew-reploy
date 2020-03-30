class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  url "https://cli.getreploy.com/reploy.zip"
  sha256 %{echo -n reploy.rb | sha256sum}

  def install
    system "echo", "hi"
  end

  test do
    system "echo", "hi"
  end
end
