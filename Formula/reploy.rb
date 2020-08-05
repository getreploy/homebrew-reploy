class Reploy < Formula
  desc "Manage your dev environments with ease :)"
  homepage "https://github.com/getreploy/homebrew-reploy"
  version "0.0.205"
  url "https://cli.getreploy.com/reploy-52b12db99cca2dd6a2790304fa39aa6fbd6cb747.zip"
  sha256 "0e8e7838b2ff52fb461e1ff2a36d4649fa8a09950e2c9a73ac24f448097c45f3"

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
