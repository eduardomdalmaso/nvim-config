return {
  "kylechui/nvim-surround",
  version = "*", -- usa a versão estável
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      surrounds = {
        ["("] = { add = { "(", ")" } },
        [")"] = { add = { "(", ")" } },
        ["["] = { add = { "[", "]" } },
        ["]"] = { add = { "[", "]" } },
        ["{"] = { add = { "{", "}" } },
        ["}"] = { add = { "{", "}" } },
        ['"'] = { add = { '"', '"' } },
        ["'"] = { add = { "'", "'" } },
      },
    })
  end,
}
