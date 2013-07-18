" 配置文件 {
" vim: set tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:
" }

" 基础配置 {
set nocp
set novb t_vb=
" }

" Vundle {
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
" }

" 编码 {
set enc=utf-8
" }

" 显示 {
syntax on
filetype plugin indent on
set rnu
set go=
set wmnu
set is hls scs
set gfn=DejaVu\ Sans\ Mono:h9:cANSI
set gfw=Microsoft\ YaHei\ Mono:h9:cGB2312
set list lcs=eol:¬,tab:▸\ ,trail:␣,extends:»,precedes:«
" }

" 状态栏 {
set ls=2
set statusline=%F%m%r,%Y,%{&fileformat}\ \ \ ASCII=\%b,HEX=\%B\ \ \ %l,%c%V\ %p%%\ \ \ [\ %L\ lines\ in\ all\ ]
" }

" 格式化 {
set ai si
set nowrap
set et ts=4 sw=4 sts=4
" }

" 编辑 {
set hid
set bs=2
set aw ar
" }

" Leader {
set notimeout
set ttimeout
set ttimeoutlen=10
" }

" 备份 {
set udir=~/.vim/tmp/undo//     " undo files
set udf
set ul=3000
set ur=10000
set bdir=~/.vim/tmp/backup// " backups
set dir=~/.vim/tmp/swap//   " swap files
set bk
set noswf
" }

" 映射 {
let mapleader=','
"Fast reloading of the .vimrc
map <silent> <leader>ss :source $VIM\_vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e $VIM\vimfiles\vimrc<cr>

nnoremap ; :
nnoremap j gj
nnoremap k gk

inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" }

" autocmd {
command! W :w
" 修改配置文件后，保存时source配置文件
au! BufWritePost vimrc source $VIM\vimfiles\vimrc
" 失去焦点用绝对行号, 获取焦点用相对
au FocusLost * :set nu
au FocusGained * :set rnu
" 插入模式下用绝对行号, 普通模式下用相对
au InsertEnter * :set nu
au InsertLeave * :set rnu
" }
