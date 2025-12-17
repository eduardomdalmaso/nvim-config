-- ARQUIVO: ~/.config/nvim/lua/plugins/cmp.lua

return {
  -- Plugin principal: O Motor de Autocompletar
  {'hrsh7th/nvim-cmp'}, 

  -- Fontes de Sugestão Essenciais:
  
  -- 1. LSP: Obtém sugestões do Language Server (Pyright, lua-ls, etc.)
  {'hrsh7th/cmp-nvim-lsp'},
  
  -- 2. Buffer: Obtém sugestões das palavras já digitadas no buffer
  {'hrsh7th/cmp-buffer'}, 

  -- 3. Caminhos: Ajuda a completar caminhos de arquivos (ex: require('./...'))
  {'hrsh7th/cmp-path'},

  -- Configuração Final: Define mapeamentos de teclas e prioridade das fontes
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
    },
    config = function()
      -- Carrega o módulo CMP
      local cmp = require('cmp')
      local mapping = cmp.mapping
      
      cmp.setup({
        -- Mapeamentos de Teclas:
        mapping = mapping.preset.insert({
          -- Aceitar/Confirmar a sugestão selecionada:
          ['<CR>'] = mapping.confirm({ select = true }), 
          -- OU use <C-y> (atalho comum no Vim)
          -- ['<C-y>'] = mapping.confirm({ select = true }), 

          -- Navegar para a próxima sugestão:
          ['<C-n>'] = mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          
          -- Navegar para a sugestão anterior:
          ['<C-p>'] = mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          
          -- Trigger (forçar) a janela de sugestões novamente:
          ['<C-Space>'] = mapping.complete(),
        }),

        -- Fontes de Sugestão (Prioridade de cima para baixo):
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },    -- Sugestões do Language Server
          { name = 'buffer' },      -- Sugestões do buffer atual
          { name = 'path' },        -- Sugestões de caminhos
        }),
      })
    end
  }
}
