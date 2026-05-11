return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        },
      })
    end,
  },
}