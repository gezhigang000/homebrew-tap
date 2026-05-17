cask "inkess-code" do
  version "1.4.7"

  url "https://download.inkessai.com/pro-releases/InkessCode-#{version}-arm64.dmg"
  sha256 "b41a6625aee50bd6eaba1da8ce3185fb92e784afb0f853d0c47a4ea38f828575"

  name "Inkess Code"
  desc "Zero-config Claude Code & Codex desktop client for Inkess users"
  homepage "https://llm.inkessai.com"

  app "InkessCode.app"

  depends_on arch: :arm64

  zap trash: [
    "~/Library/Application Support/InkessCode",
    "~/Library/Application Support/inkess-code",
    "~/Library/Preferences/com.inkess.code.plist",
    "~/Library/Logs/InkessCode",
    "~/Library/Saved Application State/com.inkess.code.savedState",
  ]
end
