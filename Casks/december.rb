cask "december" do
  version "1.0,80"
  sha256 "0604a0359c6a01b529003a458188c2363046ccd759bcc76b6f64ab03c0621de9"

  url "https://github.com/krl-sta/December-updates/releases/download/#{version.before_comma}.#{version.after_comma}/December-#{version.before_comma}-#{version.after_comma}-arm64.dmg"
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
