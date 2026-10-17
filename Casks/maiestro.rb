cask "maiestro" do
  version "0.4.5"
  sha256 "4e33b5deca5d3d26a6257fa8aa8c231d2e69439a76d316b71c2e132bce7e3cfc"

  url "https://github.com/yanokamay-org/maiestro/releases/download/v#{version}/mAIestro-Code_#{version}_aarch64.dmg"
  name "mAIestro Code"
  desc "Menu-bar dashboard for parallel Claude Code, Codex and Copilot sessions"
  homepage "https://github.com/yanokamay-org/maiestro"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
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
