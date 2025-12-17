return {
  {
    'linux-cultist/venv-selector.nvim',
    -- Carrega o plugin quando você abre um arquivo Python
    ft = 'python',
    dependencies = 'neovim/nvim-lspconfig', -- Depende do lspconfig para integração
    opts = {
      -- Configuração opcional: Se você usa Conda, adicione o caminho abaixo
      -- venvs_path = '~/miniconda3/envs/',
      -- Se o seu Conda estiver em outro lugar ou você usar virtualenvs normais,
      -- o plugin geralmente encontra os ambientes automaticamente.
    },
    keys = {
      -- Mapeamento de tecla para abrir o seletor
      { '<leader>pp', '<cmd>VenvSelect<cr>', desc = 'Selecionar Venv' },
      -- Opcional: Para abrir o seletor com o Telescope
      -- { '<leader>vf', function() require('venv-selector').retain() end, desc = 'Selecionar Venv (Filtrado)' },
    }
  }
}
