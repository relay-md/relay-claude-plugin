# Relay for Claude

Use the notes in your [Relay](https://relay.md) Shared Folders from Claude.

This plugin adds one remote MCP server, `https://mcp.relay.md/mcp`. It contains no code that runs on your machine.

## Install

In Claude Code:

```text
/plugin marketplace add relay-md/relay-claude-plugin
/plugin install relay-md@relay-md
/reload-plugins
```

In claude.ai or the Claude desktop app, download `relay-md-<version>.zip` from the [releases page](https://github.com/relay-md/relay-claude-plugin/releases) and add it under **Customize > Plugins > Add > Upload plugin**.

To try a bundle in Claude Code for one session:

```sh
claude --plugin-dir ./relay-md-<version>.zip
```

## Sign in

Connect the `relay` server: run `/mcp` in Claude Code, or open the plugin's **Connectors** tab in claude.ai. Your browser opens the Relay sign-in page, where you choose which Relay Servers and Shared Folders Claude may use, and whether it may edit them or only read them. You can revoke the connection at any time from the Relay console.

## What Claude can do

Within the Shared Folders you chose:

- read notes
- search across a Shared Folder
- write new notes
- edit existing notes; an edit is merged with what your collaborators typed in the meantime

Claude cannot delete notes, and it cannot reach Relay Servers or Shared Folders you did not choose.

## Privacy

The plugin sends requests to `mcp.relay.md`, and sign-in is handled by `auth.system3.md`. See the [privacy policy](https://relay.md/privacy) and [terms](https://relay.md/terms).

## License

MIT
