cask "inkess-code" do
  version "1.4.13"

  url "https://download.inkessai.com/pro-releases/InkessCode-#{version}-arm64.dmg"
  sha256 "9b03de53890120af0b65135233a0a696c1e0275697fb5fc63a5836aace708297"

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
