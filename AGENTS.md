# CommanderTvis/homebrew

Homebrew tap for tereditor (`CommanderTvis/tereditor`) and the discontinued CommanderTvis fork of ThinkRail (`CommanderTvis/thinkrail`, branch `claude-code-integration-plugin-api`).
ThinkRail fork nightlies are discontinued: the formula and cask are frozen at the last build and marked `deprecate!`, and the nightly workflow was removed.

## Artifacts

The repository manages three packages:
- Cask `Casks/tereditor.rb` installs the desktop app `tereditor.app`.
- Formula `Formula/thinkrail.rb` (deprecated) installs the CLI host binary `thinkrail`.
- Cask `Casks/thinkrail-desktop.rb` (deprecated) installs the Electrobun desktop app `ThinkRail-canary.app`.

Nightly builds are unsigned and not notarized. The casks strip quarantine (`com.apple.quarantine`) during postflight so Gatekeeper does not flag the app as damaged. Homebrew 7+ requires running `brew trust --tap commandertvis/homebrew` before loading packages from this tap. The repository was renamed from `homebrew-thinkrail`; taps added under the old name keep working through GitHub's redirect.

## Ownership

`Formula/thinkrail.rb` and `Casks/thinkrail-desktop.rb` are frozen at `0.0.0-nightly.202610300939`; their release assets (`v<version>` and `desktop-updates`) are left in place so installs still resolve. Do not bump them, and keep them out of `README.md`, which covers only tereditor. `Casks/tereditor.rb` downloads the rolling `nightly` release of `CommanderTvis/tereditor`. The workflow `.github/workflows/tereditor.yml` (daily 06:00 UTC or `workflow_dispatch`) is the only writer of its `version` and `sha256` lines: when the disk image's checksum changes it rewrites them in place with `sed`, installs the cask on a macOS runner, and pushes to `main`. Edit the rest of the cask by hand; keep those two lines at two-space indentation so the `sed` patterns still match. `cask_renames.json` maps the old `sharprail` cask to it.

## Verification

Run these checks when modifying tap definitions or automation:
- Lint `.github/workflows/tereditor.yml` with `actionlint`
- Verify Ruby syntax: `ruby -c Formula/thinkrail.rb && ruby -c Casks/thinkrail-desktop.rb && ruby -c Casks/tereditor.rb`
- When the tap is installed locally, run `brew audit --formula <tap>/thinkrail` or `brew style Formula/thinkrail.rb Casks/thinkrail-desktop.rb`
