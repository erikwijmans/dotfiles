let g:neomake_cpp_enable_makers = ['clang']
let g:neomake_cpp_clang_maker = neomake#makers#ft#cpp#clang()
let g:neomake_cpp_clang_maker.args += ['-std=c++14']
" let g:neomake_open_list = 0
let g:neomake_verbose = 1

map <Leader>m :Neomake<Cr>
