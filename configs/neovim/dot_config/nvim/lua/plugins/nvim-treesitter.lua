return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    -- Initialize nvim-treesitter (main branch API)
    require('nvim-treesitter').setup {
      -- Optional: specify install directory
      -- install_dir = vim.fn.stdpath('data') .. '/site'
    }
    
    -- Install parsers for the languages we want
    require('nvim-treesitter').install({
      'c',
      'css',
      'go',
      'html',
      'java',
      'javascript',
      'lua',
      'markdown',
      'markdown_inline',
      'python',
      'ruby',
      'rust',
      'typescript',
      'vim',
      'vimdoc',
    })

    -- Enable treesitter highlighting for all filetypes
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'c', 'css', 'go', 'html', 'java', 'javascript', 'lua', 'markdown', 'python', 'ruby', 'rust', 'typescript', 'vim' },
      callback = function()
        vim.treesitter.start()
      end,
    })

    -- Enable treesitter indentation (experimental)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'c', 'css', 'go', 'html', 'java', 'javascript', 'lua', 'markdown', 'python', 'ruby', 'rust', 'typescript', 'vim' },
      callback = function()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end
}
