return {
  -- Modes
  --   normal_mode = "n",
  --   insert_mode = "i",
  --   visual_mode = "v",
  --   visual_block_mode = "x",
  --   term_mode = "t",
  --   command_mode = "c",

  -- Normal --
  n = {
    -- NvimTree
    ["<leader>f"] = { ":NvimTreeToggle<CR>", desc = "" },

    -- Telescope
    ["<leader>ff"] = { ":Telescope find_files<CR>", desc = "" },
    ["<leader>fp"] = { ":Telescope projects<CR>", desc = "" },
    ["<leader>fb"] = { ":Telescope buffers<CR>", desc = "" },

    -- Git
    ["<leader>gg"] = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", desc = "" },

    ["<leader>/"] = { "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", desc = "" },

    -- Custom
    ["<leader>p"] = { "<cmd> PasteImg <CR>", desc = "" },
    ["<leader>e"] = { "$", desc = "" },
    ["S"] = { "<cmd> %s//g", desc = "" },
    ["<F5>"] = { "<cmd> UndotreeToggle <CR> <cmd> UndotreeFocus <CR>", desc = "" },
    ["<Leader>1"] = { "1gt<CR>", desc = "" },
    ["<Leader>2"] = { "2gt<CR>", desc = "" },
    ["<Leader>3"] = { "3gt<CR>", desc = "" },
    ["<Leader>4"] = { "4gt<CR>", desc = "" },
    ["<Leader>5"] = { "5gt<CR>", desc = "" },
    ["<Leader>t"] = { "<cmd> tabnew<CR>", desc = "" },
    ["<Leader>c"] = { "<cmd> tabclose<CR>", desc = "" },
  }
}
