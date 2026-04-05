cask "inkess-claude-code-pro" do
  version "0.3.26"

  url "https://download.starapp.net/pro-releases/Inkess%20Claude%20Code%20Pro-#{version}-arm64.dmg"
  sha256 "5ea6d5bc4b001b7fcf274eebaeb550d6ca61a20a3faaeb6c97e18d40ea2b7b0e"

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
