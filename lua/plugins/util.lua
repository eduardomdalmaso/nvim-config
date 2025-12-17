-- NO ARQUIVO: lua/plugins/SEU_ARQUIVO.lua

return {
  -- ... seus outros plugins ...

  -- 🔌 cappyzawa/trim.nvim: Remove trailing whitespace automaticamente ao salvar
  {
    'cappyzawa/trim.nvim',
    -- Define o evento para carregar e executar o plugin.
    -- O 'BufWritePre' garante que a limpeza ocorra antes de o arquivo ser gravado.
    event = { 'BufWritePre' }, 
    config = function()
      -- O setup é opcional, mas garante que o plugin seja inicializado.
      -- O padrão é remover espaços e tabs no final das linhas.
      require('trim').setup()
    end,
  },
}
