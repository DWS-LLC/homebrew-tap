cask "gct" do
  version "0.11.1"
  sha256 "e4aed251a6b873f1464c10b3f7ad022e5107e6c0bb02e7df7ddf1df4e842d11d"

  url "https://github.com/DWS-LLC/grandcentralterminal/releases/download/v#{version}/GrandCentralTerminal-#{version}-macos-arm64.zip"
  name "Grand Central Terminal"
  desc "Infinite-canvas terminal with a persistent daemon"
  homepage "https://github.com/DWS-LLC/grandcentralterminal"

  # Brew installs don't self-update; the app points users at brew upgrade.
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Grand Central Terminal.app"

  zap trash: "~/Library/Application Support/Grand Central Terminal"
end
