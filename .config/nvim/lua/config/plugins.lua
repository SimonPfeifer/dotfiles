-- Define the plugin to be loaded
-- Comment to remove plugins
return {
	-- Directory management
	require "plugins.alpha",
	require "plugins.neotree",

	-- Searching
	require "plugins.telescope",

	-- File parsing
    require "plugins.lsp",
    require "plugins.cmp",
    require "plugins.trouble",

    -- Highlighting
	require "plugins.treesitter",
    require "plugins.todo",

	-- Appearance
	require "plugins.colorschemes.gruvbox-material",
    require "plugins.lualine",
    require "plugins.bufferline",
    require "plugins.toggleterm"
}

