cask "gct" do
  version "0.10.0"
  sha256 "25f9064775ee728d447c5cd065000701786401302fc894060581f54f78365c38"

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
