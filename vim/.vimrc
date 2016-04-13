"=========================
" General
"=========================
filetype plugin on 
filetype indent on     
let mapleader = "\<Space>" 

"=========================
" User interface
"=========================

" Make backspace behave in a sane manner
set backspace=indent,eol,start
" Searching cases
set ignorecase smartcase
" Automatically change the current directory
set autochdir 
" Change terminal title when not using the GUI
set title 
" Shell-like command mode (completion with TAB)
set wildmode =list:longest
"Set utf8 as standard encoding
set encoding=utf8
" Extra margin to the left
set foldcolumn=1
" Can have unsaved changes when changing buffers
set hidden
" Window splits
set splitbelow
set splitright

"=========================
" Filetypes
"=========================
" Python editing 
au FileType python setl expandtab autoindent tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 fileformat=unix

let python_highlight_all=1

" C editing
au FileType c setl cin

" Highlight unnecessary spaces
autocmd ColorScheme * highlight BadWhitespace ctermbg=green guibg=darkgreen
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Tex editing 
au FileType tex setl spell colorcolumn=80 sw=2 textwidth=79 iskeyword+=:
let g:tex_flavor = "latex"
let g:tex_conceal = ""
let g:tex_fold_enabled = 0
let g:tex_comment_nospell = 1

" Vimtex & YCM
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*,?)*',
      \ 're!\\includegraphics([^]]*])?{[^}]*',
      \ 're!\\(include|input){[^}]*'
      \ ]

" General editing
set et sw=2 sts=2 ts=2 ai

"Disable auto-commenting new line
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"=========================
"Key bindings
"=========================
command! Q q " Bind :Q to :q
command! W w " Bind :W to :w
"Change text lines for screen lines when moving accross multiple lines
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
"Go to first non-empty character
nmap 0 ^
"Change faster to normal mode
imap jj <esc>

"Disable arrows
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Map Y to act like D and C
map Y y$

" Find marks more easily with '
nnoremap ' `
nnoremap ` '

" Write files with Leader + w
nnoremap <Leader>w :w<CR>
" Use system clipboard with Leader
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Splits key bindings
let g:C_Ctrl_j = 'off'
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"========================
" Plugin key bindings 
"========================
" Buffergator

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Go to the previous buffer open
nmap <leader>j :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>k :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" Bindings to open and close buffers
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

" Ctrl-P
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
"let g:ctrlp_working_path_mode = 'r'

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" Open files with Leader + o
nnoremap <Leader>o :CtrlP<CR>

" Index all files
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" Close ctrlp with Esc C-c or jj
let g:ctrlp_prompt_mappings = { 'PrtExit()': ['<esc>', '<c-c>', '<c-g>', ','] }

" Make YCM and UltiSnips behave nice w/ supertab
" YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"========================
"Bundles
"========================
source ~/.vim/plugins.vim

"=========================
"To activate after bundles
"=========================
"Appearance
syntax on
"256-color terminal (comment if using tmux w/ 256 colors)
"set t_Co=256
if has ('gui_running')
	"GUI colors
	colorscheme zenburn
  "Maximize window
  set lines=64 columns=242
else
	"Terminal colors
	colorscheme zenburn
  " Spell check underline
  hi clear SpellBad
  hi SpellBad cterm=underline ctermfg=red
endif
