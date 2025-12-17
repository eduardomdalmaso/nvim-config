# Neovim Config - Plugins

Este repositório contém minha configuração personalizada do **Neovim** usando `lazy.nvim`.  
Os plugins estão organizados em módulos dentro de `~/.config/nvim/lua/plugins/`.

## 📂 Estrutura dos Plugins

| Arquivo              | Função                                                                 |
|----------------------|------------------------------------------------------------------------|
| `auto-complete.lua`  | Configuração de auto-complete (provavelmente usando `nvim-cmp` ou similar). |
| `autopairs.lua`      | Inserção automática de pares de caracteres (parênteses, colchetes, aspas). |
| `colorscheme.lua`    | Definição do tema/cores do Neovim.                                      |
| `comment-nvim.lua`   | Atalhos para comentar/descomentar linhas de código.                     |
| `copilot.lua`        | Integração com GitHub Copilot.                                          |
| `copilot-chat.lua`   | Extensão para chat com Copilot dentro do Neovim.                        |
| `iron.lua`           | Configuração do REPL interativo (`iron.nvim`) para rodar código em tempo real. |
| `lsp.lua`            | Configuração geral do LSP (Language Server Protocol).                   |
| `lspconfig.lua`      | Ajustes específicos para servidores LSP.                                |
| `nerdtree.lua`       | Configuração da árvore de arquivos (`nvim-tree` ou `nerdtree`).         |
| `py-env.lua`         | Configuração de ambiente Python (virtualenv, pyenv, etc.).              |
| `surrounds.lua`      | Manipulação de pares de caracteres com `nvim-surround`.                 |
| `syntax.lua`         | Configuração de syntax highlighting (provavelmente com `treesitter`).   |
| `ui.lua`             | Ajustes visuais da interface (statusline, bufferline, etc.).            |
| `util.lua`           | Funções utilitárias usadas em outros módulos.                           |

## 🚀 Como usar

1. Instale o [lazy.nvim](https://github.com/folke/lazy.nvim).
2. Clone este repositório para `~/.config/nvim`.
3. Abra o Neovim e os plugins serão instalados automaticamente.
4. Ajuste o tema em `colorscheme.lua` conforme sua preferência.

## 📌 Observações

- Os plugins são modularizados para facilitar manutenção.
- O `lazy.lua` principal importa todos os módulos da pasta `plugins`.
- Pastas como `data/raw` podem ser usadas para datasets em projetos de Data Science.

---

✨ Com essa configuração, o Neovim se torna um ambiente completo para desenvolvimento, análise de dados e produtividade.

