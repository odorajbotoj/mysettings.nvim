return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "bash", "c", "cpp", "css", "gitignore", "go", "gomod", "gosum", "gotmpl", "gowork", "html", "javascript", "json", "json5", "lua", "make", "markdown", "python", "vim", "vimdoc" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = nil,
            },
        })
    end
}
