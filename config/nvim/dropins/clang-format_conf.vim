let g:clang_format#code_style="llvm"
autocmd FileType c,cpp,cu ClangFormatAutoEnable
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc,cuda nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,cuda vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc,cuda map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
