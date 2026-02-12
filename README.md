# Neovim Config

Personal Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

## Prerequisites

### System packages

```bash
sudo pacman -S --needed \
  neovim \
  git \
  base-devel \
  cmake \
  tree-sitter-cli \
  ripgrep \
  fd \
  lazygit \
  git-delta \
  stylua \
  python \
  python-pip \
  python-black \
  curl \
  wget \
  unzip
```

| Package | Why |
|---------|-----|
| `neovim` | Editor itself |
| `git` | Plugin management, fugitive, lazygit |
| `base-devel` | C compiler for treesitter parsers and telescope-fzf-native |
| `cmake` | Build tool for telescope-fzf-native |
| `tree-sitter-cli` | Required by nvim-treesitter to compile parsers |
| `ripgrep` | Telescope live grep and file finding |
| `fd` | Telescope directory search |
| `lazygit` | Git TUI via lazygit.nvim |
| `git-delta` | Syntax-highlighting pager for lazygit diffs |
| `stylua` | Lua formatter via conform.nvim |
| `python` / `python-pip` / `python-black` | Python formatter via conform.nvim |
| `curl` / `wget` / `unzip` | Mason LSP installer dependencies |

### Node.js (via nvm)

Several LSP servers and formatters require Node.js.

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```

Restart your terminal, then:

```bash
nvm install --lts
```

### npm packages

```bash
npm install -g prettier
```

| Package | Why |
|---------|-----|
| `prettier` | JS/TS/HTML/CSS/JSON/YAML/Markdown formatter via conform.nvim |

## Install

1. Back up any existing config:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

2. Clone this repo:

```bash
git clone https://github.com/mrodhansen/nvim.git ~/.config/nvim
```

3. Open Neovim:

```bash
nvim
```

On first launch, lazy.nvim will bootstrap itself and install all plugins automatically. Wait for it to finish.

4. Install treesitter parsers:

```
:TSUpdate
```

5. Check that LSP servers are installed (Mason handles this automatically, but you can verify):

```
:Mason
```

The following servers should be installed: `lua_ls`, `ts_ls`, `html`, `cssls`, `tailwindcss`, `vue_ls`, `svelte`, `pyright`, `jsonls`, `yamlls`, `bashls`.

6. (Optional) Set up NeoCodeium for AI completions — requires a Codeium account:

```
:NeoCodeium auth
```

## Lazygit Config

Lazygit is configured to use `delta` as its diff pager. Place the following config at `~/.config/lazygit/config.yml`:

```yaml
git:
  pagers:
    - colorArg: always
      pager: delta --dark --paging=never
```

## Keybindings

Leader key is `<Space>`.

### Search (Telescope)

| Key | Action |
|-----|--------|
| `<leader>sf` | Search files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Grep current word |
| `<leader>sh` | Search help tags |
| `<leader>sk` | Search keymaps |
| `<leader>ss` | Search Telescope builtins |
| `<leader>si` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Recent files |
| `<leader>s/` | Grep in open files |
| `<leader>sn` | Search Neovim config files |
| `<leader>sd` | Search and scope into directory |
| `<leader>/` | Fuzzy find in current buffer |
| `<leader><leader>` | Find open buffers |

### Git

| Key | Action |
|-----|--------|
| `<leader>gs` | Open LazyGit |
| `<leader>gr` | Diff view vs main |
| `<leader>gc` | Close diff view |
| `<leader>gpm` | Git pull origin main |

### LSP / Diagnostics

| Key | Action |
|-----|--------|
| `gl` | Open diagnostic float |
| `ga` | Code action |
| `gd` | Go to definition |
| `<leader>fp` | Format file (conform.nvim) |

### General

| Key | Action |
|-----|--------|
| `<leader>pv` | Toggle file tree |
| `<leader>bc` | Close current buffer |
| `<leader>fa` | Auto-indent entire file |
| `<leader>db` | Toggle database UI |
| `<A-j>` / `<A-k>` | Move line up/down |
| `<S-Tab>` (insert) | Accept NeoCodeium suggestion |

## Plugin List

- **Plugin Manager**: lazy.nvim
- **Fuzzy Finder**: telescope.nvim + fzf-native + ui-select
- **LSP**: nvim-lspconfig + mason.nvim + mason-lspconfig
- **Completion**: nvim-cmp + LuaSnip
- **Formatting**: conform.nvim (prettier, black, stylua)
- **Treesitter**: nvim-treesitter + treesitter-context
- **Git**: lazygit.nvim, diffview.nvim, vim-fugitive
- **File Tree**: nvim-tree.lua
- **AI**: NeoCodeium
- **UI**: lualine.nvim, tabline.nvim, alpha-nvim, which-key.nvim, vscode.nvim theme
- **Database**: vim-dadbod + dadbod-ui + dadbod-completion
- **Editing**: Comment.nvim, nvim-autopairs, undotree
- **Misc**: markview.nvim, leetcode.nvim, precognition.nvim, hardtime.nvim
