local check_backspace = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local cmp_ok, cmp = pcall(require, "cmp")
        local luasnip_ok, luasnip = pcall(require, "luasnip")
        if not cmp_ok or not luasnip_ok then
            return
        end
        require("luasnip.loaders.from_vscode").lazy_load()
        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-,>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-.>"] = cmp.mapping({
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                }),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping(
                function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expandable() then
                        luasnip.expand()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif check_backspace() then
                        fallback()
                    else
                        fallback()
                    end
                end,
                { "i", "s" }
                ),
                ["<S-Tab>"] = cmp.mapping(
                function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end,
                { "i", "s" }
                )
            }),
            sources = cmp.config.sources(
            {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "path" }
            },
            {
                { name = "buffer" }
            }
            )
        })
    end
}

