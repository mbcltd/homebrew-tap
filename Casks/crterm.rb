cask "crterm" do
  version "1.15.0-171"
  sha256 "cbc9b1cce1f9ccc3b7fed6b54b722534b28047495621455ab68c250627913669"

  url "https://github.com/mbcltd/CRTerminal/releases/download/v#{version}/CRTerminal.dmg"
  name "crterm"
  desc "Beautifully opinionated terminal emulator with GPU-accelerated retro presets"
  homepage "https://crterm.ai"

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
