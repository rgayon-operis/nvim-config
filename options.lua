require "nvchad.options"

vim.filetype.add {
  extension = {
    jinja = 'jinja',
    jinja2 = 'jinja',
    j2 = 'jinja',
  },
}

require("todo-comments").setup()

-- Configure snippet location
vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/snippets"
