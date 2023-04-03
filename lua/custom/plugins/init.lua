return {
  ["neovim/nvim-lspconfig"] = {
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.plugins.lspconfig")
    end
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.conf.null-ls")
    end,
  },
  -- ["olimorris/onedarkpro.nvim"] = {
  --   config = function ()
  --     require("custom.conf.onedarkpro")
  --   end
  -- },
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["kevinhwang91/nvim-hlslens"] = {
    config = function ()
      require("custom.conf.nvim-hlslens")
    end,
  },
  ["Pocco81/AutoSave.nvim"] = {
    config = function ()
      require("custom.conf.AutoSave")
    end,
  },
  ["petertriho/nvim-scrollbar"] = {
    config = function ()
      require("custom.conf.nvim-scrollbar")
    end
  },
  ["rcarriga/nvim-notify"] = {
    config = function ()
      require("custom.conf.nvim-notify")
    end
  },
  ["folke/todo-comments.nvim"] = {
    config = function ()
      require("custom.conf.todo-comments")
    end
  },
  ["tami5/lspsaga.nvim"] = {
    config = function ()
      require("custom.conf.lspsaga")
    end
  },
  ["folke/neodev.nvim"] = {
    after = "nvim-lspconfig",
    config = function ()
      require("custom.conf.neodev")
    end
  },
  ["ray-x/lsp_signature.nvim"] = {
    config = function ()
      require("custom.conf.lsp_signature")
    end
  },
  ["kosayoda/nvim-lightbulb"] = {
    config = function ()
      require("custom.conf.nvim-lightbulb")
    end
  },
  ["stevearc/dressing.nvim"] = {
    config = function ()
      require("custom.conf.dressing")
    end
  },
  ["sindrets/diffview.nvim"] = {
    requires = {
      "nvim-lua/plenary.nvim"
    },
    after = "plenary.nvim",
    cmd = {
      'DiffviewOpen',
      'DiffviewFileHistory',
      'DiffviewClose',
      'DiffviewToggleFiles',
      'DiffviewFocusFiles',
      'DiffviewRefresh'
    },
    config = function ()
      require("custom.conf.diffview")
    end

  },
  ["kdheepak/lazygit.nvim"] = {
    requires = {
      "nvim-lua/plenary.nvim"
    },
    config = function ()
      require("custom.conf.lazygit")
    end
  },
  ["jdhao/better-escape.vim"] = {
    config = function ()
      require("custom.conf.better-escape")
    end
  },
  ["vim-scripts/DoxygenToolkit.vim"] = {
    ft = "cpp"
  },
  ["aperezdc/vim-template"] = {
    config = function ()
      local utils = require("custom.utils")
      vim.g.templates_directory = utils.join_paths(vim.fn.stdpath("config"), "lua", "custom", "template")
      -- NOTE:replace with your own email address if not correct
      vim.g.user = utils.get_git_user()
      vim.g.email = utils.get_git_email()
    end
  },
  ["yamatsum/nvim-cursorline"] = {
    config = function()
      require("custom.conf.nvim-cursorline")
    end
  },
  ["gpanders/editorconfig.nvim"] = {
  },
  ['ggandor/lightspeed.nvim'] = {
    -- config = function()
    --   require("custom.conf.lightspeed")
    -- end
  },
  ['akinsho/toggleterm.nvim'] = {
    config = function()
      require("custom.conf.toggleterm")
    end
  },
  ["mfussenegger/nvim-dap"] = {
    config = function()
      require("custom.conf.nvim-dap")
    end
  },
  ["rcarriga/nvim-dap-ui"] = {
    config = function()
      require("custom.conf.nvim-dap-ui")
    end
  },
  ["theHamsta/nvim-dap-virtual-text"] = {
    config = function()
      require("custom.conf.nvim-dap-virtual-text")
    end
  },
}
