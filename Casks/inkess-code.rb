cask "inkess-code" do
  version "1.4.0"

  url "https://download.inkessai.com/pro-releases/InkessCode-#{version}-arm64.dmg"
  sha256 "a4e253c5c61dcc0b26d829094a14a3b261db54d71c8d018b5d3bec25e630a70e"

  name "Inkess Code"
  desc "Zero-config Claude Code & Codex desktop client for Inkess users"
  homepage "https://llm.inkessai.com"

  app "InkessCode.app"

  depends_on arch: :arm64

  zap trash: [
    "~/Library/Application Support/InkessCode",
    "~/Library/Preferences/com.inkess.code.plist",
    "~/Library/Logs/InkessCode",
  ]
end
