set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Go
Plugin 'fatih/vim-go', {'for': 'go'}
Plugin 'jodosha/vim-godebug'
Plugin 'godoctor/godoctor.vim'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

" Git
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Color scheme
Plugin 'joshdick/onedark.vim'
Plugin 'endel/vim-github-colorscheme'

" Autocomplete
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-go', { 'do': 'make'}
Plugin 'ervandew/supertab'

" Other
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()

let mapleader=" "            " Change leader to space
colorscheme onedark          " Turn on onedark theme 
filetype plugin indent on    " Automatically detect file types
set incsearch                " Jump to matches while typing
set ignorecase               " Ignore case while searching
syntax on                    " Syntax highlighting
set number                   " Line numbers
set relativenumber           " Relative numbers

" 2 spaces to a tab, spaces as tab
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

" Adjust tabs for .go files
autocmd BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

" vim-go
let g:go_term_enabled = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = "onedark"

" NERDTree
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>
let NERDTreeShowHidden=1

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'member', 'tag', 'file', 'neosnippet']
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1
