return {
  {
    "neovim/nvim-lspconfig", -- LSP Configurations
    dependencies = {
      {
	"folke/lazydev.nvim",
	ft = "lua", -- only load on lua files
	opts = {
	  library = {
	    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	  },
	},
      },
    },
    config = function()
      -- Basic example: Set up a language server
      require("lspconfig").lua_ls.setup({})
      require'lspconfig'.ts_ls.setup{
	init_options = {
	  plugins = {
	    {
	      name = "@vue/typescript-plugin",
	      location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
	      languages = {"javascript", "typescript", "vue"},
	    },
	  },
	},
	filetypes = {
	  "javascript",
	  "typescript",
	  "vue",
	},
      }
    end,
  },
}

