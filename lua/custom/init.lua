-- 自动切换输入法（fcitx框架）

vim.g.fcitxtoggleinput = function()
  -- linux下面i模式切换到n模式关闭输入法
  if vim.fn.has("linux") then
    local input_status = tonumber(vim.fn.system("fcitx-remote"))
    if input_status == 2 then
      vim.fn.system("fcitx-remote -c")
    end
  end
end

-- 退出插入模式时禁用小企鹅输入法
vim.cmd("autocmd insertleave * silent! call fcitxtoggleinput()")
-- 启动vim时关闭小企鹅输入法，不然每次都要切换一下
vim.cmd("autocmd vimenter * silent! call fcitxtoggleinput()")
-- vim.g.vsnip_snippet_dir = "~/.config/nvim/snippet"
--function _g.dump(...)
--    local objects = vim.tbl_map(vim.inspect, {...})
--    print(unpack(objects))
--end

-- vim.filetype.add({
--   pattern = {
--     ["*.launch"] = "launch"
--   }
-- })

-- if vim.fn.has("linux") then
--   vim.g.python3_host_prog = os.getenv("home") .. '/anaconda3/bin/python3'
-- end

-- vim.cmd("set tabstop=4")
-- vim.cmd("set shiftwidth=4")
-- vim.cmd("set softtabstop=4")

local opt = vim.opt
local g = vim.g

-- 设定各种文本的字符编码
opt.encoding = "utf-8"
-- 设定在无操作时，交换文件刷写到磁盘的等待毫秒数（默认为 4000）
opt.updatetime = 100
-- 设定等待按键时长的毫秒数
opt.timeoutlen = 500
-- 是否在屏幕最后一行显示命令
opt.showcmd = true
-- 是否允许缓冲区未保存时就切换
opt.hidden = true
-- 是否开启 xterm 兼容的终端 24 位色彩支持
opt.termguicolors = true
-- 是否高亮当前文本行
opt.cursorline = true
-- 是否开启语法高亮
opt.syntax = "enable"
-- 是否显示绝对行号
opt.number = true
-- 是否显示相对行号
opt.relativenumber = true
-- 设定光标上下两侧最少保留的屏幕行数
opt.scrolloff = 10
-- 是否支持鼠标操作
opt.mouse = "a"
-- 是否启用系统剪切板
opt.clipboard = "unnamedplus"
-- 是否开启备份文件
opt.backup = false
-- 是否开启交换文件
opt.swapfile = false
-- 是否特殊显示空格等字符
opt.list = true
-- 是否开启自动缩进
opt.autoindent = true
-- 设定自动缩进的策略为 plugin
opt.filetype = "plugin"
-- 是否开启高亮搜索
opt.hlsearch = true
-- 是否在插入括号时短暂跳转到另一半括号上
opt.showmatch = true
-- 是否开启命令行补全
opt.wildmenu = true
-- 是否在搜索时忽略大小写
opt.ignorecase = true
-- 是否开启在搜索时如果有大写字母，则关闭忽略大小写的选项
opt.smartcase = true
-- 是否开启单词拼写检查
opt.spell = false
-- 设定单词拼写检查的语言
opt.spelllang = "en_us,cjk"
-- 是否开启代码折叠
opt.foldenable = true
-- 指定代码折叠的策略是按照缩进进行的
opt.foldmethod = "indent"
-- 指定代码折叠的最高层级为 100
opt.foldlevel = 100
-- 设置缩进宽度
opt.tabstop = 4
-- 设置软缩进
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
-- 设置自动换行
opt.wrap = true
-- 开启跨行退格
opt.backspace="indent,eol,start"
-- 设置一行最多100字符
opt.tw = 100
--opt.colorcolumn = 100

opt.guifont = "FuraMono Nerd Font:h13"
opt.cursorline = true
-- cursorline
opt.cul = true
opt.title = true
opt.shortmess:append "sI"
opt.signcolumn = "yes"
opt.splitbelow = true
opt.undofile = true
opt.whichwrap:append "<>[]hl"
