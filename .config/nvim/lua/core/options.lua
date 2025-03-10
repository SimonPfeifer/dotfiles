function file_exists(name)
   local f = io.open(name, "r")
   return f ~= nil and io.close(f)
end

-- Load Vim setting
vimrc_path = os.getenv("HOME") .. "/.vimrc"
if file_exists(vimrc_path) == true then
    vim.cmd("source " .. vimrc_path)
end

-- Set custom Neovim settings
-- These will override the Vim settings above

termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
