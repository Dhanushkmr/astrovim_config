-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["y"] = { '"+y', noremap = true },
    ["yy"] = { '"+yy', noremap = true },

    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>lg"] = { "<cmd>RustHoverActions<cr>", desc = "rust hover action" },
    ["∆"] = { ":m .+1<cr>==" },
    ["˚"] = { ":m .-2<cr>==" },
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
    ["<C-u>"] = { "<C-u>zz", desc = "Move half page up" },
    ["<C-d>"] = { "<C-d>zz", desc = "Move half page down" },
    ["<leader>a"] = { name = "Harpoon" },
    ["<leader>aa"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add file to harpoon" },
    ["<leader>am"] = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Toggle quick menu" },
    ["<leader>i"] = { "<cmd>HFccSuggestion<cr>", desc = "Starcoder Insert" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["jk"] = { "<esc>", noremap = true },
    ["y"] = { '"+y', noremap = true },
  },
}
