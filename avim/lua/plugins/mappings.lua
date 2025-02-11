return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- quick save
          ["<C-s>"] = { ":w!<cr>", desc = "Save buffer" },
          -- navigate buffer tabs
          ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
          ["<S-Right>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next Buffer" },
          ["<S-Left>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Prev Buffer" },
          ["<Right>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next Buffer" },
          ["<Left>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Prev Buffer" },
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          -- ["<Leader>b"] = { desc = "Buffers" },
          ["<Leader>lf"] = {
            function() vim.lsp.buf.format() end,
            desc = "Format Buffer",
          },
          -- TODO: Dont know how to add a new column
          -- ["<Leader>m"] = { desc = "Harpoon" },
          -- ["<Leader>m"] = { function() require("harpoon.mark").add_file() end, "Mark file" },
          -- ["<Leader>mt"] = { function() require("harpoon.ui").toggle_quick_menu() end, "Toggle UI" },
          -- ["<Leader>ma"] = { function() require("harpoon.ui").nav_file(1) end, "Goto mark 1" },
          -- ["<Leader>ms"] = { function() require("harpoon.ui").nav_file(2) end, "Goto mark 2" },
          -- ["<Leader>md"] = { function() require("harpoon.ui").nav_file(3) end, "Goto mark 3" },
          -- ["<Leader>mf"] = { function() require("harpoon.ui").nav_file(4) end, "Goto mark 4" },
          -- ["<Leader>mg"] = { function() require("harpoon.ui").nav_file(5) end, "Goto mark 5" },
          -- ["<Leader>mq"] = { function() require("harpoon.ui").nav_file(6) end, "Goto mark 6" },
          -- ["<Leader>mw"] = { function() require("harpoon.ui").nav_file(7) end, "Goto mark 7" },
          -- ["<Leader>me"] = { function() require("harpoon.ui").nav_file(8) end, "Goto mark 8" },
          -- ["<Leader>mr"] = { function() require("harpoon.ui").nav_file(9) end, "Goto mark 9" },
          -- ["<Leader>mn"] = { function() require("harpoon.ui").nav_next() end, "Next file" },
          -- ["<Leader>mp"] = { function() require("harpoon.ui").nav_prev() end, "Prev file" },
          -- ["<Leader>m"] = { desc = "Harpoon" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
