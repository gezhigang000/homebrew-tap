cask "inkess-claude-code-cli" do
  version "0.4.1"

  if Hardware::CPU.arm?
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}-arm64.dmg"
    sha256 "cc3651f4903a2c7dcec1cb9d87a09c707dc3cac5952c741cb632262f951379bb"
  else
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}.dmg"
    sha256 "fd18d86feed2c38b14d66d20494bb71b30620dffec3decc1dcd8693271dc84a2"
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
