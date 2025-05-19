" Vanilla Vim options based on hendrikmi/neovim-kickstart-config 
" Line options
set number " Make line numbers default (default: false)
set norelativenumber " Set relative numbered lines (default: false)
set nowrap " Wrap lines (default: true)
set linebreak " Companion to wrap, don't split words (default: false)

" Mouse
set mouse=a " Enable mouse mode (default: '')

" Clipboard
set clipboard=unnamedplus " Sync clipboard between OS and Vim. (default: '')

" Indentation
set autoindent " Copy indent from current line when starting new one (default: true)
set shiftwidth=4 " The number of spaces inserted for each indentation (default: 8)
set tabstop=4 " Insert n spaces for a tab (default: 8)
set softtabstop=4 " Number of spaces that a tab counts for while performing editing operations (default: 0)
set expandtab " Convert tabs to spaces (default: false)
set smartindent " Make indenting smarter again (default: false)

" Searching
set ignorecase " Case-insensitive searching UNLESS \C or capital in search (default: false)
set smartcase " Smart case (default: false)
set hlsearch " Set highlight on search (default: true)

" Navigation
set scrolloff=4 " Minimal number of screen lines to keep above and below the cursor (default: 0)
set sidescrolloff=8 " Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
set nocursorline " Highlight the current line (default: false)
set splitbelow " Force all horizontal splits to go below current window (default: false)
set splitright " Force all vertical splits to go to the right of current window (default: false)
set whichwrap=bs<>[]hl " Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')

" Appearance
set showmode " Show mode, e.g. INSERT (default: true)
" set termguicolors " Set termguicolors to enable highlight groups (default: false)
set showtabline=1 " Always show tabs (default: 1)
set pumheight=10 " Pop up menu height (default: 0)
set numberwidth=4 " Set number column width to 2 {default 4} (default: 4)
set signcolumn=auto " Keep signcolumn on by default (default: 'auto')

set noswapfile " Creates a swapfile (default: true)
set backspace=indent,eol,start " Allow backspace on (default: 'indent,eol,start')
set conceallevel=0 " So that `` is visible in markdown files (default: 1)
set fileencoding=utf-8 " The encoding written to a file (default: 'utf-8')
set cmdheight=1 " More space in the Neovim command line for displaying messages (default: 1)
set breakindent " Enable break indent (default: false)

set updatetime=250 " Decrease update time (default: 4000)
set timeoutlen=300 " Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
set nobackup " Creates a backup file (default: false)
set nowritebackup " If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)

set undofile " Save undo history (default: false)
set completeopt=menuone,noselect " Set completeopt to have a better completion experience (default: 'menu,preview')
set shortmess+=c " Don't give |ins-completion-menu| messages (default: does not include 'c')
set iskeyword+=- " Hyphenated words recognized by searches (default: does not include '-')
set formatoptions-=c,r,o " Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')

