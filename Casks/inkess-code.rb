cask "inkess-code" do
  version "1.4.8"

  url "https://download.inkessai.com/pro-releases/InkessCode-#{version}-arm64.dmg"
  sha256 "426fb104b98b77fbbf5908446c96af0994a3ff24d4cae867d6d90bdce316e199"

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
