return {
  'folke/tokyonight.nvim',
  lazy = false, -- Carregar este plugin logo no início
  priority = 1000,
  config = function()
    require('tokyonight').setup({
      style = "night", -- ou "moon", "day", "storm"
    })
    vim.cmd.colorscheme 'tokyonight' -- Define o tema como ativo
  end
}
