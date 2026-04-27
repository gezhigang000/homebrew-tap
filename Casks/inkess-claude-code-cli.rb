cask "inkess-claude-code-cli" do
  version "0.5.0"

  url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}-arm64.dmg"
  sha256 "3fa887b91b63b78225d022150476e958222026391fd8d9817aa1a5f03d5ec5ef"

  name "Inkess Claude Code CLI"
  desc "Zero-config Claude Code desktop client for Inkess users"
  homepage "https://llm.starapp.net"

  app "Inkess Claude Code CLI.app"

  depends_on arch: :arm64

  zap trash: [
    "~/Library/Application Support/inkess-claude-code",
    "~/Library/Preferences/com.inkess.claude-code.plist",
    "~/Library/Logs/inkess-claude-code",
  ]
end
