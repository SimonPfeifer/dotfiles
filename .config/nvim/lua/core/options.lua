function file_exists(name)
   local f = io.open(name, "r")
   return f ~= nil and io.close(f)
end

-- Load Vim setting
vimrc_path = os.getenv("HOME") .. "/.vimrc"
if file_exists(vimrc_path) == true then
    vim.cmd("source " .. vimrc_path)
end

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set custom Neovim settings
-- These will override the Vim settings above
vim.opt.termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
vim.g.have_nerd_font = true

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Buffers
vim.keymap.set('n', '<Tab>', ':bn<CR>', { desc = 'Move to next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bp<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set('n', '<leader>q', ':bp<bar>sp<bar>bn<bar>bd<CR>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>wq', ':w<bar>bp<bar>sp<bar>bn<bar>bd<CR>', { desc = 'Delete current buffer' })

-- Terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Search
vim.keymap.set('n', '<Esc>', '<Esc>:noh<CR>', { desc = 'Clear highlighted search' })
  
-- Sessions
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
