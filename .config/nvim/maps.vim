" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %
"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap tn :tabnew<Return>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
"------------------------------
" Windows

" Split window
nmap sp  :split<Return><C-w>w
nmap vp  :vsplit<Return><C-w>w
" Move window in vsplit and split
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l

map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Resize window
" Use alt + hjkl to Resize Windows
nnoremap <M-j>      :resize -2<CR>
nnoremap <M-k>      :resize +2<CR>
nnoremap <M-h>      :verticalresize -2<CR>
nnoremap <M-k>      :verticalresize +2<CR>


" EASY CAPS 
inoremap <c-u> <Esc>viwUi
nnoremap <c-u> viwU<Esc>

"alternative way to save the file 
nnoremap <C-s> :w<CR>
"alternative way to quit neovim 
nnoremap <C-Q> :wq!<CR>

"Better tabbing 
vnoremap < <gv
vnoremap > >gv
