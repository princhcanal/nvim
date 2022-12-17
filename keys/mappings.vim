" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :BufferNext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :BufferPrevious<CR>
" Choose Buffer
nnoremap <Leader><TAB> :BufferPick<CR>
" Close current buffer
nnoremap <Leader>w :BufferClose<CR>
" Close all
nnoremap <Leader>W :q<CR>
" Close all but current
nnoremap <Leader>c :BufferCloseAllButCurrent<CR>
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
" inoremap <expr><TAB> pumvisible() ? \<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da"

" MY REMAPS
nnoremap <Leader>a ^
nnoremap <Leader>; $
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>S :wq<CR>
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>y ggyG
nnoremap <Leader>Y gg"*yG
nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>
nnoremap <Leader>F :Rg<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>x :vsplit<CR>
nnoremap <Leader>X :split<CR>
nnoremap <Leader>t :FloatermNew<CR>
nnoremap <Leader>T :FloatermToggle<CR>
nnoremap <Leader>r :SignifyHunkUndo<CR>
nnoremap <Leader>d :SignifyHunkDiff<CR>
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" jump history
nnoremap <Leader>n <C-i>
nnoremap <Leader>p <C-o>
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'

" move visual mode selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==
nnoremap <Leader>k :m .-2<CR>==

" paste while in visual mode
vnoremap <Leader>p "_dP

" surround word with parentheses
nnoremap <Leader>( ciw()<esc>hpF)

" Git diff 
nnoremap <Leader>gd :Gvdiff<CR>
nnoremap <Leader>gdh :diffget //2<CR>
nnoremap <Leader>gdl :diffget //3<CR>
