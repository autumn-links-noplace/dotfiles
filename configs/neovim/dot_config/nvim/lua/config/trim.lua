local M = {}

-- Preserve cursor position and search register while executing a command
-- Similar to the Vim Preserve() function
function M.preserve(command)
  -- Save current search register and cursor position
  local save_search = vim.fn.getreg('/')
  local save_cursor = vim.fn.getcurpos()

  -- Execute the command
  vim.cmd(command)

  -- Restore search register and cursor position
  vim.fn.setreg('/', save_search)
  vim.fn.setpos('.', save_cursor)
end

-- Remove trailing whitespace from all lines
function M.remove_trailing_whitespace()
  M.preserve([[%s/\s\+$//e]])
end

-- Setup function to register keymaps
function M.setup()
  vim.keymap.set('n', '<leader>$', M.remove_trailing_whitespace,
    { desc = 'Remove trailing whitespace' })
end

return M
