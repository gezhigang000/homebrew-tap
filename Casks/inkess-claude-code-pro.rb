cask "inkess-claude-code-pro" do
  version "0.3.74"

  url "https://download.starapp.net/pro-releases/Inkess%20Claude%20Code%20Pro-#{version}-arm64.dmg"
  sha256 "1b13e7b2e54892bd1a2bb02fcd952a83996d181ecbca9679b36a80ea9dbc0a54"

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
