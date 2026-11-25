cask "tereditor" do
  version "0.0.0-nightly.20261125.390949a"
  sha256 "75b5d6d9a5ed0d2eb003489eb29b087091d73da4c6723131115fb19549528b3a"

  url "https://github.com/CommanderTvis/tereditor/releases/download/nightly/tereditor-nightly.dmg"
  name "tereditor"
  desc "Worktree workbench for Claude Code and Codex, nightly"
  homepage "https://github.com/CommanderTvis/tereditor"

  depends_on arch: :arm64

  app "tereditor.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/tereditor.app"]
  end
end
