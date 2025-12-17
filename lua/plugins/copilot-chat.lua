-- ARQUIVO: ~/.config/nvim/lua/plugins/copilot-chat.lua

return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    "zbirenbaum/copilot.lua", -- precisa do copilot.lua já configurado
    "nvim-lua/plenary.nvim",  -- dependência utilitária
  },
  opts = {
    -- Configuração básica
    debug = false,
    show_help = "yes", -- mostra ajuda no painel
    window = {
      layout = "float", -- abre como janela flutuante
      relative = "editor",
      width = 0.4,      -- 40% da largura
      height = 0.3,     -- 30% da altura
      row = 0.5,
      col = 0.5,
    },
  },
  config = function(_, opts)
    local chat = require("CopilotChat")
    chat.setup(opts)

    -- Atalhos práticos
    vim.keymap.set("n", "<leader>cc", function()
      chat.toggle()
    end, { desc = "Copilot Chat: Abrir/Fechar" })

    vim.keymap.set("n", "<leader>ce", function()
      chat.ask("Explique este código")
    end, { desc = "Copilot Chat: Explicar código" })

    vim.keymap.set("v", "<leader>cg", function()
      chat.ask("Gerar código para isso")
    end, { desc = "Copilot Chat: Gerar código da seleção" })
  end,
}
