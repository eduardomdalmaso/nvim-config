return {
  "Vigemus/iron.nvim",
  lazy = false,
  config = function()
    local iron = require("iron.core")
    local view = require("iron.view")
    local common = require("iron.fts.common")

    iron.setup {
      config = {
        scratch_repl = true,
        repl_definition = {
          sh = {
            command = { "zsh" },
          },
          python = {
            command = { "python3" }, -- ou { "ipython", "--no-autoindent" }
            format = common.bracketed_paste_python,
            block_dividers = { "# %%", "#%%" },
            env = { PYTHON_BASIC_REPL = "1" }, -- necessário para python3.13+
          },
        },
        repl_filetype = function(bufnr, ft)
          return ft
        end,
        dap_integration = true,
        repl_open_cmd = view.split.vertical.rightbelow("%50"),
      },
      keymaps = {
        toggle_repl = "<leader>rr",       -- abre/fecha REPL
        restart_repl = "<leader>rR",      -- reinicia REPL
        send_motion = "<leader>sm",       -- envia movimento (ex.: vip)
        visual_send = "<leader>sv",       -- envia seleção visual
        send_file = "<leader>sf",         -- envia arquivo inteiro
        send_line = "<leader>sl",         -- envia linha atual
        send_paragraph = "<leader>sp",    -- envia parágrafo
        send_until_cursor = "<leader>su", -- envia até cursor
        send_code_block = "<leader>sb",   -- envia bloco de código
        send_code_block_and_move = "<leader>sn",
        mark_motion = "<leader>mc",
        mark_visual = "<leader>mv",
        remove_mark = "<leader>md",
        cr = "<leader>s<cr>",
        interrupt = "<leader>s<space>",
        exit = "<leader>sq",
        clear = "<leader>cl",
      },
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true,
    }

    -- keymaps extras
    vim.keymap.set("n", "<leader>rf", "<cmd>IronFocus<cr>")
    vim.keymap.set("n", "<leader>rh", "<cmd>IronHide<cr>")
  end,
}
