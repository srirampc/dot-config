-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        shiftwidth = 4,
        tabstop = 4,
        colorcolumn = "80",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

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
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },
        -- quick save
        ["<C-s>"] = { ":w!<cr>", desc = "Save buffer" },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
        --
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
}
