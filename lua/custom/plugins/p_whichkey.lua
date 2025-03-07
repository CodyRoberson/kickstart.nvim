-- This commented out code is the kickstart version of which key which I think I want to setup myself.
-- return {                     -- Useful plugin to show you pending keybinds.
--     'folke/which-key.nvim',
--     event = 'VimEnter', -- Sets the loading event to 'VimEnter'
--     opts = {
--         -- delay between pressing a key and opening which-key (milliseconds)
--         -- this setting is independent of vim.opt.timeoutlen
--         delay = 0,
--         icons = {
--             -- set icon mappings to true if you have a Nerd Font
--             mappings = true,
--             -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
--             -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
--             keys = vim.g.have_nerd_font and {} or {
--             Up = '<Up> ',
--             Down = '<Down> ',
--             Left = '<Left> ',
--             Right = '<Right> ',
--             C = '<C-…> ',
--             M = '<M-…> ',
--             D = '<D-…> ',
--             S = '<S-…> ',
--             CR = '<CR> ',
--             Esc = '<Esc> ',
--             ScrollWheelDown = '<ScrollWheelDown> ',
--             ScrollWheelUp = '<ScrollWheelUp> ',
--             NL = '<NL> ',
--             BS = '<BS> ',
--             Space = '<Space> ',
--             Tab = '<Tab> ',
--             F1 = '<F1>',
--             F2 = '<F2>',
--             F3 = '<F3>',
--             F4 = '<F4>',
--             F5 = '<F5>',
--             F6 = '<F6>',
--             F7 = '<F7>',
--             F8 = '<F8>',
--             F9 = '<F9>',
--             F10 = '<F10>',
--             F11 = '<F11>',
--             F12 = '<F12>',
--             },
--         },

--         -- Document existing key chains
--         spec = {
--             --{ '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
--             { '<leader>d', group = '[D]ocument' },
--             { '<leader>f', group = 'FuzzyFind' },
--             { '<leader>r', group = '[R]ename' },
--             { '<leader>s', group = '[S]earch' },
--             { '<leader>w', group = '[W]orkspace' },
--             { '<leader>t', group = '[T]oggle' },
--             { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
--         },
--     },
-- }

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your conf:wiguration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      delay = 0,
      icons = {
        mappings = true,
        colors = true,
        keys = {
            Up = " "
        },
      },
      show_help = true,
      show_keys = true,
      spec = {
        { '<leader>f', group = 'FuzzyFind' },
        { '<C-s>', desc = 'Save current file'},
        { '<leader>Q', desc = 'Exit vim', icon = {icon = '', color="red"}}
      }
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }