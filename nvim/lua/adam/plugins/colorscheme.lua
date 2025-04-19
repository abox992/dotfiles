return {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
        vim.cmd.colorscheme 'rose-pine'
    end,
    config = function()
        require('rose-pine').setup {
            variant = 'moon',
        }
    end,
}

-- return {
-- 	"pauchiner/pastelnight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	init = function()
-- 		vim.cmd.colorscheme 'pastelnight'
-- 	end,
-- }
