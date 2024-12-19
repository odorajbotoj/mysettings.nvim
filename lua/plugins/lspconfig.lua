return {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
        local capabilities = {
            capabilities =  require("cmp_nvim_lsp").default_capabilities()
        }
        local lspconf = require("lspconfig")
        lspconf.bashls.setup(capabilities)
        lspconf.lua_ls.setup(capabilities)
        lspconf.pyright.setup(capabilities)
    end
}
