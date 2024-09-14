return {
  { "jackMort/ChatGPT.nvim", enabled = true },
  { "alec-gibson/nvim-tetris", enabled = true },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true },
      keymap = {
        accept = "<Tab>",
      },
    },
  },
  { "lewis6991/gitsigns.nvim" },
}
