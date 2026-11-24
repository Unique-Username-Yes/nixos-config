local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 12
opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.showbreak = "↪ "
opt.splitright = true
opt.splitbelow = true

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.autoindent = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Behaviour
opt.clipboard = "unnamedplus" -- needs wl-clipboard
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 400
opt.mouse = "a"
opt.confirm = true
opt.exrc = true
