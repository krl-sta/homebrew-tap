cask "december" do
  version "1.0,85"
  sha256 "e89a6ef5ec0cc6c73ebc06670142efb72b00586c463f8c208192e31dcf24c73c"

  url "https://github.com/krl-sta/December-updates/releases/download/#{version.csv.first}.#{version.csv.second}/December-#{version.csv.first}-#{version.csv.second}-arm64.dmg"
  name "December"
  desc "Dual-pane file manager"
  homepage "https://github.com/krl-sta/December-updates"

  livecheck do
    url "https://december-feed.k-stashevsky.workers.dev/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "December.app"

  zap trash: [
    "~/Library/Application Support/com.kirillstashevsky.december",
    "~/Library/Caches/com.kirillstashevsky.december",
    "~/Library/Preferences/com.kirillstashevsky.december.plist",
  ]
end
