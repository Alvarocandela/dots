return {
  {
    "scottmckendry/cyberdream.nvim",
    opts = {
      transparent = true,

      italic_comments = true,

      borderless_telescope = true,

      cache = true,

      extensions = {
        notify = true,
        dashboard = true,
        lazy = true,
        whichkey = true,
        treesitter = true,
        noice = true,
        mini = true,
      },
    },
  },

  { "LazyVim/LazyVim", opts = {
    colorscheme = "cyberdream",
  } },
}
