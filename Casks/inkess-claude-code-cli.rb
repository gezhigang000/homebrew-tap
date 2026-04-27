cask "inkess-claude-code-cli" do
  version "0.5.1"

  url "https://download.inkessai.com/app-releases/Inkess%20Claude%20Code%20CLI-#{version}-arm64.dmg"
  sha256 "875e6229916988bf68eecd977547023033dfb12c807decd2b892eae2a341bd44"

  name "Inkess Claude Code CLI"
  desc "Zero-config Claude Code desktop client for Inkess users"
  homepage "https://llm.inkess.cc"

  app "Inkess Claude Code CLI.app"

  depends_on arch: :arm64
end
