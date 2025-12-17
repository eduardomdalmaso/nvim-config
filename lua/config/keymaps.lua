-- Configuração de mapeamentos de teclas personalizados
vim.g.mapleader = ' ' -- Define o prefixo <leader> como a barra de espaço
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = "Mostrar Diagnósticos Flutuantes" })
