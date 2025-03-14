return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "sharkdp/fd",
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"}
    },
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    },
    config = function()
        require("telescope").setup{
            mappings = {
                vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope find files' }),
                vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Telescope live grep' }),
                vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope buffers' }),
                vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Telescope help tags' }),
            },

            pickers = {
            },

            extensions = {
                fzf = {},
            },

            require("telescope").load_extension("fzf")
        }
    end
}

