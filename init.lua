return {

  colorscheme = "nord",


polish = function ()
  vim.cmd([[
  set spell
  ]])

  ---
  -- Titus Custom Markdown HUGO Image Insert
  ---
  require 'clipboard-image'.setup {
    markdown = {
      img_dir = { "content/images", "%:p:h:t", "%:t:r" },
      img_dir_txt = { "/images", "%:p:h:t", "%:t:r" },
      img_name = function()
        vim.fn.inputsave()
        local name = vim.fn.input('Name: ')
        vim.fn.inputrestore()

        if name == nil or name == '' then
          return os.date('%y-%m-%d-%H-%M-%S')
        end
        return name
      end,
      img_handler = function()
        return function(path)
          return os.execute(string.format('~/.scripts/tinypng -s -f %s &', path))
        end
      end
    }
  }

  -- Add projects capability to telescope
  require('telescope').load_extension('projects')
  require 'telescope'.setup({
    defaults = {
      file_ignore_patterns = { "^./.git/", "^node_modules/", "^vendor/", "%.jpg", "%.png" },
    }
  })
end,
}
