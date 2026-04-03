cask "inkess-claude-code-cli" do
  version "0.4.3"

  if Hardware::CPU.arm?
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}-arm64.dmg"
    sha256 "ea6a594197535c5c7132aa8ff7763771f2578ffb45118ae24448428ffddce38c"
  else
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}.dmg"
    sha256 "eb9f67020253ada1fd37161bcbf42d547aa0a2703c2338c38c9faf9be5d852ec"
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
