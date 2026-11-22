cask "tereditor" do
  version "0.0.0-nightly.20261122.c6cc5e8"
  sha256 "d4bbe0ce0cee0844508f17f9e70c70559b9b35013ed3b78e11cd5ac61f1cd50f"

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
