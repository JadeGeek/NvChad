local M = {}

M.nvimtree = {
 -- 视图
  view = {
      -- 宽度
      width = 30,
      -- 隐藏顶部的根目录显示
      hide_root_folder = false,
      adaptive_size = false,
      -- 按键绑定
      mappings = {
          custom_only = false,
          list = {
              { key = { "l", "<CR>", "o" }, action = "edit", mode = "n" },
              { key = "h", action = "close_node" },
              { key = "v", action = "vsplit" },
              { key = "q", action = "close" },
              { key = "C", action = "cd" },
          },
      },
      signcolumn = "yes",
  },
  diagnostics = {
      -- 是否启用文件诊断信息
      enable = false,
      icons = {
          hint = "",
          info = "",
          warning = "",
          error = ""
      }
  },
  git = {
      -- 是否启用 git 信息
      enable = true,
      ignore = false,
      timeout = 200
  },
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = { "dashboard" },
  open_on_tab = false,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  update_cwd = true,
  update_focused_file = {
      enable = true,
      update_cwd = false,
  },
  renderer = {
    root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" },
    add_trailing = true
  }
}

M.gitsigns = {
    signs = {
        add          = { hl = 'GitSignsAdd', text = '│', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
        change       = { hl = 'GitSignsChange', text = '│', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
        delete       = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
        topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
        changedelete = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
    },
}

M.mason = {
    ensure_installed = {
        "lua-language-server",
        "cmake-language-server",
        "bash-language-server",
        "clangd",
    },
}

return M
