" Vertical split
noremap <leader>v :vsplit<cr>

" Easier windows navigation (when you split your workspace)
nnoremap <c-Left> <c-w>h
nnoremap <c-Down> <c-w>j
nnoremap <c-Up> <c-w>k
nnoremap <c-Right> <c-w>l

" fast write to buffer
nnoremap <leader>w :w<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
