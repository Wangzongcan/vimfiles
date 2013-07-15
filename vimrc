" ����
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


" ����
set enc=utf-8
set fenc=utf-8
set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" ��ʾ
syntax on
filetype plugin indent on
set nu
set go=
set wmnu
set hls scs
set gfn=Consolas:h10:cANSI
set gfw=Microsoft\ YaHei\ Mono:h10:cGB2312
set list lcs=eol:<

" ״̬��
set ls=2

" ��ʽ��
set ai si
set nowrap
set et ts=4 sw=4 sts=4

" �༭
set hid
set bs=2
set nobk
set aw ar

" ӳ��
let mapleader=','
nnoremap ; :
nnoremap j gj
nnoremap k gk
