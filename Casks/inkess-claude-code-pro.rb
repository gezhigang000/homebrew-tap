cask "inkess-claude-code-pro" do
  version "0.4.0"

  if Hardware::CPU.arm?
    url "https://download.starapp.net/pro-releases/Inkess%20Claude%20Code%20Pro-#{version}-arm64.dmg"
    sha256 "PLACEHOLDER_ARM64"
  else
    url "https://download.starapp.net/pro-releases/Inkess%20Claude%20Code%20Pro-#{version}.dmg"
    sha256 "PLACEHOLDER_X64"
  end

  name "Inkess Claude Code Pro"
  desc "Subscription-based Claude Code desktop client with TUN proxy and environment masking"
  homepage "https://llm.starapp.net/console/download-pro"

  app "Inkess Claude Code Pro.app"

  zap trash: [
    "~/Library/Application Support/inkess-claude-code-pro",
    "~/Library/Preferences/com.inkess.claude-code-pro.plist",
    "~/Library/Logs/inkess-claude-code-pro",
  ]
end
