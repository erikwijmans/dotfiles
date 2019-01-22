" use <tab> for trigger completion and navigate next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

autocmd FileType c,cpp,objc,cuda inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


" autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd FileType c,cpp,objc,cuda nmap <silent> gd <Plug>(coc-definition)
autocmd FileType c,cpp,objc,cuda nmap <silent> gg <Plug>(coc-definition)
autocmd FileType c,cpp,objc,cuda nmap <silent> dg <Plug>(coc-definition)
autocmd FileType c,cpp,objc,cuda nmap <silent> gy <Plug>(coc-type-definition)
autocmd FileType c,cpp,objc,cuda nmap <silent> gi <Plug>(coc-implementation)
autocmd FileType c,cpp,objc,cuda nmap <silent> gr <Plug>(coc-references)
