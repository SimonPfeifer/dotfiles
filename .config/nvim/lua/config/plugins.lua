-- Define the plugin to be loaded
-- Comment to remove plugins
return {
	-- Directory management
	require "plugins.alpha",
	require "plugins.neotree",

	-- Editor
	require "plugins.telescope",
    require "plugins.auto-session",

	-- File parsing
    require "plugins.cmp",
    require "plugins.lsp",
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

