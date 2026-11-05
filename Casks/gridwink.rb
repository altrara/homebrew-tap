cask "gridwink" do
  version "1.0.3"
  sha256 "52aebf506283e47bdad3bf03d9b02efa1b88c610fe98eef18fd6cf47af9467a9"

  url "https://altrara.ai/downloads/gridwink/Gridwink-#{version}.dmg"
  name "Gridwink"
  desc "Grid-based window manager"
  homepage "https://altrara.ai/agentic-ai"

  livecheck do
    url "https://altrara.ai/download/gridwink"
    strategy :header_match
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Gridwink.app"

  uninstall quit: "com.gridwink.Gridwink"

  zap trash: [
    "~/Library/Application Support/Gridwink",
    "~/Library/Caches/com.gridwink.Gridwink",
    "~/Library/HTTPStorages/com.gridwink.Gridwink",
    "~/Library/Preferences/com.gridwink.Gridwink.plist",
  ]
end
