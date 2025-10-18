return {
    "shaunsingh/nord.nvim", 
    name = "nord",
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
        vim.cmd.colorscheme 'nord'
    end,
    config = function()
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
