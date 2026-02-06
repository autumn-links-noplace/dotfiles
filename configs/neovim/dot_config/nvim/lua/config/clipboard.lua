local M = {}

function M.setup()
  -- When running inside tmux or over SSH, prefer OSC52 so clipboard
  -- works with the local machine's clipboard via the terminal.
  -- System clipboard updates when explicitly using + (or * maybe) registers
  if vim.env.SSH_TTY or vim.env.TMUX then
    vim.g.clipboard = "osc52"
  end
end

return M
