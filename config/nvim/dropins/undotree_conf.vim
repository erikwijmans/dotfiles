" mbbill/undotree
" Visualize vim undo-tree to easily recover past states

" Settings
""""""""""
let g:undotree_TreeNodeShape = '●'

let g:undotree_HighlightChangedText = 0    " remove annoying highlight
let g:undotree_WindowLayout = 2            " undo-tree left, diff below.
let g:undotree_DiffAutoOpen = 1            " diff on demand
let g:undotree_ShortIndicators = 1         " smaller panel
let g:undotree_SplitWidth = 24             " and size
 let g:undotree_SetFocusWhenToggle = 1

" Shortcut
""""""""""
nnoremap <leader>u :UndotreeToggle<cr>
set undodir=~/.undodir/
set undofile

" Theme
"""""""
" None
