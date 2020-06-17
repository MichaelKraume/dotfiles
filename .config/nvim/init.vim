let confdir="~/.config/nvim/"
source ~/.config/nvim/plugins.vim
"general stuff
source ~/.config/nvim/general.vim
" airline
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_theme='papercolor'
        let g:airline_powerline_fonts = 1
        set background=dark
        colorscheme PaperColor
" Snippets & Completion
"R
"autocmd filetype r nmap <silent> <leader>d <Plug>DashSearch<CR>

"Latex
        autocmd filetype tex,plaintex source ~/.config/nvim/filetypes/tex.vim
