cask "gridwink" do
  version "1.0.2"
  sha256 "c081ddd21720dc0a0e3bf94747636c3d8cb7145ceb4e05290e7cbec4420190bb"

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
