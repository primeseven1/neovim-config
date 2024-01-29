local function do_mason_config()
    require("mason").setup()
end

local function do_mason_lsp_config()
    require("mason-lspconfig").setup({
        ensure_installed = { "bashls", "lua_ls", "pyright", "asm_lsp", "clangd", "rust_analyzer" }
    })
end

local function do_lsp_config()
    local lspconfig = require("lspconfig")
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig.bashls.setup({ capabilities = capabilities })
    lspconfig.lua_ls.setup({ capabilities = capabilities })
    lspconfig.pyright.setup({ capabilities = capabilities })
    lspconfig.asm_lsp.setup({ capabilities = capabilities })
    lspconfig.clangd.setup({ capabilities = capabilities })
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

