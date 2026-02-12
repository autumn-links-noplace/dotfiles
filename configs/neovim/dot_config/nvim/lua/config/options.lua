local M = {}

function M.setup()
  -- Line numbers for code files (opt-in approach)
  -- Create autocommand group for line numbers
  vim.api.nvim_create_augroup("LineNumbers", { clear = true })

  -- Define file types that should show line numbers
  local code_filetypes = {
    -- Scripting languages
    "lua", "python", "ruby",
    -- Shell scripts
    "sh", "bash",
    -- Web development
    "javascript", "typescript", "javascriptreact", "typescriptreact",
    "html", "css",
    -- Systems programming
    "rust", "go",
    -- JVM languages
    "java", "kotlin", "scala", "clojure",
    -- Data/config formats
    "json", "yaml",
    -- Markup/documentation
    "markdown",
  }

  -- Enable line numbers for code file types
  vim.api.nvim_create_autocmd("FileType", {
    group = "LineNumbers",
    pattern = code_filetypes,
    callback = function()
      vim.opt_local.number = true

      -- Always show sign column (prevents text shift with git signs/diagnostics)
      -- vim.opt.signcolumn = "yes"

      -- Highlight the current line
      -- vim.opt.cursorline = true

      -- Number of lines to keep above/below cursor
      -- vim.opt.scrolloff = 8
      -- vim.opt.sidescrolloff = 8
    end,
  })
end

return M
