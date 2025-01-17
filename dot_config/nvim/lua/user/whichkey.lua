local M = {
  "folke/which-key.nvim",
  dependencies = {
    "echasnovski/mini.icons"
  }
}

function M.config()
  local mappings = {
    { "<leader>b", group = "Buffers" },
    { "<leader>d", group = "Debug" },
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
    { "<leader>l", group = "LSP" },
    { "<leader>p", group = "Plugins" },
    { "<leader>t", group = "Test" },
    { "<leader>T", group = "Treesitter" },
    { "<leader>a", group = "Tab" },
    { "<Tab>", "<cmd>bnext<CR>", desc = "Move to next buffer" },
    { "<S-Tab>", "<cmd>bprev<CR>", desc = "Move to prev buffer" },
    { "<leader>x", "<cmd>bp | sp | bn | bd<CR>", desc = "Close current buffer" },
    { "<leader>;", "<cmd>tabnew | terminal<CR>", desc = "Term" },
    { "<leader>aN", "<cmd>tabnew %<cr>", desc = "New Tab" },
    { "<leader>ah", "<cmd>-tabmove<cr>", desc = "Move Left" },
    { "<leader>al", "<cmd>+tabmove<cr>", desc = "Move Right" },
    { "<leader>an", "<cmd>$tabnew<cr>", desc = "New Empty Tab" },
    { "<leader>ao", "<cmd>tabonly<cr>", desc = "Only" },
    { "<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL" },
    { "<leader>q", "<cmd>confirm q<CR>", desc = "Quit" },
    { "<leader>v", "<cmd>vsplit<CR>", desc = "Split" },
  }

  local which_key = require "which-key"
  which_key.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        window = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    win = {
      border = "rounded",
      padding = { 2, 2, 2, 2 },
    },
    -- ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  which_key.add(mappings, opts)
end

return M
