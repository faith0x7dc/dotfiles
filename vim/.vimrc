set tabstop=4
set number

" 文字コード
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2002-jp

"""
""" 検索結果のハイライト & Esc*2で消す
"""

" ハイライトON
set hlsearch

" Esc EscでハイライトOFF
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>

" 「/」「?」「*」「#」が押されたらハイライトをON にしてから「/」「?」「*」「#」
nnoremap / :<C-u>set hlsearch<Return>/
nnoremap ? :<C-u>set hlsearch<Return>?
nnoremap * :<C-u>set hlsearch<Return>*
nnoremap # :<C-u>set hlsearch<Return>#


" syntax highlightを有効化
syntax on

" vi互換モードを切る
"  vi互換モードだと、挿入モードで方向キーを押したときに「ABCD」と文字が入力される
"  vi互換モードを切れば解決
"    http://marupeke296.com/IKDADV_PI_ABCDProb.html
set nocompatible

" gtags.vim
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

