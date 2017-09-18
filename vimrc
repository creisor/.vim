execute pathogen#infect()

"help from: http://marcgg.com/blog/2016/03/01/vimrc-example/
filetype on
syntax on
if has('gui_running')
  " GUI colors
  colorscheme sorcerer
else
  " Non-GUI (terminal) colors
  colorscheme default
endif

"Font
"set guifont=Inconsolata:h18

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
