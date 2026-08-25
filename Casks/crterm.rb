cask "crterm" do
  version "1.15.1-173"
  sha256 "b95db8068f398cb8eddbc8185f0c25f913a3ae6ea0646e8b1bb82271ced630ef"

  url "https://github.com/mbcltd/CRTerminal/releases/download/v#{version}/CRTerminal.dmg"
  name "crterm"
  desc "Beautifully opinionated terminal emulator with GPU-accelerated retro presets"
  homepage "https://crterm.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "crterm.app"

  zap trash: [
    "~/Library/Application Support/CRTerminal",
    "~/Library/Caches/mbcltd.CRTerminal",
    "~/Library/Preferences/mbcltd.CRTerminal.plist",
    "~/Library/Saved Application State/mbcltd.CRTerminal.savedState",
  ]
end
