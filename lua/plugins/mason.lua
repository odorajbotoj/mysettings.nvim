return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
        require("mason").setup({})
        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
                "bashls",
                "lua_ls",
                "pyright",
            },
        })
    end
}
