local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true

opt.mouse:append("a")

-- opt.clipboard:append("unnamedplus")

-- window split
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true

opt.signcolumn = "yes"
