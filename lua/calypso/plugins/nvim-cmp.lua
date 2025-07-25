return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths
        {
            "L3MON4D3/LuaSnip",
            -- follow latest release
            version = "v2.*", -- replace <CurrentMajor> by the ñatest released major (first number of latest release)
            -- install jsregexp (optional)
            build = "make install_jsregexp",
        },
        "saadparwaiz1/cmp_luasnip", -- for autocompletion
        "rafamadriz/friendly-snippets", -- useful snippets
        "onsails/lspkind.nvim", -- vs-code like pictograms
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")
        
        -- loads vscode style snippets from installed plugins (e.g. friendly snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion =  {
                completeopt = "menu, menuone, preview, noselect",
            },
            snippet = { -- condifure how nvim-cmp interacts with the snippet engine
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4), --
                ["<C-f>"] = cmp.mapping.scroll_docs(4), 
                ["<C-space>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm({select=false}), --
            }),
            -- sources for autocompletion
            sources = cmp.config.sources({
                { name = "luasnip" }, -- snippets
                { name = "buffer" }, -- text within the current buffer
                { name = "path" }, -- filesystem paths
            }),
            -- configure lspkind for vs-code like pictograms in completion menu
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },
        })
    end
}
