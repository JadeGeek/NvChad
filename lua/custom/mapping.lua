local M = {}

M.toggleterm = {

  n = {
    -- 打开普通终端
     ["<leader>tt"] = {"<cmd>exe v:count.'ToggleTerm'<CR>", "Open Normal Terminal"},
    -- 打开浮动终端
     ["<leader>tf"] = {"<cmd>lua require('toggleterm').float_toggle()<CR>", "Open Float Terminal"},
    -- 打开lazy git 终端
     ["<leader>tg"] = {"<cmd>lua require('toggleterm').lazygit_toggle()<CR>", "Open Lazygit Terminal"},
    -- 打开或关闭所有终端
     ["<leader>ta"] = {"<cmd>ToggleTermToggleAll<CR>", "Toggle All Terminals"},
  };

  t = {
    -- 退出终端插入模式
     ["<Esc>"] = {"<C-\\><C-n>", "Exit Terminal Insert Mode"},
  }
}

M.dap = {

  n = {
    -- 打断点
     ["<leader>db"] = {"<cmd>lua require'dap'.toggle_breakpoint()<CR>", "Debug Set Breakpoint"},
    -- 显示或隐藏调试界面
     ["<leader>du"] = {"<cmd>lua require'dapui'.toggle()<CR>", "Toggle Debug UI"},
    -- 开启调试或到下一个断点处
     ["<F5>"] = {"<cmd>lua require'dap'.continue()<CR>", "Debug Continue Next Breakpoint"},
    -- 单步进入执行（会进入函数内部，有回溯阶段）
     ["<F6>"] = {"<cmd>lua require'dap'.step_into()<CR>", "Debug Step Into"},
    -- 单步跳过执行（不进入函数内部，无回溯阶段）
     ["<F7>"] = {"<cmd>lua require'dap'.step_over()<CR>", "Debug Step Over"},
    -- 步出当前函数
     ["<F8>"] = {"<cmd>lua require'dap'.step_out()<CR>", "Debug Step Out"},
    -- 重启调试
     ["<F9>"] = {"<cmd>lua require'dap'.run_last()<CR>", "Debug Run Last"},
    -- 退出调试（关闭调试，关闭 repl，关闭 ui，清除内联文本）
     ["<F10>"] = {"<cmd>lua require'dap'.close()<CR><cmd>lua require'dap.repl'.close()<CR><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<CR>", "Debug End"},
  };

}


return M

