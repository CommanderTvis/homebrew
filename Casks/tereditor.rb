cask "tereditor" do
  version "0.0.0-nightly.20261114.c6b343b"
  sha256 "4ad29ec2920ba911e05cca033a9b537455bd9550be7e8eb1a27beb5205ca0cc0"

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
