local function do_onedark_config()
    require("onedarkpro").setup({
        styles = {
            types = "NONE",
            methods = "bold",
            numbers = "NONE",
            strings = "NONE",
            comments = "italic",
            keywords = "NONE",
            constants = "NONE",
            functions = "bold",
            operators = "NONE",
            variables = "NONE",
            parameters = "italic",
            conditionals = "NONE",
            virtual_text = "NONE",
        }
    })

    vim.cmd("colorscheme onedark_vivid")
end

return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = do_onedark_config
}

