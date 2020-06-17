set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'


"snippets & completion
Plugin 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'ryanoasis/vim-devicons'

"make it look pretty
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nlknguyen/papercolor-theme'
"R
Plugin 'jalvesaq/nvim-r'
Plugin 'rizzatti/dash.vim'
call vundle#end()
source ~/.config/nvim/plug-config/coc.vim
