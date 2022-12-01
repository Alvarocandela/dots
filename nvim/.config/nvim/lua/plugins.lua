return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'navarasu/onedark.nvim'

    -- Startpage
    use 'glepnir/dashboard-nvim'

	-- Plugins
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'Raimondi/delimitMate'
    use 'nvim-tree/nvim-web-devicons'
	use 'romgrk/barbar.nvim'
	use 'alec-gibson/nvim-tetris'
	use 'preservim/nerdtree'
	use 'wakatime/vim-wakatime'
	use 'lervag/vimtex'
    use 'BurntSushi/ripgrep'
    use 'tpope/vim-commentary'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'folke/which-key.nvim'
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Snippets
    use 'dcampos/nvim-snippy'

    -- LSP and completion
    use 'neovim/nvim-lspconfig'
    use "williamboman/mason.nvim"
    use 'williamboman/mason-lspconfig.nvim'
    use 'mfussenegger/nvim-dap'
    require("mason").setup()
    require'lspconfig'.pylsp.setup{} 
    use {'neoclide/coc.nvim', branch = 'release'}
end)
