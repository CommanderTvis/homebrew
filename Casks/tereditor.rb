cask "tereditor" do
  version "0.0.0-nightly.20261128.12f22d8"
  sha256 "0ecd318748940ca897c0520568b6e829cd164c571eb79d80f0edc067b92f20c2"

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
