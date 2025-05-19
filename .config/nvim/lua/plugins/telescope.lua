local select_one_or_multi = function(prompt_bufnr)
    local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
    local multi = picker:get_multi_selection()
    if not vim.tbl_isempty(multi) then
        require('telescope.actions').close(prompt_bufnr)
        for _, j in pairs(multi) do
            if j.path ~= nil then
                vim.cmd(string.format('%s %s', 'edit', j.path))
            end
        end
    else
        require('telescope.actions').select_default(prompt_bufnr)
    end
end

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
            defaults = {
                mappings = {
                    i = {
                        ["<CR>"] = select_one_or_multi,
                    },
                    n = {
                        ["<CR>"] = select_one_or_multi,
                    },
                },
            },

            mappings = {
                vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope find files' }),
                vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Telescope live grep' }),
                vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope buffers' }),
                vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Telescope help tags' }),
            },

            pickers = {
                find_files = {
                    hidden = true,
                    no_ignore = true,
                },
                live_grep = {
                    additional_args = {"--hidden", "--no-ignore"},
                },
                grep_string = {
                    additional_args = {"--hidden", "--no-ignore"},
                },
            },

            extensions = {
                fzf = {},
            },

            require("telescope").load_extension("fzf")
        }
    end
}

