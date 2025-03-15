# My NeoVim Configuration

A modern NeoVim setup focused on Scala development with full LSP support and quality-of-life enhancements.

## Features

- 🚀 **Lazy-loaded plugins with lazy.nvim**
- 🎨 **Tokyo Night color scheme**
- 🌳 **File explorer with Neo-tree**
- 🔍 **Fuzzy finding with Telescope**
- 📝 **LSP support via nvim-lspconfig and mason.nvim**
- ⚙️ **Scala development with nvim-metals**
- 🖥️ **Terminal integration with toggleterm.nvim**
- 💬 **Code commenting with Comment.nvim**
- 🔄 **Git integration with gitsigns.nvim**
- 💻 **Syntax highlighting with nvim-treesitter**
- 💡 **LSP status notifications with fidget.nvim**
- 📊 **Status line with lualine.nvim**
- ⌨️ **Keybinding helper with which-key.nvim**
- 🔣 **Auto-pairs with nvim-autopairs**

## Keybindings

### Core Navigation & Files

- **`Space`** - Leader key
- **`Ctrl+p`** - Find files (Telescope)
- **`Space+fg`** - Live grep search (Telescope)
- **`Space+b`** - Browse open buffers (sorted by recent use)
- **`Space+o`** - Browse recently opened files
- **`Ctrl+n`** - Toggle file explorer (Neo-tree)

### LSP Features (General)

- **`K`** - Hover documentation
- **`gd`** - Go to definition
- **`Space+ca`** - Code actions

### Terminal

- **`Ctrl+\`** - Toggle floating terminal

### Git Integration (Gitsigns)

- **`Space+hs`** - Stage hunk
- **`Space+hr`** - Reset hunk
- **`Space+hS`** - Stage buffer
- **`Space+hu`** - Undo stage hunk
- **`Space+hp`** - Preview hunk
- **`Space+hb`** - Blame line
- **`]c`** - Next hunk
- **`[c`** - Previous hunk

### Comments

- **`gcc`** - Toggle line comment
- **`gc`** - Toggle comment (with motion or in visual mode)
- **`gcb`** - Toggle block comment

### Scala-specific (Metals)

- **`gD`** - Go to definition
- **`gi`** - Go to implementation
- **`gr`** - Find references
- **`gds`** - Document symbol
- **`gws`** - Workspace symbol
- **`Space+cl`** - Run code lens
- **`Space+sh`** - Signature help
- **`Space+rn`** - Rename
- **`Space+f`** - Format
- **`Space+ws`** - Hover worksheet

### Diagnostics

- **`Space+aa`** - All workspace diagnostics
- **`Space+ae`** - All workspace errors
- **`Space+aw`** - All workspace warnings
- **`Space+d`** - Buffer diagnostics only
- **`[c`** - Previous diagnostic
- **`]c`** - Next diagnostic

## Tips and Tricks

- Use **Which Key** by holding the space key to discover available commands.
- The terminal plugin supports multiple sessions with `:ToggleTerm 2` for a second terminal.
- The comment plugin supports operations like `5gcc` to comment 5 lines.
- Telescope's buffer navigation (`Space+b`) sorts by most recently used and skips the current buffer.
- System clipboard integration is enabled by default.
- Gitsigns allows you to preview, stage/unstage, and navigate through changes directly in the editor.

## Installation

### Prerequisites

- **Neovim >= 0.9.0**
- **Git**
- **A Nerd Font** (optional, for icons)
- **Node.js** (for LSP servers)
- **ripgrep** (for Telescope live grep)
