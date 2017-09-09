let s:script = fnamemodify(expand('<sfile>'), ':p:h:h:gs').g:file_sep.'latexindent.pl'.g:file_sep.'latexindent.pl'
let s:settings = fnamemodify(expand('<sfile>'), ':p:h:h:gs').g:file_sep.'settings.yaml'

function s:latex_formater()
  let b:winview = winsaveview()
  let s:tmp_name = tempname().'.tex'
  silent execute 'write' s:tmp_name
  silent execute "!".s:script." -m -s -l " . s:settings . " -w " . s:tmp_name
  silent execute "%!cat " . s:tmp_name
  call winrestview(b:winview)
endfunction


command! -buffer LaTeXFormat call s:latex_formater()

autocmd FileType tex nnoremap <buffer><Leader>cf :<C-u>LaTeXFormat<CR>
autocmd FileType tex vnoremap <buffer><Leader>cf :LaTeXFormat<CR>
