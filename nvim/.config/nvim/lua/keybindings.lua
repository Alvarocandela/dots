local builtin = require('telescope.builtin')
local opts = { noremap = true, silent = true}
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader=" "
vim.g.localmapleader=" "
vim.keymap.set("n", "<leader>", ":WhichKey <leader><cr>", {silent=true})
vim.keymap.set("n", "<leader>e", ":NERDTreeToggle<cr>", opts)
vim.keymap.set("n", "<leader>nf", ":DashboardNewFile <cr>", opts)
vim.keymap.set('n', '<leader>ff', ":Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>", opts)
vim.keymap.set('n', '<leader>fw', ":Telescope live_grep<cr>", opts)
vim.keymap.set('n', '<leader>fb', ":Telescope file_browser<cr>", opts)
vim.keymap.set('n', '<leader>fh', ":Telescope help_tags<cr>", opts)

vim.cmd([[
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
]])
