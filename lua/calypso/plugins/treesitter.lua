return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile"},
    build = ":TSUpdate",
    config = function()
        -- import nvim treesitter plugin
        local treesitter = require("nvim-treesitter.configs")
        
        -- configure treesitter
        treesitter.setup({
            highlight = {
                enable = true,
            },
            -- enable indentation
            indent = { enable = true },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            --  [DEPRECATED]
         --   autotag = {
         --       enable = true,
         --   },
            -- ensure these lenguage parsers are installed
            ensure_installed = {
                "json",
                "astro",
                "javascript",
                "typescript",
                "tsx",
                "yaml",
                "html",
                "css",
                "markdown",
                "sql",
                "bash",
                "lua",
                "vim",
                "python",
                "dockerfile",
                "gitignore",
                "vimdoc",
                "sql",
                "c",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            }
        })
    end
}
