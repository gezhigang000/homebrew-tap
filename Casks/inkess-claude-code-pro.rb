cask "inkess-claude-code-pro" do
  version "0.3.62"

  url "https://download.starapp.net/pro-releases/Inkess%20Claude%20Code%20Pro-#{version}-arm64.dmg"
  sha256 "9a5a2ffa894506973ec982cffa817632187b1538c0f5dcbc99d6630170737a1c"

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
