cask "inkess-claude-code-cli" do
  version "0.3.5"

  if Hardware::CPU.arm?
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}-arm64.dmg"
    sha256 "76a108f23279149f69b1063cfba15ffa054443287193eeaee34d1696b5baa2a4"
  else
    url "https://download.starapp.net/app-releases/Inkess%20Claude%20Code%20CLI-#{version}.dmg"
    sha256 "9a3ea37c97a0e7645e456bdcf28f40c6099d8345f82ef2234456289b996d4f5b"
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
