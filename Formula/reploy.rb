class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.1"
  url "https://cli.getreploy.com/reploy-1527f7064fbebd79efc3c851e9e6dfb80e0dcd20.zip"
  sha256 "ff5366b8354feaa8f5418b8717043fe8ed1fda332dcc9243188b281d43e60716"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end

  
  plist_options :manual => "reploy watch"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>KeepAlive</key>
          <dict>
            <key>SuccessfulExit</key>
            <false/>
          </dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>RunAtLoad</key>
          <true/>
          <key>WorkingDirectory</key>
          <string>#{var}</string>
          <key>StandardErrorPath</key>
          <string>#{var}/log/reploy.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/reploy.log</string>
        </dict>
      </plist>
    EOS
  end
end
