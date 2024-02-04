require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = {
            {"nvim-lua/plenary.nvim"}
        }
    },
    "folke/tokyonight.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    "nvim-treesitter/playground",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            "neovim/nvim-lspconfig",
            {
                "williamboman/mason.nvim",
                build = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip"
        }
    },
    "nvim-lua/lsp_extensions.nvim",
    "m4xshen/autoclose.nvim",
    "luukvbaal/nnn.nvim",
    "sarmong/newsboat.vim",
    "nvim-telescope/telescope-ui-select.nvim"
})

