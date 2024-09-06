local function do_onedark_config()
    local onedarkpro = require("onedarkpro")
    local colors = require("onedarkpro.helpers").get_colors("onedark_vivid")

    require("onedarkpro").setup({
        highlights = {
            StorageClass = { fg = colors.purple },
            ["@parameter"] = { fg = colors.red, italic = true }
        },
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
        },
        plugins = {
            treesitter = true
        }
    })

    vim.cmd("colorscheme onedark_vivid")
end

return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = do_onedark_config
}
