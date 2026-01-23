# Neovim Configuration

## Keybinding Reference

### [ and ] Namespace Analysis

A comprehensive guide to available keys in the `[` and `]` namespace for custom keybindings.

#### TIER 1: Highly Available (Best Choices)

**Lowercase:**
- `[j` / `]j` ✅ FREE - Excellent choice
- `[k` / `]k` ✅ FREE - Excellent choice  
- `[v` / `]v` ✅ FREE - Excellent choice

**Uppercase (19 keys available):**
- `[A` `]A`  `[C` `]C`  `[D` `]D`  `[E` `]E`  `[F` `]F`  `[G` `]G`  `[H` `]H`  `[I` `]I`  `[J` `]J`
- `[K` `]K`  `[N` `]N`  `[O` `]O`  `[R` `]R`  `[U` `]U`  `[V` `]V`  `[W` `]W`  `[X` `]X`  `[Y` `]Y`  `[Z` `]Z`

#### TIER 2: Mostly Available (Good Choices)

- `[n` / `]n` ⚡ Mostly free (rare: conflict markers)
- `[r` / `]r` ⚡ Mostly free (rare: LSP references)
- `[u` / `]u` ⚡ Free if not using vim-unimpaired
- `[x` / `]x` ⚡ Free if not using vim-unimpaired
- `[y` / `]y` ⚡ Free if not using vim-unimpaired
- `[g` / `]g` ⚡ Free if not using git conflict navigation

#### TIER 3: Context-Dependent

- `[a` / `]a` ⚡ Free if not using treesitter arguments
- `[i` / `]i` ⚡ Free if not using treesitter conditionals
- `[o` / `]o` ⚡ Free if not using treesitter loops

#### AVOID: Taken or Very Common

**Built-in Vim/Neovim:**
- `[c` `]c`  `[f` `]f`  `[m` `]m`  `[p` `]p`  `[s` `]s`  `[z` `]z`
- `[M` `]M`  `[P` `]P`  `[S` `]S`
- `[[` `]]` `[]` `][` `[(` `])` `[{` `]}` `['` `]'` `[`` `]``
- `[#` `]#` `[*` `]*` `[/` `]/` `[<Space>` `]<Space>` `[<Tab>` `]<Tab>`

**Very Common Plugins:**
- `[b` `]b`  `[d` `]d`  `[e` `]e`  `[h` `]h`  `[l` `]l`  `[q` `]q`  `[t` `]t`  `[w` `]w`
- `[B` `]B`  `[L` `]L`  `[Q` `]Q`  `[T` `]T`

#### Pattern Observations

**Vim's Design Philosophy:**
- `[` = backward/previous
- `]` = forward/next
- Lowercase = step-by-step movement
- Uppercase = boundaries/edges (vim-unimpaired pattern)

**Plugin Conventions:**
- LSP/diagnostics: `d` `e` `w` (diagnostics, errors, warnings)
- Git: `c` `h` `g` (changes, hunks, git)
- Lists: `q` `l` (quickfix, location)
- Navigation: `b` `t` (buffers, tabs)
- Treesitter: `m` `c` `o` `i` `a` (methods, classes, loops, conditionals, arguments)

---

## Current Keybindings

### Semantic Navigation (nvim-treesitter-textobjects)

**Navigate anywhere in file:**
- `]m` / `[m` - Next/previous function
- `]c` / `[c` - Next/previous class
- `]o` / `[o` - Next/previous loop
- `]i` / `[i` - Next/previous conditional

**Sibling navigation (same tree level):**
- `]X` / `[X` - Last/first sibling (boundaries)
- `]x` / `[x` - Next/previous sibling (step-by-step)

Works in all tree-sitter enabled languages:
- Code: function parameters, class methods, if/else branches
- Text: list items, paragraphs, headings at same level

### Git Integration (gitsigns.nvim)

**Navigate git hunks:**
- `]h` / `[h` - Next/previous git hunk

**Hunk actions:**
- `<leader>hs` - Stage hunk (works in normal + visual mode)
- `<leader>hr` - Reset hunk (works in normal + visual mode)
- `<leader>hS` - Stage entire buffer
- `<leader>hR` - Reset entire buffer
- `<leader>hu` - Undo stage hunk
- `<leader>hp` - Preview hunk in popup window
- `<leader>hi` - Preview hunk inline (shows diff in buffer)

**Text object:**
- `ih` - Select git hunk (use with `vih`, `dih`, `yih`, `cih`, etc.)

**Additional commands:**
- `:Gitsigns toggle_current_line_blame` - Toggle inline blame at end of line
- `:Gitsigns diffthis` - Show diff against index
- `:Gitsigns blame_line` - Show blame for current line

### Document Outline (aerial.nvim)

- `{` / `}` - Previous/next document symbol
- `<leader>a` - Toggle outline window

### Other Keybindings

- `<leader>$` - Remove trailing whitespace

---

## Configuration Structure

```
lua/
├── config/
│   ├── init.lua        # Auto-loads all config modules
│   ├── lazy.lua        # Lazy.nvim plugin manager setup
│   └── trim.lua        # Whitespace trimming utilities
├── plugins/
│   ├── nvim-treesitter.lua
│   ├── nvim-treesitter-textobjects.lua  # Navigation keybindings defined here
│   ├── aerial.lua
│   ├── fzf-lua.lua
│   ├── gitsigns.lua
│   ├── lsp.lua
│   ├── neo-tree.nvim.lua
│   ├── tokyonight.lua
│   └── which-key.lua
└── init.lua           # Entry point
```

All keybindings that depend on plugins should be defined in the respective plugin's config file to ensure proper load order.
