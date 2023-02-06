local M = {}

function M.setup()
    local whichkey = require("which-key")

    local conf = {
        window = {
            border = "single",
            position = "botton",
        },
    }

    local opts = {
        mode = "n", -- Normal mode
        prefix = "<leader>",
        buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
        silent = true, -- use `silent` when creating keymaps
        noremap = true, -- use `noremap` when creating keymaps
        nowait = false, -- use `nowait` when creating keymaps
    }

    local mappings = {
      ["<leader>e"] = { "<cmd>NERDTreeToggle<cr>", "Toggle Tree" },
      ["<leader>nf"] = { "<cmd>DashboardNewFile<cr>", "New file" },
      ["<leader>ff"] = { "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>", "Find files" },
      ["<leader>fw"] = { "<cmd>Telescope live_grep<cr>", "Find word" },
      ["<leader>fb"] = { "<cmd>Telescope file_browser<cr>", "Find word" },
      ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Find word" },
    }
    whichkey.setup(conf)
    whichkey.register(mappings, opts)
end

return M
