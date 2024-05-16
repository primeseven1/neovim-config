local function do_treesitter_config()
    local config = require("nvim-treesitter.configs")
    config.setup({
        ensure_installed = {
            "bash", "c", "c_sharp", "cmake", "cpp", "css", "html", "ini", "java", "javascript", "json",
            "linkerscript", "lua", "luau", "make", "meson", "nasm", "python", "rust", "xml", "yaml"
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        }
    })
end

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = do_treesitter_config
}
