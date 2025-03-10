return {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        -- Configure the colorscheme
        vim.g.gruvbox_material_better_performance = 1
        vim.g.gruvbox_material_foreground = 'material'
        vim.g.gruvbox_material_background = 'medium'
        vim.g.gruvbox_material_ui_contrast = 'low'
        vim.g.gruvbox_material_float_style = 'dim'
        vim.g.gruvbox_material_disable_italic_comment = 1
        vim.g.gruvbox_material_enable_bold = 0
        vim.g.gruvbox_material_cursor = 'auto'
        vim.g.gruvbox_material_transparent_background = 2
        vim.g.gruvbox_material_dim_inactive_windows = 1
        vim.g.gruvbox_material_statusline_style = 1

        -- Load the colorscheme
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme('gruvbox-material')
      end
}

