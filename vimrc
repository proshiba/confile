" install手順
" 1. mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
" 2. git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
" 3. copy vimrc to ~/.vimrc
" 4. do -> call#install() 

" Plugin Settings

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/unite.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-endwise')
call dein#add('osyo-manga/vim-monster')

call dein#end()
call dein#save_state()
"call dein#install()

source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

colorscheme lucius
set guifont=MS_Gothic:h14
set t_Co=256
set background=dark

set undodir=/root/.vim/undo_txt
set backupdir=/root/.vim/backup_txt

" normal config
set mouse=
set nu
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set cursorcolumn
set virtualedit=onemore
syntax on

" アルファベットもインクリメントする
set nf=alpha

" set guifont=Menlo\ Regular:h14
set noswapfile
set guioptions+=a
set clipboard+=autoselect
nnoremap <RightMouse> "*p
inoremap <RightMouse> <C-r><C-o>*

set clipboard+=unnamed

set encoding=utf-8
set fileencodings=sjis,utf-8,iso-2022-jp,euc-jp
set fileformats=unix,dos,mac

set synmaxcol=320
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 行番号の色
highlight LineNr ctermfg=darkyellow

" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest

" Tab系
" 不可視文字を可視化(タブ表示)
set list listchars=tab:\>\-
"
"
" " 検索系
" " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" " 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" " 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" " 検索時に最後まで行ったら最初に戻る
set wrapscan
" " 検索語をハイライト表示
set hlsearch
" " ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

