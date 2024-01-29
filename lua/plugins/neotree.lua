local function do_neotree_config()
    vim.keymap.set('n', "<C-e>", ":Neotree filesystem reveal left<CR>", {})
    require("neo-tree").setup {
        filesystem = {
            filtered_items = {
                visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
                hide_dotfiles = false,
                hide_gitignored = false,
            }
        }
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
