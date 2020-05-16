class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.40"
  url "https://cli.getreploy.com/reploy-7295dd6de2dbc48dec3752f18fb4e273a4c3f3b8.zip"
  sha256 "918d02845ed91b0e603f25a0f3a35486ae7b711f5536a97a121a46a9cdff6b88"

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
