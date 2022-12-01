vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.shell = "/bin/zsh"
vim.o.ruler = true
vim.o.number = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.ruler = true
vim.o.number = true
vim.g.mouse = "a"
vim.g.mousemodel="popup"
vim.g.t_Co = 256
vim.g.guioptions = "egmrti"
vim.g.gfn = "Monospace 10"
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- VimTeX config
vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_method = 'zathura'
vim.o.conceallevel = 1
vim.g.tex_conceal = 'abdmg'

require('plugins')
require('onedark').setup {style = 'deep'}
require('onedark').load()
require('airline_fonts')
require('snippy_mappings')
require('dashboard-nvim')
require('keybindings')
