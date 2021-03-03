source $HOME/.config/nvim/vim-plug/plugins.vim
" Enable relative line
set nu! rnu!

"Enable mouse
set mouse=a

" map nerdtree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" map jj to escape
inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Color scheme
syntax on
colorscheme onedark
let g:airline_theme='onedark'

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver','coc-eslint']
let g:auto_save = 1

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
