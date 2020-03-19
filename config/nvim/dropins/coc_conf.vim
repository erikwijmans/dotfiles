" use <tab> for trigger completion and navigate next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" autocmd FileType c,cpp,objc,cuda inoremap <silent><expr> <TAB>
      " \ pumvisible() ? "\<C-n>" :
      " \ <SID>check_back_space() ? "\<TAB>" :
      " \ coc#refresh()


" " autocmd CursorHold * silent call CocActionAsync('highlight')
" autocmd FileType c,cpp,objc,cuda nmap <silent> gd <Plug>(coc-definition)
" autocmd FileType c,cpp,objc,cuda nmap <silent> gg <Plug>(coc-definition)
" autocmd FileType c,cpp,objc,cuda nmap <silent> dg <Plug>(coc-definition)
" autocmd FileType c,cpp,objc,cuda nmap <silent> gy <Plug>(coc-type-definition)
" autocmd FileType c,cpp,objc,cuda nmap <silent> gi <Plug>(coc-implementation)
" autocmd FileType c,cpp,objc,cuda nmap <silent> gr <Plug>(coc-references)
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gg <Plug>(coc-definition)
nmap <silent> dg <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
