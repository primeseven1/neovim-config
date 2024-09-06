local function do_treesitter_config()
    local config = require("nvim-treesitter.configs")
    config.setup({
        ensure_installed = {
            "asm", "bash", "c", "c_sharp", "cmake", "cpp",
            "css", "html", "javascript", "linkerscript",
            "lua", "luau", "make", "nasm", "python", "typescript",
            "yaml"
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true
        },
    })
end

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = do_treesitter_config
}
