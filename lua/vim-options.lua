vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_set_option("clipboard","unnamed")

-- Some configuration necessary for nvim-metals (https://github.com/scalameta/nvim-metals/blob/main/doc/metals.txt)
vim.opt_global.shortmess:remove("F")

vim.g.mapleader = " " 

