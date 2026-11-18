cask "gct" do
  version "0.20.0"
  sha256 "8ff8fa6f148c9cfac4a1d08f6be5cca8e474a9d0a196b942b2d0e373dbee0195"

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
