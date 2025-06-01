return {
    {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end,
    },
    {
    "williamboman/mason-lspconfig.nvim",
    config = function()
            require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "clangd"},
            }
        end,
    },
    {
        "neovim/nvim-lspconfig",
            lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            -- lua
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
        end,
    },
}
