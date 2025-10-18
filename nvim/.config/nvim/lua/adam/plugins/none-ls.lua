return {
    'nvimtools/none-ls.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvimtools/none-ls-extras.nvim',
    },
    config = function()
        local null_ls = require 'null-ls'

        null_ls.setup {
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier.with {
                    extra_args = function(params)
                        return params.options and params.options.tabSize and {
                            '--tab-width',
                            params.options.tabSize,
                        }
                    end,
                },
            },
        }

        vim.keymap.set('n', '<leader>f', function()
            vim.lsp.buf.format { formatting_options = { tabSize = 4 } }
        end, { desc = '[F]ormat' })
    end,
}
