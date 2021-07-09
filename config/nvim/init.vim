" Usefull variables                                                         {{{
"Windows ?
let g:isWin = has('win16') || has('win32') || has('win64')
" / or \ depending on OS
let g:file_sep = (g:isWin)?'\':'/'
" Exemples on Linux, using original vim
" ~/
let g:Vimmic_HOME = fnamemodify(expand('<sfile>'), ':p:h:gs').g:file_sep
" ~/.vim/
let g:Vimmic_BASE = fnamemodify(resolve(expand('<sfile>')), ':p:h:gs').g:file_sep
" ~/.vim/config/
let g:Vimmic_CONFIG = g:Vimmic_BASE."config".g:file_sep
" ~/.vim/config/plugins/
let g:Vimmic_CONFIG_DROPINS = g:Vimmic_BASE."dropins".g:file_sep
" ~/.vimrc.preconf
let g:Vimmic_PRECONF  = g:Vimmic_HOME.".vimrc.preconf"
" ~/.vimrc.postconf
let g:Vimmic_POSTCONF = g:Vimmic_HOME.".vimrc.postconf"
" ~/.vim/dein/repos/github.com/Shougo/dein.vim/
let g:Vimmic_DEIN = g:Vimmic_BASE.join(['dein','repos','github.com','Shougo','dein.vim'], g:file_sep)
"}}}"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dein first install
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:deinNeedInstall=1
if !filereadable(expand(g:Vimmic_DEIN).g:file_sep.'README.md')
    if executable('git')
        let g:deinNeedInstall=1
        echom "Install dein"
        exec '!git clone https://github.com/Shougo/dein.vim '.g:Vimmic_DEIN
    else
        echohl WarningMsg
        echom "Git needed ! (how did you get this conf without it ?)"
        echohl None
    endif

endif

let g:black_virtualenv = g:Vimmic_BASE."black"

" let g:ale_completion_enabled = 1

"}}}"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin import                                                             {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

execute 'set runtimepath^='.g:Vimmic_DEIN

if dein#load_state(g:Vimmic_BASE."dein")
    call dein#begin(g:Vimmic_BASE."dein")

    " Let dein manage dein
    call dein#add('Shougo/dein.vim')

    call dein#add('tpope/vim-sensible')

    " GUI
    " call dein#add('vim-airline/vim-airline')
    " call dein#add('vim-airline/vim-airline-themes')
    call dein#add('liuchengxu/eleline.vim')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('tpope/vim-fugitive')
    call dein#add('tpope/vim-rhubarb')
    call dein#add('scrooloose/nerdtree')
    call dein#add('myusuf3/numbers.vim')
    call dein#add('mbbill/undotree')
    " call dein#add('majutsushi/tagbar')
    " call dein#add('xolox/vim-easytags')
    call dein#add('xolox/vim-misc')

    call dein#add('embear/vim-localvimrc')

     " Motion / Indentation
    call dein#add('luochen1990/rainbow')
    call dein#add('tpope/vim-sleuth')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('Raimondi/delimitMate')
    " call dein#add('easymotion/vim-easymotion')
    call dein#add('terryma/vim-smooth-scroll')
    call dein#add('justinmk/vim-sneak')

    " call dein#add('Valloric/YouCompleteMe', {'merged': 0, 'on_ft': ['python']})
    call dein#add('neoclide/coc.nvim', {'rev': 'release'})
    call dein#add('liuchengxu/vista.vim')
    " call dein#add('w0rp/ale')

    " Deoplete
    " call dein#add('Shougo/deoplete.nvim')
    " call dein#add('Shougo/deol.nvim')
    call dein#add('Shougo/denite.nvim')
    call dein#add('Shougo/neomru.vim')
    call dein#add('Shougo/context_filetype.vim')
    " call dein#add('Shougo/neosnippet.vim')
    " call dein#add('Shougo/neosnippet-snippets')
    call dein#add('Shougo/neoinclude.vim')

    " Langs
    " call dein#add('zchee/deoplete-clang')
    " call dein#add('zchee/deoplete-jedi')
    " call dein#add('tweekmonster/deoplete-clang2')
    " Neomake
    if has('nvim')
      call dein#add('neomake/neomake')
    endif

    " lib needed by nerdtree & others
    call dein#add('tomtom/tlib_vim')
    call dein#add('MarcWeber/vim-addon-mw-utils')
    call dein#add('kana/vim-operator-user')

    " C / CPP
    call dein#add('octol/vim-cpp-enhanced-highlight', {'on_ft':["c","cpp"]})
    call dein#add('rhysd/vim-clang-format')
    " call dein#add('arakashic/chromatica.nvim')

    " Python
    call dein#add('nvie/vim-flake8')
    " call dein#add('hdima/python-syntax')
    call dein#add('kh3phr3n/python-syntax')
    " call dein#add('mindriot101/vim-yapf')
    call dein#add('psf/black', { 'rev': 'ce14fa8b497bae2b50ec48b3bd7022573a59cdb1' })

    " TS
    call dein#add('leafgarland/typescript-vim')

    " Latex
    " call dein#add('lervag/vimtex', {'on_ft':"tex"})
    call dein#add('donRaphaco/neotex', {'on_ft': "tex"})
    " Markdown
    call dein#add('godlygeek/tabular')
    call dein#add('plasticboy/vim-markdown', {'on_ft':["markdown"]})

    " FZF
    call dein#add('junegunn/fzf', { 'build': './install --bin' })
    call dein#add('junegunn/fzf.vim')

    " Theme
    call dein#add('mhartington/oceanic-next')
    call dein#add('rafi/awesome-vim-colorschemes')
    call dein#add('dracula/vim', { 'name': 'dracula' })

    " CMake
    call dein#add('pboettch/vim-cmake-syntax')

    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on


" If you want to install not installed plugins on startup.
if g:deinNeedInstall
    if dein#check_install()
        call dein#install()
    endif
endif

"End dein Scripts-------------------------

"}}}"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Global configuration                                                      {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  " au BufWritePre * %s/\s\+$//e " Trim trailing whitespace
  au FocusLost * silent! wa " Save on focus loss
  au InsertLeave * silent! set notimeout <bar> set ttimeout
  au InsertEnter * silent! set timeout <bar> set nottimeout
endif
set autowrite " Save on buffer switch
set notimeout

" Leader key
if !exists("mapleader")
    let mapleader=" "                      " Leader key is <SPACE>.
endif
nmap <silent> <Leader>t :enew<Cr>
nmap <silent> <Leader>Q :x<Cr>
nmap <silent> <Leader>q :up<bar>bd<Cr>
imap jk <Esc>

"}}}"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Module and environment configuration                                      {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load all plugins confs
" Each file have:
"  - settings
"  - shortcuts
"  - colors and theme
for dropin in split(glob(g:Vimmic_CONFIG_DROPINS."*"), '\n') " is \n ok on Windows ?
    execute 'source' dropin
endfor

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
" colorscheme solarized8
colorscheme dracula
set t_Co=256
" set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

call mkdir($HOME . "/.local/share/vim/swap", "p", 0700)
set directory^=$HOME/.local/share/vim/swap//

let python_highlight_all = 1


let g:conda_dir="$HOME/miniconda3"
let g:python3_host_prog=g:conda_dir.g:file_sep."envs/neovim3/bin/python"
let g:python_host_prog=g:conda_dir.g:file_sep."envs/neovim2/bin/python"

set tabstop=4 shiftwidth=4 expandtab smarttab

if !has('nvim')
  set is hls
endif
