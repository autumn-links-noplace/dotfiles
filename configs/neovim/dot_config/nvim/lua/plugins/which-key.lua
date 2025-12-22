return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      -- Neotree group
      { "<M-R>", group = "neotree", mode = "n" },
      { "<M-R><M-F>", "<cmd>Neotree toggle<cr>", desc = "Toggle File Tree", mode = "n" },
      { "<M-R><M-R>", "<cmd>Neotree reveal<cr>", desc = "Reveal Current File", mode = "n" },
      { "<M-R><M-B>", "<cmd>Neotree toggle show buffers right<cr>", desc = "Toggle Buffer Tree", mode = "n" },

      -- FzfLua group
      { "<C-P>", group = "fuzzy find", mode = "n" },
      { "<C-P><C-P>", "<cmd>FzfLua files<cr>", desc = "Find Files", mode = "n" },
      { "<C-P><C-U>", "<cmd>FzfLua buffers<cr>", desc = "Find Buffers", mode = "n" },
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
