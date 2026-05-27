cask "inkess-code" do
  version "1.4.10"

  url "https://download.inkessai.com/pro-releases/InkessCode-#{version}-arm64.dmg"
  sha256 "65980e59694bbbefd3ff048a6c6a134f72f461be845bf73a826bf9c3690f5fb0"

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
