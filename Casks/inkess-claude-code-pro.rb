cask "inkess-claude-code-pro" do
  version "1.1.6"

  url "https://download.starapp.net/pro-releases/Inkess%20Claude%20Code%20Pro-#{version}-arm64.dmg"
  sha256 "7c06fb2dbd176616c133988a0379dc066a2c558021df81db0ac759dee4063849"

  name "Inkess Claude Code Pro"
  desc "Zero-config Claude Code desktop client for Inkess users"
  homepage "https://llm.starapp.net"

  app "Inkess Claude Code Pro.app"

  depends_on arch: :arm64

  zap trash: [
    "~/Library/Application Support/inkess-claude-code-pro",
    "~/Library/Preferences/com.inkess.claude-code-pro.plist",
    "~/Library/Logs/inkess-claude-code-pro",
  ]
end
