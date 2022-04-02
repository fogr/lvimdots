require('inclyc.core.lvim')
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
      require("inclyc.core.indent-blankline").setup()
    end
  },

  { "github/copilot.vim",
    event = "BufRead"
  },
  {
    "lambdalisue/suda.vim",
    event = "BufRead"
  },
  {
    "Pocco81/AutoSave.nvim",
    event = "BufRead",
    config = function()
      require("autosave").setup()
    end
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    event = "BufRead",
    requires = {
        "mfussenegger/nvim-dap"
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "BufRead",
    requires = {
        "mfussenegger/nvim-dap"
    },
  },
  {
    'lervag/vimtex',
    opt = true,
    config = require('inclyc.core.vimtex').config,
    ft = 'tex'
  },
  { "jbyuki/instant.nvim" },
  {
    'sindrets/diffview.nvim',
    event = 'BufRead',
    requires = 'nvim-lua/plenary.nvim' ,
    setup = function ()
      require("inclyc.core.diffv").setup()
    end
  }
}
