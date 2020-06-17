"------------------------------------------- base key map
inoremap jk <esc>
"nnoremap ;; <esc>:
nnoremap q <esc>:close<cr>
vnoremap q <esc>:close<cr>
nnoremap <BackSpace> :nohl<cr>
" 窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nmap <C-w>[ :vertical resize -3<CR>
nmap <C-w>] :vertical resize +3<CR>
"
nnoremap <c-w>s <esc><c-w>s<esc><c-w>j
nnoremap <c-w>v <esc><c-w>v<esc><c-w>l

imap <C-s> <esc>:w<cr>
imap <C-Q> <esc>:wq<cr>
imap <C-o> <esc>o

nnoremap  ]b :bp<CR>
nnoremap  [b :bn<CR>
"delete buffer
nnoremap <C-x>  :bd<CR>

"smart move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"tabline operation
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove

"yank to end
nnoremap Y y$


" terminal
tnoremap <Esc> <C-\><C-n>

cnoremap w!! w !sudo tee % >/dev/null

"------------------------------------------- ale
nmap <silent> <c-[> <Plug>(ale_previous_wrap)
nmap <silent> <c-]> <Plug>(ale_next_wrap)
" nn <silent> <M-d> :ALEGoToDefinition<cr>
" nn <silent> <M-r> :ALEFindReferences<cr>
" nn <silent> <M-a> :ALESymbolSearch<cr>
" nn <silent> <M-h> :ALEHover<cr>

"------------------------------------------- airline buffer
" airline key map
" nmap <M-h> <Plug>AirlineSelectPrevTab
" nmap <M-l> <Plug>AirlineSelectNextTab

"------------------------------------------- leaderf
nnoremap <M-f> :LeaderfFile<CR>
nnoremap <M-t> :LeaderfBufTag<CR>
nnoremap <M-T> :LeaderfBufTagAll<CR>
nnoremap <M-o> :LeaderfBufferAll<CR>
nnoremap <M-s> :LeaderfLine<CR>
nnoremap <M-S> :LeaderfLineAll<CR>
nnoremap <M-r> :LeaderfMru<CR>

"------------------------------------------- easymotion
nmap <M-k> <Plug>(easymotion-overwin-f)
" Move to line
nmap <M-j> <Plug>(easymotion-overwin-line)

"------------------------------------------- goyo
nnoremap <F7> <esc>:Goyo<cr>

"------------------------------------------- ChooseWin
nnoremap <silent> <M-w> :ChooseWin<CR>

"------------------------------------------- Autoformat
nnoremap <M-i> :Autoformat<cr>

"------------------------------------------- defx
function Open_cur_file_dir()
    let g:cur_dir = expand("%:p:h")
    exec 'Defx '.g:cur_dir
endfunction

nnoremap <F2> <esc>:call Open_cur_file_dir()<cr>

"------------------------------------------- matchtag
nnoremap <space>5 :MtaJumpToOtherTag<cr>

"------------------------------------------- vimtranslateme
nmap <silent> <M-d> <Plug>TranslateW
vmap <silent> <M-d> <Plug>TranslateWV
nmap <silent> <Leader>r <Plug>TranslateR
vmap <silent> <Leader>r <Plug>TranslateRV

"------------------------------------------- mundo
map <F4> <esc>:MundoToggle<cr>

"------------------------------------------- Startify
noremap <leader>s <esc>:Startify<cr>

