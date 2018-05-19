
"Plugin----------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'nanotech/jewlllybeans.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 't9md/vim-quickhl'
Plugin 'taglist.vim'
Plugin 'DirDiff.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set tags+=.git/tags

"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント
set laststatus=2
set t_Co=256
" シンタックスハイライトを有効にする
syntax on
" カーソル行をハイライト
set cursorline "
" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=Green "
match ZenkakuSpace /　/ "
"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
" インクリメンタルサーチ
set incsearch "
set clipboard=unnamed,autoselect "
"カラースキーマを設定
colorscheme jellybeans "
" 暗い配色にする
set background=dark "
"インサートモードキーマップ
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-e> <End>
inoremap <C-a> <Home>
inoremap <C-d> <Del>

" クリップボードを共有
set clipboard+=unnamed
"swapファイル場所
set directory=~/.vim
"マウス操作
set mouse=a
"vim英語化
language C
set nobackup
"set encording=utf-8
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set virtualedit+=block
autocmd BufWritePre * :%s/\s\+$//ge
