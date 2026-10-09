cask "writeide" do
  version "0.7.3"
  sha256 "f2d81cb4ae369777c0fa980c2696cb6f7c761619b6d7fb2648e98da9bb59c2ac"

  url "https://github.com/Moshik21/WritingIDE-Releases/releases/download/v#{version}/WriteIDE-mac-arm64.dmg",
      verified: "github.com/Moshik21/WritingIDE-Releases/"
  name "WriteIDE"
  desc "Local-first writing studio for LitRPG and progression-fantasy authors"
  homepage "https://writeide.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "WriteIDE.app"

  zap trash: [
    "~/Library/Application Support/WriteIDE",
    "~/Library/Logs/WriteIDE",
    "~/Library/Preferences/com.writeide.app.plist",
    "~/Library/Saved Application State/com.writeide.app.savedState",
  ]
end
