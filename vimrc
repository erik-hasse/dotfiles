"
" ~/.vimrc
"

" neo/vim specific
if has('nvim')
  " make nvim use ~/.vim
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
else
  " change terminal cursor shape depending on mode
  let &t_SI = "\e[6 q"
  let &t_SR = "\e[4 q"
  let &t_EI = "\e[2 q"

  " terminal undercurl
  let &t_Cs = "\e[4:3m"
  let &t_Ce = "\e[4:0m"

  " put all swap files in a central location
  set directory^=$HOME/.vim/tmp//
  set backupdir^=$HOME/.vim/tmp//
endif

let no_flake8_maps = 1

let g:airline_powerline_fonts = 1

" plugins
call plug#begin('~/.vim/plugged')

Plug 'icymind/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nvie/vim-flake8'
Plug 'hynek/vim-python-pep8-indent'
Plug 'plasticboy/vim-markdown'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wikitopian/hardmode'

call plug#end()

let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" general
set termguicolors
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cindent
set smarttab
set showtabline=2
set laststatus=1
set hlsearch
set incsearch
set wildmode=list:longest,full
set backspace=indent,eol,start
set nostartofline
set ignorecase
set smartcase
set mouse=a
set ttimeout
set ttimeoutlen=100
set scrolloff=3
set sidescrolloff=5
set updatetime=100

" prefer vertical split
set splitright
set splitbelow

" extended matching
runtime! macros/matchit.vim

" solarized colors
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
colorscheme NeoSolarized
set background=dark

" link tab bar highlighting to main window
highlight! link TabLineFill Normal

" match gitgutter bg color to line number column
let s:guibg = synIDattr(hlID('LineNr'), 'bg', 'gui')
let s:ctermbg = synIDattr(hlID('LineNr'), 'bg', 'cterm')

for group in ['Add', 'Change', 'Delete', 'ChangeDelete']
  execute 'highlight GitGutter' . group . ' guibg=' . s:guibg . ' ctermbg=' . s:ctermbg
endfor

" save and load views automatically for appropriate files
" (systemd-tmpfiles is configured to clean old view files)
function UseView()
  let l:fname = expand('%:p')
  return &modifiable
        \ && filewritable(l:fname)
        \ && &buftype == ''
        \ && !&l:diff
        \ && &filetype != 'gitcommit'
        \ && l:fname !~ '^\(fugitive://\|/run\|/tmp\)'
endfunction

autocmd BufWinLeave * if UseView() | mkview | endif
autocmd BufWinEnter * if UseView() | silent! loadview | endif

" youcompleteme settings
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" prevent detecting some tex files as 'plaintex'
let g:tex_flavor='latex'

" whitespace
let g:better_whitespace_filetypes_blacklist = ['gitcommit']

let g:vim_markdown_concel = 0

"
" keyboard
"

" redefine leader
let mapleader = ","

" should be the default
map Y y$

" spellcheck toggle
map <F9> :setlocal spell! spelllang=en_us<CR>

" make shortcut
map <Leader>m :update<CR>:make<CR>

" :W = :w
cmap W<CR> w<CR>

" tabs
map <A-h> :tabprevious<CR>
map <A-s> :tabnext<CR>
map <A-t> :tabmove -<CR>
map <A-n> :tabmove +<CR>

" quickly turn of highlighting
map <C-h> :nohlsearch<CR>

" Smart home
noremap <expr> <silent> <Home> col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
imap <silent> <Home> <C-O><Home>

nnoremap gb :ls<CR>:b 

noremap - $
noremap _ ^
