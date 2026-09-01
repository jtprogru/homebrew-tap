<p align="center">
  <img src="assets/cover.svg" alt="jtprogru/tap — Homebrew tap with personal CLI utilities" width="100%">
</p>

# homebrew-tap

Homebrew tap for my personal utilities.

## Installation

```bash
brew tap jtprogru/tap
```

Then install any of the packages below, for example:

```bash
brew install jtprogru/tap/notiflow
brew install --cask jtprogru/tap/srekit
```

## Formulae

| Formula | Description |
|---------|-------------|
| [asphyxia](Formula/asphyxia.rb) | A fast and efficient network scanner written in Rust |
| [hostsctl](Formula/hostsctl.rb) | Manage `/etc/hosts` from a YAML config: groups, zone files, blocklists, backups |
| [jlic](Formula/jlic.rb) | Generate LICENSE files for open source projects |
| [jtpost](Formula/jtpost.rb) | CLI/web service for managing publications in a Telegram channel |
| [notiflow](Formula/notiflow.rb) | Telegram notifier for CI and the terminal |
| [rspassimpt](Formula/rspassimpt.rb) | Import passwords from a macOS Passwords CSV export into `pass` |
| [tgselector](Formula/tgselector.rb) | Extract and process posts from a Telegram JSON export by id |

## Casks

| Cask | Description |
|------|-------------|
| [go-monkill](Casks/go-monkill.rb) | Run a command after a process with a given PID terminates |
| [indexnow](Casks/indexnow.rb) | IndexNow protocol client for content pipelines |
| [jtgpwgen](Casks/jtgpwgen.rb) | Password generator with configurable character classes and memorable mode |
| [jtsekret](Casks/jtsekret.rb) | CLI for personal secrets management with pluggable backends |
| [noisy](Casks/noisy.rb) | Random HTTP/DNS traffic noise generator (Go port of 1tayH/noisy) |
| [repo-opener](Casks/repo-opener.rb) | Print or open the current Git repository's remote URL in a browser |
| [srekit](Casks/srekit.rb) | Generator of SRE text artifacts: tasks, postmortems, runbooks, RFCs, on-call reports, SLOs, error budget policies, changelogs |
| [things](Casks/things.rb) | CLI for Things 3 via AppleScript with runtime-probed multi-locale support |
| [thingsexporter](Casks/thingsexporter.rb) | Export Things 3 SQLite database to JSON or Markdown |
| [todushka](Casks/todushka.rb) | Terminal Things 3: a keyboard-first TUI todo manager with Inbox / Today / Upcoming workflow and embedded local store |

## Usage

Every package ships a `--help` flag, e.g. `srekit --help`.

## Upgrade

```bash
brew update
brew upgrade jtprogru/tap/<name>
```
