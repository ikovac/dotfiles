require('nvim-tree').setup({
  view = {
    side = 'left',
    adaptive_size = true
  },
  git = {
    ignore = false    -- Show gitignore files
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})
