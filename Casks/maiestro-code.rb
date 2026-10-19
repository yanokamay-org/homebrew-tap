cask "maiestro-code" do
  version "0.4.6"
  sha256 "642c3c3a4b4b6a79e1fc37713f366b7f6136d3e030e81c21df1ddb063b74160d"

  url "https://github.com/yanokamay-org/maiestro/releases/download/v#{version}/mAIestro-Code_#{version}_universal.dmg"
  name "mAIestro Code"
  desc "Menu-bar dashboard for parallel Claude Code, Codex and Copilot sessions"
  homepage "https://github.com/yanokamay-org/maiestro"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "mAIestro Code.app"

  zap trash: [
    "~/.maiestro",
    "~/Library/Application Support/com.maiestro.app",
    "~/Library/Caches/com.maiestro.app",
    "~/Library/Logs/com.maiestro.app",
    "~/Library/Saved Application State/com.maiestro.app.savedState",
    "~/Library/WebKit/com.maiestro.app",
  ]
end
