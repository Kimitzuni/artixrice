set number relativenumber
set background=dark
set noshowmode
set encoding=utf-8

call plug#begin()
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/NERDTree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

let g:airline_powerline_fonts = 1
let g:livepreview_previewer = 'zathura'
