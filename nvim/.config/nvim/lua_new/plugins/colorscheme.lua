return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    style = "moon",
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function()
    vim.cmd.colorscheme("tokyonight")
  end,
}
