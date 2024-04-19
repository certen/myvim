return {
  { "shaunsingh/nord.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "folke/zen-mode.nvim" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    },
  },
  --  { "akinsho/toggleterm.nvim", version = "*", opts = {  shell = vim.o.shell,} },
  { "folke/tokyonight.nvim" },
  { "folke/twilight.nvim" },
  {
    "neovim/nvim-lspconfig",
    --  config = function()
    --    local lsp_on_attach = function(client, bufnr)
    --      local bufopts = { noremap = true, silent = true, buffer = bufnr }
    --      vim.keymap.set("n", "<leader>a", vim.diagnostic.open_float, bufopts)
    --    end
    --  end,
    opts = {
      inlay_hints = {
        enabled = true,
      },
      codelens = {
        enabled = true,
      },
    },
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "HiPhish/rainbow-delimiters.nvim" },
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>uu", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = false,
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      -- see below for full list of optional dependencies 👇
    },

    opts = {
      workspaces = {
        {
          name = "myvault",
          path = "~/Sync/obsidian",
        },
      },

      -- see below for full list of options 👇
    },
  },
  {
    "epwalsh/pomo.nvim",
    version = "*", -- Recommended, use latest release instead of latest commit
    lazy = true,
    cmd = { "TimerStart", "TimerRepeat" },
    dependencies = {
      -- Optional, but highly recommended if you want to use the "Default" timer
      "rcarriga/nvim-notify",
    },
    opts = {
      -- See below for full list of options 👇
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      --    colorscheme = "nord",
      -- colorscheme = "gruvbox",
      colorscheme = "catppuccin-macchiato",

      -- colorscheme = "tokyonight",
      -- colorscheme = "onedark",
    },
  },
}
