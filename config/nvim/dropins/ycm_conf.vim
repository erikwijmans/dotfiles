" let g:ycm_global_ycm_extra_conf = '~/.config/nvim/dein/repos/github.com/Valloric/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
autocmd FileType python nmap <silent> gg : YcmCompleter GoTo <CR>
