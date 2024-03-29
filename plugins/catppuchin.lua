return {
 "catppuccin/nvim",
 name = "catppuccin",
 opts = {
  dim_inactive = { enabled = true, percentage = 0.25 },
  integrations = {
   nvimtree = false,
   ts_rainbow = false,
   aerial = true,
   dap = { enabled = true, enable_ui = true },
   mason = true,
   neotree = true,
   notify = true,
   sandwich = true,
   semantic_tokens = true,
   symbols_outline = true,
   telescope = true,
   which_key = true,
  },
 },
}
