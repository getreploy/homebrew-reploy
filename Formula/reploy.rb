class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.150"
  url "https://cli.getreploy.com/reploy-05009bb5b4ea04ca342680fabe57777cf75ddf2c.zip"
  sha256 "446baaa16806a666150bd75fcfd6095e78615148ac8d6cd11e5162904b595810"

  def install
    bin.install "reploy"
  end

  test do
    system "test", "hi"
  end

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
          <key>ProgramArguments</key>
          <array>
            <string>#{opt_bin}/reploy</string>
            <string>watch</string>
          </array>
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
