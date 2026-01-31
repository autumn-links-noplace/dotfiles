return {
  "christoomey/vim-tmux-navigator",
  -- How this works:
  -- - <C-w>h/j/k/l maps to :TmuxNavigate*.
  -- - The plugin moves within vim splits first; if you're at an edge it runs `tmux select-pane`.
  -- - Because Neovim runs inside tmux, $TMUX is set so the tmux CLI targets the right server.
  -- - tmux then changes the active pane and focus leaves Neovim.
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  init = function()
    -- We'll provide explicit mappings via lazy's `keys`.
    vim.g.tmux_navigator_no_mappings = 1
  end,
  keys = {
    { "<C-w>h", "<cmd>TmuxNavigateLeft<cr>", mode = "n", desc = "Navigate left (tmux/vim)" },
    { "<C-w>j", "<cmd>TmuxNavigateDown<cr>", mode = "n", desc = "Navigate down (tmux/vim)" },
    { "<C-w>k", "<cmd>TmuxNavigateUp<cr>", mode = "n", desc = "Navigate up (tmux/vim)" },
    { "<C-w>l", "<cmd>TmuxNavigateRight<cr>", mode = "n", desc = "Navigate right (tmux/vim)" },
  },
}
