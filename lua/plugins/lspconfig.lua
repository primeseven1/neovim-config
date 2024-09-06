local function do_mason_config()
    require("mason").setup()
end

local function do_mason_lsp_config()
    require("mason-lspconfig").setup({
        ensure_installed = {
            "asm_lsp", "bashls", "clangd", "tsserver",
            "lua_ls", "luau_lsp", "pylsp", "rust_analyzer"
        },
    })
end

local function do_lsp_config()
    local lspconfig = require("lspconfig")
    local capabilities = require('cmp_nvim_lsp').default_capabilities()


    lspconfig.asm_lsp.setup({ capabilities = capabilities })
    lspconfig.bashls.setup({ capabilities = capabilities })
    lspconfig.clangd.setup({
        capabilities = capabilities,
        cmd = { "clangd", "--header-insertion=never", "--enable-config" }
    })
    lspconfig.tsserver.setup({ capabilities = capabilities })
    lspconfig.lua_ls.setup({ capabilities = capabilities })
    lspconfig.luau_lsp.setup({ capabilities = capabilities })
    lspconfig.pylsp.setup({
        capabilities = capabilities,
        settings = {
            pylsp = {
                plugins = {
                    pycodestyle = {
                        ignore = { "E501", "E302", "E305" }
                    }
                }
            }
        }
    })
    lspconfig.rust_analyzer.setup({ capabilities = capabilities })
end

return {
    {
        "williamboman/mason.nvim",
        config = do_mason_config
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = do_mason_lsp_config
    },
    {
        "neovim/nvim-lspconfig",
        config = do_lsp_config
    }
}
