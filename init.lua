-- Line numbers instead of tildes
vim.cmd("set number")

-- Indentation
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")

-- For makefiles, tabs must be used
vim.cmd("autocmd FileType make setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab")
vim.cmd("set clipboard+=unnamedplus")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
