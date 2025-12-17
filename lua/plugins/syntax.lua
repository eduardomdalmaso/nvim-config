-- NO ARQUIVO: plugins/editor.lua ou um novo arquivo 'syntax.lua'

return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- Comando para instalar os parsers após a primeira instalação
    event = { 'BufReadPost', 'BufNewFile' }, -- Carrega o plugin ao abrir arquivos
    config = function()
      require('nvim-treesitter.configs').setup({
        -- 1. Instalação de Linguagens: Quais linguagens o Treesitter deve analisar
        ensure_installed = { "lua", "vim", "python", "html", "css", "c", "markdown", "markdown_inline" },

        -- 2. Ativar o Destaque (Syntax Highlighting):
        highlight = {
          enable = true,
          -- Desabilitar em buffers grandes (opcional, para performance)
          disable = function(lang, buf)
              local max_filesize = 100 * 1024 -- 100 KB
              local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
              if ok and stats and stats.size > max_filesize then
                  return true
              end
          end,
        },

        -- 3. Outras funcionalidades úteis:
        indent = { enable = true }, -- Indentação baseada na sintaxe
      })

      -- Garante que o Treesitter seja iniciado para as linguagens mais usadas
      -- vim.opt.foldmethod = 'expr'
      -- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end
  }
}
