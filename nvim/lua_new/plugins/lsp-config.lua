return {
    {
	"williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end,
    },
    {
	"williamboman/mason-lspconfig.nvim",
	config = function()
	    require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "tsserver" }
	    })
	end
    },
    {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
	    local capabilities = require('cmp_nvim_lsp').default_capabilities()
	    local lspconfig = require("lspconfig")
	    lspconfig.lua_ls.setup({capabilities = capabilities})
	    lspconfig.tsserver.setup({capabilities = capabilities})
	    vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
	    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
	end
    },
    {
	"nvim-telescope/telescope-ui-select.nvim",
	config = function()
	    require("telescope").setup({
		extensions = {
		    ["ui-select"] = {
		    require("telescope.themes").get_dropdown {}
		    }
	        }
	    })
	    require("telescope").load_extension("ui-select")
	end
    }
}
