lvim.colorscheme = "catppuccin-macchiato"
vim.keymap.set("i", "jj", "<Esc>")
lvim.format_on_save.enabled = true

lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    'wfxr/minimap.vim',
    build = "cargo install --locked code-minimap",
    cmd = { "MinimapToggle" },
    config = function()
      vim.cmd("let g:minimap_width = 15")
      vim.cmd("let g:minimap_auto_start = 1")
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "tpope/vim-surround"
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
  {
    "j-hui/fidget.nvim"
  },
  {
    "Pocco81/true-zen.nvim"
  },
  {
    "folke/twilight.nvim"
  },
}

-- trouble
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- terminal
lvim.builtin.which_key.mappings["T"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=20 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=20 direction=horizontal<cr>", "Split horizontal" },
}

-- minimap
lvim.builtin.which_key.mappings["m"] = {
  name = "+Minimap",
  t = { "<cmd>MinimapToggle<cr>", "Toggle Minimap" }
}

lvim.builtin.which_key.mappings["z"] = {
  name = "+Zen",
  t = { "<cmd>Twilight<CR>", "Toggle Twilight" },
  a = { "<cmd>TZAtaraxis<CR>", "Zen Ataraxis" },
  m = { "<cmd>TZMinimalist<CR>", "Zen Minimalist" },
  n = { "<cmd>TZNarrow<CR>", "Zen Narrow" },
  f = { "<cmd>TZFocus<CR>", "Zen Focus" },
}
