cask "gct" do
  version "0.5.0"
  sha256 "d4c6dcbd3eac1de2daa50d17e99c878d28f21824fc1ca87bf64d28e3771effe2"

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
