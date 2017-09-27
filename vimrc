execute pathogen#infect()

"help from: http://marcgg.com/blog/2016/03/01/vimrc-example/
filetype plugin indent on
syntax on
if has('gui_running')
  " GUI colors
  colorscheme sorcerer
else
  " Non-GUI (terminal) colors
  colorscheme default
endif

"Font
if has("gui_macvim")
  set guifont=Inconsolata:h13
else
  set guifont=Inconsolata\ 12
endif

"basic look when opening
set colorcolumn=80
set number

"re-source .vimrc by running \s
map <leader>s :source ~/.vimrc<CR>

"keep more info in memory to speed things up
set hidden
set history=100

"tabs 'n' stuff
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set autoindent
set ruler "show line number & position
set showmatch "show matching parentheses
set laststatus=2 "always show status
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd FileType make set noexpandtab

"searching
set hlsearch "highlight matched words
"cancel search with escape:
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"NERDTree
"start NERDTree when opening vim:
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
let g:syntastic_ruby_checkers = ['rubocop', 'mri', 'jruby']
"disabling linter:
"let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
let g:syntastic_go_checkers = ['go', 'govet', 'errcheck']
