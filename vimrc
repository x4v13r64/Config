"basic colors scheme
syntax on
filetype on                         " try to detect filetypes
filetype plugin indent on           " enable loading indent file for filetype
:colorscheme torte
:set number
:set showmode
:set showmatch
:set showcmd
:set showfulltag
"use spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab 

"put red line at character 80
set colorcolumn=80
"Highlight excess line length
"augroup vimrc_autocmds
"    autocmd!
"    " highlight characters past column 80
"    autocmd FileType python highlight Excess ctermbg=Yellow guibg=Green
"    autocmd FileType python match Excess /\%80v.*/
"    autocmd FileType python set nowrap
"augroup END

" code folding -> press za
set foldmethod=indent
set foldlevel=99
" error checker : pyflakes
let g:pyflakes_use_quickfix = 0
" style checker : pep8
let g:pep8_map='<leader>8'
" tab completion : jedi
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
