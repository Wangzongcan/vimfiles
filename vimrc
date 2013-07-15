" ≈‰÷√
set nocp
set novb t_vb=

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/nerdtree'
nmap <C-n> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
let NERDTreeQuitOnOpen=1

Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = ''

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

autocmd FileType ruby,eruby setlocal ts=2 sw=2 sts=2

Bundle 'tomasr/molokai'
colo molokai



" ±‡¬Î
set enc=utf-8
set fenc=utf-8
set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" œ‘ æ
syntax on
filetype plugin indent on
set nu
set go=
set wmnu
set hls scs
set gfn=Consolas:h10:cANSI
set gfw=Microsoft\ YaHei\ Mono:h10:cGB2312
set list lcs=eol:<

" ◊¥Ã¨¿∏
set ls=2

" ∏Ò ΩªØ
set ai si
set nowrap
set et ts=4 sw=4 sts=4

" ±‡º≠
set hid
set bs=2
set aw ar

" ±∏∑›
set udir=~/.vim/tmp/undo//     " undo files
set udf
set ul=3000
set ur=10000
set bdir=~/.vim/tmp/backup// " backups
set dir=~/.vim/tmp/swap//   " swap files
set bk
set noswf


" ”≥…‰
let mapleader=','
nnoremap ; :
nnoremap j gj
nnoremap k gk
