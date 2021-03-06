" 配置文件 {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:
" }

" 基础配置 {
    set nocp
    set noeb novb t_vb=
" }

" Plug {
    call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

    Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-bundler'
    Plug 'bling/vim-airline'
    Plug 'kien/ctrlp.vim'
    call plug#end()
" }

" 编码 {
    set enc=utf-8
    set fenc=utf-8
    set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    set langmenu=zh_CN.UTF-8
    language message zh_CN.UTF-8
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
" }

" 显示 {
    syntax on
    set nu
    set go=
    set wmnu
    set bg=dark
    set is hls scs
    " colo molokai
    set gfn=M+\ 1m:h12
    set gfw=Hiragino\ Sans\ GB\ W3:h12
    set list lcs=tab:»\ ,trail:.
    " 自定义高亮
    hi WhitespaceEOL ctermbg=red guibg=red
    mat WhitespaceEOL /\s\+$/
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
    if $TMUX == ''
        set clipboard+=unnamed
    endif
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
    map <silent> <leader>ss :source ~/.vim/vimrc<cr>
    "Fast editing of .vimrc
    map <silent> <leader>ee :e ~/.vim/vimrc<cr>

    nnoremap ; :
    nnoremap j gj
    nnoremap k gk

    nnoremap <silent> n nzz
    nnoremap <silent> N Nzz
    nnoremap <silent> * *zz
    nnoremap <silent> # #zz
    nnoremap <silent> g* g*zz
    nnoremap <silent> g# g#zz
    nnoremap <silent> <C-o> <C-o>zz
    nnoremap <silent> <C-i> <C-i>zz

    vnoremap < <gv
    vnoremap > >gv

    inoremap <C-b> <Left>
    inoremap <C-f> <Right>

    inoremap jk <Esc>
    inoremap kj <Esc>

    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l

    noremap <leader>" viw<Esc>a"<Esc>hbi"<Esc>
    noremap <leader>' viw<Esc>a'<Esc>hbi'<Esc>
" }

" 插件设置 {
    " RUBY
    autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd Filetype eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd BufNewFile,BufRead Gemfile set filetype=ruby

    " AIRLINE
    let g:airline_left_sep=''
    let g:airline_right_sep=''
    let g:airline_theme='dark'
" }

" autocmd {
    command! W :w
    " 修改配置文件后，保存时source配置文件
    au! BufWritePost vimrc source ~/.vim/vimrc
" }
