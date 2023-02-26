local opt = vim.opt

-- General
opt.clipboard = 'unnamedplus' -- Copy & Paste to clipboard
opt.swapfile = false -- Disable swap
opt.completeopt = 'menuone,noinsert,noselect' -- Autocomplete options

-- UI
opt.guicursor = '' -- Disable insert cursor
opt.number = true -- Line numbers
opt.showmatch = true -- Highlight matching parenthesis
opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Ignore lowercase for the whole pattern
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.wrap = false -- Lines will not wrap and only part of long lines will be displayed

-- Tabs and indent
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 2 -- Shift 2 spaces when tab
opt.tabstop = 2 -- 1 tab == 2 spaces
opt.smartindent = true -- Autoindent new lines
