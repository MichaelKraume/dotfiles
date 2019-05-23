set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'

"snippets & completion
Plugin 'valloric/youcompleteme'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'

"git
Plugin 'airblade/vim-gitgutter'

"make it look pretty
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nlknguyen/papercolor-theme'

Plugin 'auto-pairs-gentle'
"latex
Plugin 'donraphaco/neotex', { 'for': 'tex' }
Plugin 'Align'

"latex
Plugin 'jalvesaq/nvim-r'
call vundle#end()
"general stuff
        set number relativenumber
        set clipboard+=unnamedplus
        set splitbelow splitright
        set undodir=~/.config/nvim/undo-dir
        set undofile
        set whichwrap+=<,>,h,l,[,]
        set mouse=a	
	" assumes set ignorecase smartcase
        augroup dynamic_smartcase
            autocmd!
            autocmd CmdLineEnter : set nosmartcase
            autocmd CmdLineLeave : set smartcase
        augroup END
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
" airline
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_theme='papercolor'
        let g:airline_powerline_fonts = 1
        set background=dark
        colorscheme PaperColor
" Snippets & Completion
        let g:UltiSnipsSnippetDirectories= ['~/.config/nvim/bundle/vim-snippets/UltiSnips']

                " make YCM compatible with UltiSnips (using supertab)
                let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
                let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
                let g:SuperTabDefaultCompletionType = '<C-n>'

                " better key bindings for UltiSnipsExpandTrigger
                let g:UltiSnipsExpandTrigger = "<tab>"
                let g:UltiSnipsJumpForwardTrigger = "<tab>"
                let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"Latex
        autocmd filetype tex,plaintex hi Error NONE
        autocmd filetype tex,plaintex let g:AutoPairs = {"$$":"$$",'$':'$','(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
        autocmd filetype tex,plaintex inoremap γ \gamma
        autocmd filetype tex,plaintex inoremap Γ \Gamma
        autocmd filetype tex,plaintex inoremap θ \theta
        autocmd filetype tex,plaintex inoremap Θ \Theta
	autocmd filetype tex,plaintex inoremap δ \delta
	autocmd filetype tex,plaintex inoremap Δ \Delta
	autocmd filetype tex,plaintex inoremap α \alpha
	autocmd filetype tex,plaintex inoremap ∀ \forall
	autocmd filetype tex,plaintex inoremap ε \varepsilon
	autocmd filetype tex,plaintex inoremap β \beta
	autocmd filetype tex,plaintex inoremap ξ \xi
	autocmd filetype tex,plaintex inoremap Ξ \Xi
	autocmd filetype tex,plaintex inoremap ζ \Zeta
	autocmd filetype tex,plaintex inoremap ν \nu
	autocmd filetype tex,plaintex inoremap μ \mu
	autocmd filetype tex,plaintex inoremap υ \upsilon
	autocmd filetype tex,plaintex inoremap ∇ \nabla
	autocmd filetype tex,plaintex inoremap π \pi
	autocmd filetype tex,plaintex inoremap Π \Pi
	autocmd filetype tex,plaintex inoremap σ \sigma
	autocmd filetype tex,plaintex inoremap Σ <space>sum<Tab>

	
	autocmd filetype tex,plaintex inoremap ⌀ \rightarrow
	autocmd filetype tex,plaintex inoremap → \rightarrow
	autocmd filetype tex,plaintex inoremap ⇐ \leftarrow
	autocmd filetype tex,plaintex inoremap × \times
	autocmd filetype tex,plaintex inoremap ∓ \mp
	autocmd filetype tex,plaintex inoremap ± \pm
	autocmd filetype tex,plaintex inoremap ∃ \exists
	autocmd filetype tex,plaintex inoremap ∫ \int
	autocmd filetype tex,plaintex inoremap ℝ \mathbb{R}
	autocmd filetype tex,plaintex inoremap ℚ \mathbb{Q}
	autocmd filetype tex,plaintex inoremap ℤ \mathbb{Z}
	autocmd filetype tex,plaintex inoremap ℕ \mathbb{N}
	autocmd filetype tex,plaintex inoremap ℂ \mathbb{C}
	autocmd filetype tex,plaintex inoremap ∞ \inf
	autocmd filetype tex,plaintex inoremap ⟨ \langle
	autocmd filetype tex,plaintex inoremap ⟩ \rangle
	autocmd filetype tex,plaintex inoremap ∅ \emptyset
	autocmd filetype tex,plaintex inoremap ∧ \land
	autocmd filetype tex,plaintex inoremap ∨ \lor
	autocmd filetype tex,plaintex inoremap ⊂ \subset
	autocmd filetype tex,plaintex inoremap ∈ \in
	autocmd filetype tex,plaintex inoremap ∪ \cup
	autocmd filetype tex,plaintex inoremap ∩ \cap

	"Align Tables
        "        autocmd filetype tex inoremap <silent> & &<Esc>:Align & <cr>f&a
