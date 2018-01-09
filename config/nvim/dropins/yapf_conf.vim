" map to <Leader>cf in C++ code
autocmd FileType python nnoremap <buffer><Leader>cf :<C-u>Yapf<CR>
autocmd FileType python vnoremap <buffer><Leader>cf :Yapf <CR>
let g:yapf_style = "'{based_on_style: google,
            \ indent_width: 4,
            \ coalesce_brackets=True,
            \ dedent_closing_brackets=True,
            \ split_before_expression_after_opening_paren=True
            \ split_before_first_argument=True}'"

