return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true

      require("nvim-tree").setup({
        renderer = {
          icons = {
            show = {
              file = false,    -- não mostra ícones de arquivos
              folder = false,  -- não mostra ícones de pastas
              folder_arrow = true, -- mantém só a setinha customizada
            },
            glyphs = {
              folder = {
                arrow_open = "v",
                arrow_closed = ">",
              },
            },
          },
        },
      })

      -- Atalhos
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, noremap = true })
      vim.keymap.set("n", "<leader>f", ":NvimTreeFindFile<CR>", { silent = true, noremap = true })
    end,
  },
}
