" 配置文件 {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:
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
    au FileType ruby,eruby setlocal ts=2 sw=2 sts=2

    Bundle 'tpope/vim-rails'

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
    set bg=dark
    set is hls scs
    if has("gui_win32" || "gui_win64")
        set gfn=DejaVu\ Sans\ Mono:h9:cANSI
        set gfw=Microsoft\ YaHei\ Mono:h9:cGB2312
    elseif has("gui_gtk2")
        set gfn=DejaVu\ Sans\ Mono\ 9
    endif
    set list lcs=eol:¬,tab:▸\ ,trail:␣,extends:»,precedes:«
    set showbreak=↪
" }

" 状态栏 {
    set ls=2
" }

" 格式化 {
    set ai si
    set wrap
    set tw=80
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
    if has('win32') || has('win64')
        "Fast reloading of the .vimrc
        map <silent> <leader>ss :source $VIM\_vimrc<cr>
        "Fast editing of .vimrc
        map <silent> <leader>ee :e $VIM\vimfiles\vimrc<cr>
    else
        "Fast reloading of the .vimrc
        map <silent> <leader>ss :source ~/.vim/vimrc<cr>
        "Fast editing of .vimrc
        map <silent> <leader>ee :e ~/.vim/vimrc<cr>
    endif

    nnoremap ; :
    nnoremap j gj
    nnoremap k gk

    inoremap <C-p> <Up>
    inoremap <C-n> <Down>
    inoremap <C-b> <Left>
    inoremap <C-f> <Right>

    inoremap jj <Esc>

    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l
" }

" autocmd {
    command! W :w
    " 修改配置文件后，保存时source配置文件
    if has('win32') || has('win64')
      au! BufWritePost vimrc source $VIM\vimfiles\vimrc
    else
      au! BufWritePost vimrc source ~/.vim/vimrc
    endif
" }
