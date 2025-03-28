return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'jay-babu/mason-nvim-dap.nvim',
    'nvimtools/none-ls.nvim',
    {
      'jay-babu/mason-null-ls.nvim',
      event = { 'BufReadPre', 'BufNewFile' },
    }
  },
  opts = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = {
        'lua_ls',
        'rust_analyzer',
        'pylsp',
      }
    })
    require('mason-nvim-dap').setup()
    require('mason-null-ls').setup({
      handlers = {}
    })
    
    require('lspconfig').pylsp.setup({
      capabilities = capabilities,
      settings = {
        pylsp = {
          plugins = {
            rope_autoimport = {
              enabled = true
            }
          }
        }
      }
    })
    
    require('lspconfig').rust_analyzer.setup({})
  end
}
