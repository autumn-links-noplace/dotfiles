return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  init = function()
    -- Disable built-in ftplugin mappings to avoid conflicts
    -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin
    vim.g.no_plugin_maps = true
  end,
  config = function()
    -- Configure nvim-treesitter-textobjects (main branch API)
    require("nvim-treesitter-textobjects").setup {
      move = {
        set_jumps = true,  -- Add to jumplist for <C-o>/<C-i> navigation
      },
    }
    
    -- Define movement keymaps using the new API
    local move = require("nvim-treesitter-textobjects.move")
    
    -- Next/previous function
    vim.keymap.set({ "n", "x", "o" }, "]m", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Next function start" })
    
    vim.keymap.set({ "n", "x", "o" }, "[m", function()
      move.goto_previous_start("@function.outer", "textobjects")
    end, { desc = "Previous function start" })
    
    -- Next/previous class
    vim.keymap.set({ "n", "x", "o" }, "]c", function()
      move.goto_next_start("@class.outer", "textobjects")
    end, { desc = "Next class start" })
    
    vim.keymap.set({ "n", "x", "o" }, "[c", function()
      move.goto_previous_start("@class.outer", "textobjects")
    end, { desc = "Previous class start" })
    
    -- Next/previous loop
    vim.keymap.set({ "n", "x", "o" }, "]o", function()
      move.goto_next_start("@loop.outer", "textobjects")
    end, { desc = "Next loop start" })
    
    vim.keymap.set({ "n", "x", "o" }, "[o", function()
      move.goto_previous_start("@loop.outer", "textobjects")
    end, { desc = "Previous loop start" })
    
    -- Next/previous conditional
    vim.keymap.set({ "n", "x", "o" }, "]i", function()
      move.goto_next_start("@conditional.outer", "textobjects")
    end, { desc = "Next conditional start" })
    
    vim.keymap.set({ "n", "x", "o" }, "[i", function()
      move.goto_previous_start("@conditional.outer", "textobjects")
    end, { desc = "Previous conditional start" })
    
    -- Custom sibling navigation using tree-sitter (main branch API)
    -- Navigate between sibling nodes at the same tree level
    -- Uses built-in vim.treesitter API (no external module required)
    
    -- Jump to first sibling (boundary)
    vim.keymap.set("n", "[X", function()
      local node = vim.treesitter.get_node()
      if node then
        local first_sibling = node
        while first_sibling:prev_named_sibling() do
          first_sibling = first_sibling:prev_named_sibling()
        end
        
        if first_sibling ~= node then
          local row, col = first_sibling:start()
          vim.api.nvim_win_set_cursor(0, {row + 1, col})
        end
      end
    end, { desc = "Jump to first sibling node" })
    
    -- Jump to last sibling (boundary)
    vim.keymap.set("n", "]X", function()
      local node = vim.treesitter.get_node()
      if node then
        local last_sibling = node
        while last_sibling:next_named_sibling() do
          last_sibling = last_sibling:next_named_sibling()
        end
        
        if last_sibling ~= node then
          local row, col = last_sibling:start()
          vim.api.nvim_win_set_cursor(0, {row + 1, col})
        end
      end
    end, { desc = "Jump to last sibling node" })
    
    -- Jump to previous sibling (step-by-step)
    vim.keymap.set("n", "[x", function()
      local node = vim.treesitter.get_node()
      if node then
        local prev = node:prev_named_sibling()
        if prev then
          local row, col = prev:start()
          vim.api.nvim_win_set_cursor(0, {row + 1, col})
        end
      end
    end, { desc = "Jump to previous sibling node" })
    
    -- Jump to next sibling (step-by-step)
    vim.keymap.set("n", "]x", function()
      local node = vim.treesitter.get_node()
      if node then
        local next = node:next_named_sibling()
        if next then
          local row, col = next:start()
          vim.api.nvim_win_set_cursor(0, {row + 1, col})
        end
      end
    end, { desc = "Jump to next sibling node" })
  end,
}
