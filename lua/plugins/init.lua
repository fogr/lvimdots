require('plugins.alpha').config()
require('plugins.nvimtree').config()


lvim.plugins = {
  {
    "catppuccin/nvim",
    as = "catppuccin"
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "▏"
      vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
      vim.g.indent_blankline_buftype_exclude = {"terminal"}
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blankline_show_first_indent_level = false
    end
  },

  {
    "github/copilot.vim"
  },
  {
    "lambdalisue/suda.vim"
  },
  {
    'aspeddro/tex.nvim',
     config = function()
        require'tex'.setup{
          engine = 'tectonic',
          viewer = 'evince' -- your pdf viewer or 'xdg-open' to open default viewer
        }
    end
  },
  {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("autosave").setup()
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    requires = {
        "mfussenegger/nvim-dap"
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    requires = {
        "mfussenegger/nvim-dap"
    },
  }
}
