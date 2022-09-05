"r basic settings
set nu
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set backupdir=~/.vim_bck//
set directory=~/.vim_tmp//
set signcolumn=yes
set noswapfile
set hlsearch
set ignorecase
set incsearch

inoremap jk <ESC>
let mapleader="'"

" set truecolors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" set color scheme
set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" plugins
call plug#begin()
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lervag/vimtex'
" Plug 'ycm-core/YouCompleteMe'   
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" LSP and completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/vim-vsnip'

" For colorschemes
" Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

lua require'lspconfig'.rust_analyzer.setup({})

set completeopt=menuone,noinsert,noselect
" Avoid showing extra messages when using completion
set shortmess+=c

nnoremap j gj
nnoremap k gk

" Esc to escape terminal mode
tnoremap <Esc> <C-\><C-n>
" 
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * setlocal modifiable

" enable filetype detection
" enable corresponding plugins
" and corresponding indent scheme
filetype plugin indent on


" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


