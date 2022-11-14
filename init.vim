let mapleader = "," " map leader to comma
let maplocalleader = ","
lua require('plugins')

" We are handling most plugins in lua/plugins.lua but its just easier to have
" some vim-plug support, too

call plug#begin()
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()
" ---------------
" Genuine Config
" ---------------
"



" NerdTree -------------------
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


" ColorScheme

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode


au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 15
endfunction
nnoremap <c-l> :call OpenTerminal()<CR>

" Show line numbers but relative too
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" Your search will be case sensitive if it contains an uppercase letter
set smartcase

" use alt+hjkl to move between split/vsplit panels
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" FZF stuff
" Now, to search for a file, press Ctrl+P , search for the file you’re looking for, and press:

" CTRL+T to open it in a new tab.
" CTRL+S to open below (split view).
" CTRL+T to open to the side (vertical split).
" Enter to open it in the currently selected panel.

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'enter': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Vim Airline
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Cycle through buffers with ctrl tab
nnoremap <C-n> :bn<CR>
