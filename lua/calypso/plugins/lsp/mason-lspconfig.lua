return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "ts_ls",
            "html",
            "cssls",
            "tailwindcss",
            "svelte",
            "lua_ls",
            "graphql",
            "emmet_ls",
            "prismals",
            "basedpyright",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
