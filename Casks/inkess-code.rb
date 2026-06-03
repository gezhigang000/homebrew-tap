cask "inkess-code" do
  version "1.4.12"

  url "https://download.inkessai.com/pro-releases/InkessCode-#{version}-arm64.dmg"
  sha256 "88cbd0fb445564da8c9101c21137be39cdc3a10f74776343cb8f361c24c91f52"

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
