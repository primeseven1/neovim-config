local function do_vimgas_config()
    vim.cmd("autocmd BufNewFile,BufRead *.S set filetype=gas")
end

return {
    "HealsCodes/vim-gas",
    config = do_vimgas_config
}
