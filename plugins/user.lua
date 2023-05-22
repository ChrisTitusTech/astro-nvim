return {
  -- Use Ctrl+fp to list recent git projects

  {
    "ahmedkhalf/project.nvim",
    event = "BufRead",
    config = function()
      require("project_nvim").setup()
    end,
  },

  -- Colorschemes
  "folke/tokyonight.nvim",
  "lunarvim/darkplus.nvim",
  "arcticicestudio/nord-vim",

  -- Quick word search under cursor alt+p and alt+n
  "RRethy/vim-illuminate",

  -- Git
  "lewis6991/gitsigns.nvim",

  -- Titus Custom
  "ekickx/clipboard-image.nvim",
  "wakatime/vim-wakatime",
}
