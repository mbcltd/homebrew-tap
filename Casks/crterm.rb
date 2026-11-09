cask "crterm" do
  version "1.19.1-189"
  sha256 "db40fe1d59ee2c75cc5ba94d289be893a35ea76d81dbfe4be69f5a1691f64f2d"

  url "https://github.com/mbcltd/CRTerminal/releases/download/v#{version}/CRTerminal.dmg"
  name "crterm"
  desc "Beautifully opinionated terminal emulator with GPU-accelerated retro presets"
  homepage "https://crterm.ai/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-\d+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "crterm.app"

  zap trash: [
    "~/Library/Application Support/CRTerminal",
    "~/Library/Caches/mbcltd.CRTerminal",
    "~/Library/Preferences/mbcltd.CRTerminal.plist",
    "~/Library/Saved Application State/mbcltd.CRTerminal.savedState",
  ]
end
