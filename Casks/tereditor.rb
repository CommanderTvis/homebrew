cask "tereditor" do
  version "0.0.0-nightly.20261117.6cdd34d"
  sha256 "de84245b231748ef4aec65a4b6cdeb440395c73dd6063ef5c287a0a9a7fb3d89"

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
