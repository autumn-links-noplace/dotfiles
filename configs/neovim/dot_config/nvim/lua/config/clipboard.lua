local M = {}

function M.setup()
  -- When running inside tmux or over SSH, prefer OSC52 so clipboard
  -- works with the local machine's clipboard via the terminal.
  if vim.env.SSH_TTY or vim.env.TMUX then
    vim.g.clipboard = "osc52"
    vim.opt.clipboard:append("unnamedplus")
  end
end

return M
