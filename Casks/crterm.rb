cask "crterm" do
  version "1.18.0-183"
  sha256 "515ecf7df2429c8579303468a9b40dddab1a2ce0be725f045f26da87020f019e"

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
