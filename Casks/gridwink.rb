cask "gridwink" do
  version "1.0.1"
  sha256 "c425fd2a64ea93eac6cfcb49f6a8e5f2152101716050bc5806966484f95a587f"

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
