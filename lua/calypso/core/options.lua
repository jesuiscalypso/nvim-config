vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs and indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- mixed case is smart search

opt.cursorline = true
opt.wrap = false

-- turn on termguicolors for tokyonight colorscheme to work (?)
-- (have to use iterm2 or any other trye color terminal
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be respected
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

--backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line and insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows 
opt.splitright = true -- split new horizontal window to the right
opt.splitbelow = true -- split new vertical window below the current one
