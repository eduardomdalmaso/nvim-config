return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "pyright", "lua_ls" },
      automatic_installation = true,
    },
  },
}
