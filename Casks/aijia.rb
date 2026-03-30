cask "aijia" do
  version "0.3.37"

  # Only arm64 (Apple Silicon) is currently distributed
  url "https://lotus.renlijia.com/aijia/v#{version}/AIjia_#{version}_aarch64.dmg"
  sha256 "e1e81e49da8fd10cd2fcab9c37d6fb6ddaf2f579f07c3442fcfd7dbb72a3d8ea"

  name "AIjia"
  desc "AI intelligent work assistant for enterprise"
  homepage "https://ai.renlijia.com"

  app "AIjia.app"

  zap trash: [
    "~/Library/Application Support/com.aijia.app",
    "~/Library/Logs/com.aijia.app",
    "~/Library/WebKit/com.aijia.app",
  ]
end
