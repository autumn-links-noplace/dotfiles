" Basic Settings -------------------- {{{

"Use comma instead of backslash for leader commands
let mapleader = ","
set number

"setup folding for vim files
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" Some Functions -------------------- {{{

"Remove whitespace from end of lines
function! Preserve(command)
  " Preparation - save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
map <leader>$ :call Preserve("%s/\\s\\+$//e")<CR>

" }}}

" Configure plugins -------------------- {{{
"
"Buffergator customizations
let g:buffergator_sort_regime="filepath"
let g:buffergator_viewport_split_policy="B"
let g:buffergator_suppress_keymaps=1
let g:tmux_navigator_no_mappings = 1

"CtrlP customizations
let g:ctrlp_map = '<C-P><C-P>'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'ddollar/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-unimpaired'

call plug#end()

" }}}

" Plugin customizations -------------------- {{{

"" buffergator is <M-F>
nnoremap ƒ :BuffergatorToggle<CR>
nnoremap <M-F> :BuffergatorToggle<CR>
"
"" ctrlp prefix is <C-P>
"" Note: <C-P><C-P> is set in vimrc.before
"call janus#add_mapping("ctrlp", "nnoremap", "<C-P><C-U>", ":CtrlPBuffer<CR>")
"" this is better for brazil workspaces
"let g:ctrlp_working_path_mode = '0'

"" gundo is <M-G>
"call janus#add_mapping("gundo", "nnoremap", "©", ":GundoToggle<CR>")
"call janus#add_mapping("gundo", "nnoremap", "<M-G>", ":GundoToggle<CR>")

"" nerdtree prefix is <M-R>
nnoremap ®® :NERDTreeToggle<CR>
nnoremap <M-R><M-R> :NERDTreeToggle<CR>
nnoremap ®ƒ :NERDTreeFind<CR>
nnoremap <M-R><M-F> :NERDTreeFind<CR>

"" tagbar is <M-A>
"call janus#add_mapping("tagbar", "nnoremap", "å", ":TagbarToggle<CR>")
"call janus#add_mapping("tagbar", "nnoremap", "<M-A>", ":TagbarToggle<CR>")
"let g:tagbar_sort=0 " sort methods by file order, not name
"
"" zoomwin is <C-W><C-M> to be beside the other window commands (See :help
"" CTRL-W)
"call janus#add_mapping("zoomwin", "nnoremap", "<C-W><C-M>", ":ZoomWin<CR>")

nnoremap <C-H> :TmuxNavigateLeft<cr>
nnoremap <C-J> :TmuxNavigateDown<cr>
nnoremap <C-K> :TmuxNavigateUp<cr>
nnoremap <C-L> :TmuxNavigateRight<cr>

" }}}

" Language settings -------------------- {{{

"setup markdown filetype using my naming convention
:autocmd BufNewFile,BufRead *.md.txt set filetype=markdown

"Configure Rails to not build tags for java
let g:rails_ctags_arguments='--languages=-javascript --languages=-java --exclude=vendor'

"golang plugins
if exists("$GOROOT")
  set runtimepath+=$GOROOT/misc/vim
endif

"rust tags
"setlocal tags=rusty-tags.vi;/,path-to-rust-source-code/rusty-tags.vi
"autocmd BufWrite *.rs :silent !rusty-tags vi

" }}}