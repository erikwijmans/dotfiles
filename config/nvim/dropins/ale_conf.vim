" let g:ale_linters_explicit = 1
" let g:airline#extensions#ale#enabled = 1

" call ale#Set('cuda_ccls_executable', 'ccls')
" call ale#Set('cuda_ccls_init_options', {})

" call ale#linter#Define('cuda', {
" \   'name': 'ccls',
" \   'lsp': 'stdio',
" \   'executable_callback': ale#VarFunc('cuda_ccls_executable'),
" \   'command': '%e',
" \   'project_root_callback': 'ale#handlers#ccls#GetProjectRoot',
" \   'initialization_options_callback': ale#VarFunc('cuda_ccls_init_options'),
" \})

" let g:ale_linters = {
    " \ 'c': ['ccls'],
    " \ 'cpp': ['ccls'],
    " \ 'cuda': ['ccls', 'nvcc'],
    " \ 'python': ['pyls'],
    " \}

" let g:ale_cpp_ccls_init_options = {
    " \   'cacheDirectory': '/tmp/ccls-cache',
    " \   'cacheFormat': 'binary',
    " \   'diagnostics': {
    " \     'onOpen': 0,
    " \     'opChange': 0,
    " \   },
    " \ }

" let g:ale_c_ccls_init_options = ale_cpp_ccls_init_options
" let g:ale_cuda_ccls_init_options = ale_cpp_ccls_init_options

" nmap <Leader>dg :ALEGoToDefinition <CR>
