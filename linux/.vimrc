set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim	"required
set rtp+=~/.fzf
call vundle#begin()				"required

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-eunuch'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'AutoComplPop'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-vdebug/vdebug'

call vundle#end()				"required

"""""""""""""""""" ctrlp
let g:ctrlp_max_height = 10
let g:ctrlp_custom_ignore = {
	\'dir': '\.gits$\|\.hg$'
\}

"""""""""""""""""" vim-multiple lines

let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"""""""""""""""""" airline
set laststatus=2
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extnesions#tabline#left_alt_sep = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'hybrid'
map <S-t> :bnext<CR>
map <S-y> :bprevious<CR>
map <S-h> :bd<CR>

"""""""""""""""""" NERDTree
map <C-\> :NERDTreeToggle<CR>

""""""""""""" General """"""""""""""
set t_Co=256
syntax on
set nu
set hls
set ts=4
set sw=4
set sts=4
set noet
set showcmd
set nows
set fencs=utf8,cp949
set ffs=unix,dos,mac
set pastetoggle=<Ins>
set mouse=a

color gruvbox
set bg=dark

"""""""""""" Moving between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

filetype plugin on
set omnifunc=syntaxcomplete#Complete


set tags=tags;

