return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          layout_config = { horizontal = { preview_width = 0.55 } },
        },
      })
      require("telescope").load_extension("fzf")

      local map = vim.keymap.set
      map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
      map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
      map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
      map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
    end,
  },
}
