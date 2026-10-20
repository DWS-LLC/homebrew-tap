cask "gct" do
  version "0.6.0"
  sha256 "dea6fadea303dd7e6559092c999306deda8dbde036e4def63a4f692b69bff9e1"

  url "https://github.com/DWS-LLC/grandcentralterminal/releases/download/v#{version}/GrandCentralTerminal-#{version}-macos-arm64.zip"
  name "Grand Central Terminal"
  desc "Infinite-canvas terminal with a persistent daemon"
  homepage "https://github.com/DWS-LLC/grandcentralterminal"

  # The app updates itself from GitHub releases; keep brew out of its way.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Grand Central Terminal.app"

  zap trash: "~/Library/Application Support/Grand Central Terminal"
end
