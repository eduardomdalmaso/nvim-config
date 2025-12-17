return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true, -- ativa sugestões automaticamente
      keymap = {
        accept = "<C-l>",       -- aceita sugestão inteira
        accept_word = "<C-j>",  -- aceita próxima palavra
        accept_line = "<C-k>",  -- aceita próxima linha
        next = "<M-]>",         -- próxima sugestão
        prev = "<M-[>",         -- sugestão anterior
        dismiss = "<C-]>",      -- descartar sugestão
      },
    },
    panel = { enabled = false }, -- painel desativado (LazyVim usa CopilotChat separado)
  },
}
