return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      -- Neotree group
      { "<C-K>", group = "neotree", mode = "n" },
      { "<C-K>f", "<cmd>Neotree toggle<cr>", desc = "Toggle File Tree", mode = "n" },
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
