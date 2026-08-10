cask "writeide" do
  version "0.6.0"
  sha256 "7017063a4a9ed47d76c6267e70646c41331a8ec652e38497692dc5b6bb868fcb"

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
