require('plugins')

vim.o.wrap = false

-- Colorscheme
vim.api.nvim_command("colorscheme nord")

-- NVIM autopairs
require('nvim-autopairs').setup()

-- NVIM Web Devicons
require('nvim-web-devicons').setup()

-- The setup config table shows all available config options with their default values:
require("presence").setup({
    -- General options
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "Neovim", -- Text displayed when hovered over the Neovim image
    main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
    client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = true,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = {{ label = "Website", url = "https://tuxer.org" }, { label = "Github", url = "https://github.com/RaphtikAtGHG" }},                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = true,                       -- Show the timer

    -- Rich Presence text options
    editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})

-- VIM airline
vim.g.airline_theme = 'nord'

-- Keybinds
vim.g.mapleader = " "


vim.api.nvim_set_keymap('n', '<leader>e', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ee', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>eq', ':NERDTreeClose<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>sf', ':Files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sg', ':Commits<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ss', ':GFiles<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>i', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>oi', ':q!<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>t', ':terminal<CR>', { noremap = true, silent = true })

vim.g.airline_extensions_tabline_enabled = 1

vim.g.airline_extensions_tabline_left_sep = ' '
vim.g.airline_extensions_tabline_left_alt_sep = '|'

vim.g.airline_extensions_tabline_formatter = 'unique_tail'


-- WebDevIcons configuration
vim.g.WebDevIconsUnicodeDecorateFolderNodes = 1
vim.g.WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''

vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''
