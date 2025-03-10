-- Define the plugin to be loaded
-- Comment to remove plugins
return {
	-- Directory management
	require "plugins.alpha",
	require "plugins.neotree",

	-- Searching
	require "plugins.telescope",

	-- File parsin
	require "plugins.treesitter",

	-- Color scheme
	require "plugins.colorschemes.gruvbox-material",
}

