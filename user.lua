return {


  -- Add custom filetype
  vim.filetype.add({
    extension = {
      astro = "astro"
    }
  }),
  require 'lspconfig'.html.setup {
    filetypes = { "html", "astro" }
  }
}
