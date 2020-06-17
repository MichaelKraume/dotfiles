set number relativenumber
set clipboard+=unnamedplus
set splitbelow splitright
set undodir=~/.config/nvim/undo-dir
set undofile
set whichwrap+=<,>,h,l,[,]
set mouse=a	
"Keybinds
	xnoremap > >gv
	xnoremap < <gv
	xnoremap <silent> <C-down> :move '>+<cr>gv
	xnoremap <silent> <C-up> :move '<-2<cr>gv
	nnoremap <silent> <C-Up> <Esc>:m-2<CR>
	nnoremap <silent> <C-Down> <Esc>:m+<CR>
	inoremap <silent> <C-Down> <Esc>:m+<CR>a
	inoremap <silent> <C-Up> <Esc>:m-2<CR>a
	inoremap <C-T> <Esc>:tabnew
	nnoremap <C-T> :tabnew        
	inoremap <C-tab> <Esc>:tabnext<CR>
	nnoremap <C-tab> :tabnext<CR>
	inoremap <C-S-tab> <Esc>:tabprevious<CR>
	nnoremap <C-S-tab> :tabprevious<CR>
	nnoremap <q> :q<CR>
	nnoremap G G$
	inoremap <C-G> <Esc>G$a
