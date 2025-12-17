return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("pyright", {})
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    })
  end,
}
