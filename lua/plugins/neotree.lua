local function do_neotree_config()
    vim.keymap.set('n', "<C-e>", ":Neotree filesystem reveal left<CR>", {})

    vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
    vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
    vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
    vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

    require("neo-tree").setup {
        filesystem = {
            filtered_items = {
                visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
                hide_dotfiles = false,
                hide_gitignored = false,
            }
        },
        git_status = {
            symbols = {
                added = "✚",
                modified = "",
                deleted = "✖",
                renamed = "󰁕",
                untracked = "",
                ignored = "",
                unstaged = "󰄱",
                staged = "",
                conflict = "",
            }
        },
    }
end

return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim"
        },
        config = do_neotree_config,
    }
}
