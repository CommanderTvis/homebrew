cask "tereditor" do
  version "0.0.0-nightly.20261120.d9fac10"
  sha256 "39211fd55c206b35466d3a9293097b59f504755e6cc1dbea3abcbe44c38deaab"

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
