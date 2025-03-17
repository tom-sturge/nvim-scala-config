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


-- WSL Settings

if vim.fn.has("clipboard") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end
