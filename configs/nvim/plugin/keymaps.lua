local set = vim.keymap.set


-- Allow me to move highlighted chunks (ThePrimeagen made me do it!)
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")


-- Split navigation
set("n", "ss", ":split<CR><c-w>w")
set("n", "sv", ":vsplit<CR><c-w>w")

set("n", "sj", "<C-w>j")
set("n", "sk", "<C-w>k")
set("n", "sh", "<C-w>h")
set("n", "sl", "<C-w>l")
