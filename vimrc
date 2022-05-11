execute pathogen#infect()

"help from: http://marcgg.com/blog/2016/03/01/vimrc-example/
filetype plugin indent on
syntax on
if has('gui_running')
  " GUI colors
  colorscheme base16-default-dark
else
  " Non-GUI (terminal) colors
  if filereadable( expand("$HOME/.vim/colors/base16-default-dark.vim") )
    colorscheme base16-default-dark
  else
    colorscheme default
  endif
endif

"Font
if has("gui_macvim")
  set guifont=Inconsolata:h13
else
  set guifont=Inconsolata\ 12
endif

"basic look when opening
"set colorcolumn=80
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
map <leader>nt :NERDTreeToggle<CR>

"vim-go
let g:go_fmt_command = "goimports"
"let g:go_metalinter_autosave_enabled = ['errcheck', 'vet', 'golint']
let g:go_metalinter_autosave_enabled = ['errcheck']
":GoDef
"Use ctrl-] or gd to jump to a definition, locally or globally
"Use ctrl-t to jump back to the previous location
"\v over the method to open the GoDef location in a vertical split
autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
":GoAlternate switches between a file and its _test file
"AV opens in a vertical split, AS horizontal, AT new tb
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tab')

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

let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'
