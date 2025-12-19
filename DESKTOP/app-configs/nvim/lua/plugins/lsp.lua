return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        c = {},         
        cpp = {},      
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
	nil_ls = { mason = false }, 
        lua_ls = { mason = false },
	clangd = {
	  capabilities = {
            documentFormattingProvider = false,
          },
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
          cmd = {
            "clangd",
            "--background-index",
            "--query-driver=/nix/store/**/*",
          },
        },
      },
    },
  },
}
