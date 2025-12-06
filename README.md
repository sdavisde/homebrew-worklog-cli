# homebrew-worklog-cli

A Homebrew tap for [worklog-cli](https://github.com/sdavisde/worklog-cli) - a daily task and time tracking CLI tool with Markdown-based notes.

## Installation

To install `worklog-cli` using this tap:

```bash
# Add the tap
brew tap sdavisde/worklog-cli

# Install worklog-cli
brew install worklog-cli
```

Or install directly:

```bash
brew install sdavisde/worklog-cli/worklog-cli
```

## Usage

After installation, you can use the `wl` command:

```bash
# Get help
wl --help

# Open today's note
wl open

# Add a task
wl task "Fix bug in login flow"

# View previous day's note
wl last
```

## About

This tap provides the `worklog-cli` tool, which is a modular CLI for daily task and time tracking designed for AI querying and summarization. For more information, visit the [main repository](https://github.com/sdavisde/worklog-cli).
