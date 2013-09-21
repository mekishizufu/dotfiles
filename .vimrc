" Shamelessly gathered from all over the internet
" 
" https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
" https://github.com/r00k/dotfiles/blob/master/vimrc
" https://github.com/dmajda/dotfiles/blob/master/.vimrc

set nocompatible 
call pathogen#infect()
syntax on
filetype plugin indent on
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

set t_Co=256
set background=light
colorscheme Tomorrow-Night-Bright
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
highlight Cursor guifg=white guibg=#CC0033
set number             
set relativenumber

let mapleader = ","
set wildmenu
set tabpagemax=1000
set directory=/tmp
set encoding=utf-8
set ruler
set showcmd
set pastetoggle=<F5>
set autoread
set hidden
set scrolloff=2
set nobackup
set nofoldenable
set shiftround
set timeoutlen=500

set nowrap
set textwidth=80

set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set backspace=2

set dictionary=/usr/share/dict/words

noremap gp "+p

set hlsearch
set incsearch
set ignorecase
nnoremap <CR> :nohlsearch<CR>/<BS>

nmap <C-S-tab> :tabprevious<CR>
nmap <C-tab> :tabnext<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
imap <C-S-tab> <Esc>:tabprevious<CR>i
imap <C-tab> <Esc>:tabnext<CR>i
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Left> <nop>
map <Right> <nop>
map <Up> <nop>
map <Down> <nop>
map Q <nop>
map K <nop>

cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <leader>e :edit %%
map <leader>v :view %%

map <leader>f :CommandT<CR>
map <leader>gf :CommandT %%<CR>

map <leader>gv :CommandT app/views<CR>
map <leader>gc :CommandT app/controllers<CR>
map <leader>gm :CommandT app/models<CR>
map <leader>gh :CommandT app/helpers<CR>
map <leader>gl :CommandT lib<CR>
map <leader>gp :CommandT public<CR>
map <leader>gs :CommandT app/assets/stylesheets<CR>
map <leader>gj :CommandT app/assets/javascripts<CR>
map <leader>gt :CommandT spec<CR>

map <leader>da :CommandT app/assets/javascripts/templates<cr>
map <leader>dv :CommandT app/assets/javascripts/views<cr>
map <leader>dc :CommandT app/assets/javascripts/controllers<cr>
map <leader>dr :CommandT app/assets/javascripts/routes<cr>
map <leader>dm :CommandT app/assets/javascripts/models<cr>

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>m :call RenameFile()<cr>

nnoremap <leader><leader> <c-^>

set winwidth=100
set winheight=5
set winminheight=5
set winheight=999

map <C-BS> <esc>:wa<CR>
imap <C-BS> <esc>:wa<CR>

map <C-M-BS> <esc>:wq<CR>
imap <C-M-BS> <esc>:wq<CR>

au BufWritePre *.rb,*.css,*.scss,*.slim,*.js,*.coffee,*.yml,*.pp,*.emblem,*.md :%s/\s\+$//e

" http://blog.sanctum.geek.nz/vim-command-typos/
if has("user_commands")
  command! -bang -nargs=? -complete=file E e<bang> <args>
  command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif

set formatoptions-=or
