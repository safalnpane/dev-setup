local opt = vim.opt

opt.swapfile = false

opt.inccommand = "split"
opt.smartcase = true
opt.ignorecase = true

opt.number = true
opt.relativenumber = true

opt.cursorline = true
opt.colorcolumn = "80"

opt.wrap = true
opt.linebreak = true

opt.formatoptions:remove "o"

opt.tabstop = 4
opt.shiftwidth = 4

opt.more = false

opt.termguicolors = true

opt.conceallevel=1
