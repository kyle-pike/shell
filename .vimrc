set modifiable
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
let g:netrw_winsize=25
let g:netrw_keepdir = 0
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

autocmd FileType css set set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 

inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
    if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
        return "\<C-P>"
    else
        return "\<Tab>"
    endif
endfun

" Minimalist-AutoCompletePop-Plugin
set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 4] !~ '\K'
        \ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] =~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'

        call feedkeys("\<C-P>", 'n')
    end
endfun
