class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.151"
  url "https://cli.getreploy.com/reploy-9e505bad1dae23a22eb9ea1c28f62ccf6bf9d75f.zip"
  sha256 "a867880bad198c21d6521549aa891429fbf2bf9617770369225074da7fa3c0d1"

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
