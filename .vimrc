set number
set guifont=JetBrains\ Mono\ Regular:h16
set listchars=eol:*,tab:>-,trail:~,extends:>,precedes:<
set list
set directory=~/.cache/vim_swap//
set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0
let g:netrw_banner = 0
let g:netrw_liststyle= 3
let g:netrw_fastbrowse = 0
let g:netrw_winsize=30
syntax on

let theme = system('defaults read -g AppleInterfaceStyle')
if theme =~ 'Dark'
    colorscheme habamax
else
    colorscheme peachpuff
endif

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
