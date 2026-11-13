cask "thinkrail-desktop" do
  version "0.0.0-nightly.202610300939"
  sha256 "840fed14ff43842aa9acea92e2cf58c5381c231acb70bef34bc01afc00f726ca"

  url "https://github.com/CommanderTvis/homebrew/releases/download/v0.0.0-nightly.202610300939/thinkrail-desktop-darwin-arm64.dmg"
  name "ThinkRail"
  desc "ThinkRail desktop app, CommanderTvis fork nightly"
  homepage "https://github.com/CommanderTvis/thinkrail"

  deprecate! date: "2026-11-13", because: :unmaintained

  auto_updates true
  depends_on arch: :arm64

  app "ThinkRail-canary.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/ThinkRail-canary.app"]
  end
end
