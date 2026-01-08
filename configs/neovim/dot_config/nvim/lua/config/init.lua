-- Auto-load all config modules with setup functions

-- First, load lazy.nvim configuration
require("config.lazy")

-- Then auto-load all other config modules
local config_path = vim.fn.stdpath("config") .. "/lua/config"
local config_files = vim.fn.glob(config_path .. "/*.lua", false, true)

for _, file in ipairs(config_files) do
  local module_name = file:match("([^/]+)%.lua$")

  -- Skip init.lua (this file) and lazy.lua (already loaded)
  if module_name ~= "init" and module_name ~= "lazy" then
    local ok, mod = pcall(require, "config." .. module_name)

    -- If module loaded successfully and has a setup function, call it
    if ok and type(mod) == "table" and type(mod.setup) == "function" then
      mod.setup()
    end
  end
end
