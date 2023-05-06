return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "xna00/unocss-language-server",
  --   require 'lspconfig'.unocss.setup {
  --     filetypes = { "html", "astro" },
  --     root_dir = function(fname)
  --       return require 'lspconfig.util'.root_pattern('uno.config.ts', 'uno.config.js')(fname)
  --     end
  --   }
  -- }
  {
    "xna00/unocss-language-server",
    config = function()
      require 'lspconfig'.unocss.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "html", "astro" },
        root_dir = function(fname)
          return require 'lspconfig.util'.root_pattern('uno.config.js', 'uno.config.ts')(fname)
        end }
    end,
  }
}
