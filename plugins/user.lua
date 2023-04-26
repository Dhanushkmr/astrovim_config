return {
  {
    -- VimBeGood
    'ThePrimeagen/vim-be-good',
    cmd = "VimBeGood"
  },
  { "simrat39/rust-tools.nvim" },
  { 'neovim/nvim-lspconfig' },
  {
    'zbirenbaum/copilot.lua',
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<D-i>",
          }
        }
      })
    end,
  }
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
