set nocompatible
filetype off
set encoding=utf-8

"" option
set hidden  " 未保存でも別ファイルを編集可能に
set backspace=indent,eol,start  " 行をまたいだ削除を可能に
set whichwrap=b,s,h,l,<,>,[,]  " 行をまたいだ移動を可能に
set hlsearch  " 検索文字列をハイライト
set wrapscan  " 最後尾検索の次に先頭へ移る
set confirm  " 未保存ファイルは終了前に保存確認
set clipboard+=unnamed  " クリップボード連携
set history=4000  " コマンドライン履歴
set autoindent
set smartindent

"" display
set number  " 行番号
set ruler  " カーソル位置表示
set title  " タイトルバーにファイル名表示
set wildmenu  " ステータスラインにコマンド候補を表示
set laststatus=2  " ステータスライン
set cmdheight=2  " メッセージ表示欄
set showcmd  " 入力中のコマンドを表示
set showmode  " 現在のモードを表示
set showmatch " 括弧を強調表示
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set scrolloff=5  " 上下スクロール時の余白行の確保

"" tab
set tabstop=4 " タブの表示幅
set softtabstop=4 " タブ押下時の文字幅
set shiftwidth=4  " インデント幅
set expandtab  " タブを半角スペースに置き換え

"" keymap
" 'J'で半ページ進む
nnoremap J <C-D>
" 'K'で半ページ戻る
nnoremap K <C-U>
imap <C-E> <END>
imap <C-A> <HOME>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>
" スペースで次バッファへ
nmap <Space> :bn<CR>
" バックスペースで前バッファへ
nmap <BS>    :bp<CR>
imap <C-Tab> <ESC>:bn<CR>a
imap <S-Tab> <ESC>:bp<CR>a

"" syntax color
syntax on
"set background=dark
"colorscheme solarized

"" Rust
call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'

call plug#end()

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

