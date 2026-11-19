cask "tereditor" do
  version "0.0.0-nightly.20261119.6cdd34d"
  sha256 "0327aa1b3a67ce66c1d79ba3f82cb3f5787e3dee64680db4460e3bdfdbbcf001"

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
