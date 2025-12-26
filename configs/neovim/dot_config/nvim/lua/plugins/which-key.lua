return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      -- Neotree group
      { "<C-K>", group = "neotree", mode = "n" },
      { "<C-K>k", "<cmd>Neotree toggle<cr>", desc = "Toggle File Tree", mode = "n" },
      { "<C-K>r", "<cmd>Neotree reveal<cr>", desc = "Reveal Current File", mode = "n" },
      { "<C-K>b", "<cmd>Neotree toggle show buffers right<cr>", desc = "Toggle Buffer Tree", mode = "n" },

      -- FzfLua group
      { "<C-P>", group = "fuzzy find", mode = "n" },
      { "<C-P>p", "<cmd>FzfLua files<cr>", desc = "Find Files", mode = "n" },
      { "<C-P>u", "<cmd>FzfLua buffers<cr>", desc = "Find Buffers", mode = "n" },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

-- ## Map namespaces
-- 
-- First of all, I can think of mapping keys as in different namespaces:
-- 
-- * `<leader>` + keys
-- * Control keys (like `<C-P>` for CtrlP)
-- * Alt keys
-- * `[` and `]` (used by motions)
-- * Ctrl-W window commands
-- * no-prefix, like `i` in normal mode to enter insert mode
-- 
-- The **leader** space is good because it's a known convention for user maps
-- and vim doesn't define any by default. My leader is ",". A practical
-- issue is left hand keys are easier to type after "," than right hand
-- keys.
-- 
-- **Control keys** are not so good because vim defines a lot of them and the
-- namespace is very crowed. Also, some have meaning for terminals like
-- `<C-S>` to suspend. My research found that only the following are
-- safe to use in normal mode:
-- 
--     h, i, j, m, n, p, k.
-- 
-- I couldn't find any maps defined with **Alt keys**. The drawback I found
-- is that vim won't see them as `<M-X>` or `<A-X>` on OS X. Instead OS X
-- interprets them as international characters like `ñ`. But they can be used
-- if the maps are defined with these characters, like this:
-- 
--     :map œ :echom 'alt q pressed'<CR>
-- 
-- Also on OS X, some alt characters modify the next character, by adding a
-- tilde for example. These are \`, e, u, i, n. I also found others that don't seem to work: b, t.
-- 
-- In sum, avoid these:
-- 
--     `, b, e, i, n, t, u
-- 
-- **Motion keys** are great but should only be used by motions.
-- 
-- **Ctrl-W window keys** are like `<C-W>v` which creates a vertical split.
-- These keys all modify windows. Many keys are already defined.
-- 
-- **No-prefix keys** are used by vim. I'm not sure if any are available
-- for maps.
-- 
-- ## map scopes
-- 
-- I haven't needed this for my customizations, but maps can be scoped to a
-- buffer and to a mode like normal or visual.
