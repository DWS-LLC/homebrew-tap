cask "gct" do
  version "0.4.0"
  sha256 "403a739afd346957898ed79910d5130a2811525ed302ed446d0fe732a0179d12"

  url "https://github.com/DWS-LLC/grandcentralterminal/releases/download/v#{version}/GrandCentralTerminal-#{version}-macos-arm64.zip"
  name "Grand Central Terminal"
  desc "Infinite-canvas terminal with a persistent daemon"
  homepage "https://github.com/DWS-LLC/grandcentralterminal"

  # The app updates itself from GitHub releases; keep brew out of its way.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Grand Central Terminal.app"

  zap trash: "~/Library/Application Support/Grand Central Terminal"
end
