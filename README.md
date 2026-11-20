# Relay for Claude

Connect Claude to your [Relay](https://relay.md) shared folders. Claude can read, search, write and edit notes in the relays and folders you choose, alongside the people editing them in Obsidian.

This plugin adds one remote MCP server, `https://mcp.relay.md/mcp`. It contains no code that runs on your machine.

## Install

In Claude Code:

```text
/plugin marketplace add relay-md/relay-claude-plugin
/plugin install relay-mcp@relay-mcp
/reload-plugins
```

Or from your shell:

```sh
claude plugin marketplace add relay-md/relay-claude-plugin
claude plugin install relay-mcp@relay-mcp
```

To try a release bundle without installing it, download the `.zip` from the [releases page](https://github.com/relay-md/relay-claude-plugin/releases) and run:

```sh
claude --plugin-dir ./relay-mcp-<version>.zip
```

## Sign in

Run `/mcp` in Claude Code, choose `relay`, and authenticate. Your browser opens the Relay sign-in page, where you choose which relays and folders Claude may use and whether it may edit them or only read them. You can revoke the connection at any time from the Relay console.

## What Claude can do

Within the folders you granted:

- read notes
- search across a folder
- write new notes
- edit existing notes; an edit is merged with what your collaborators typed in the meantime

Claude cannot delete notes, and it cannot reach relays or folders you did not grant.

## Privacy

The plugin sends requests to `mcp.relay.md`, and sign-in is handled by `auth.system3.md`. See the [privacy policy](https://relay.md/privacy) and [terms](https://relay.md/terms).

## Build

Requires `make`, `jq`, `zip` and Claude Code.

```sh
make validate   # claude plugin validate --strict
make bundle     # writes dist/relay-mcp-<version>.zip
```

To release, set `version` in `.claude-plugin/plugin.json`, commit, and push a tag `v<version>`. The release workflow validates the plugin, builds the bundle and attaches it to a GitHub release.

## License

MIT
