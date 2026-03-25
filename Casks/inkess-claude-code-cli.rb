cask "inkess-claude-code-cli" do
  version "0.3.9"

  if Hardware::CPU.arm?
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}-arm64.dmg"
    sha256 "5e0e483df7db2a10e8a39c0efd344b3fe0c5d63bf631733d142ee748476610ce"
  else
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}.dmg"
    sha256 "cfafe676542ebeb08aad6fe2e341cdff87ad5410c5277dafa38121b527548590"
  end

  name "Inkess Claude Code CLI"
  desc "Zero-config Claude Code desktop client for Inkess users"
  homepage "https://llm.starapp.net"

  app "Inkess Claude Code CLI.app"

  zap trash: [
    "~/Library/Application Support/inkess-claude-code",
    "~/Library/Preferences/com.inkess.claude-code.plist",
    "~/Library/Logs/inkess-claude-code",
  ]
end
