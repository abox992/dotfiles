return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'j-hui/fidget.nvim',
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup {
            ensure_installed = {
                'lua_ls',
                'clangd',
                'ts_ls',
            },
            handlers = {
                function(server_name)
                    vim.lsp.config(server_name, {})
                end,
            },
        }

        vim.lsp.config('lua_ls', {
            -- ... other configs
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        })

        vim.lsp.config('clangd', {
            cmd = {
                'clangd',
                '--fallback-style=WebKit',
            },
        })

        vim.diagnostic.config {
            update_in_insert = true,
        }
    end,
}
