"=========================
" General
"=========================
set nocompatible
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
" Disable folding
set nofoldenable
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
let g:vimtex_view_method = 'zathura'

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

" FZF
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Let FZF grep for file content using :Find
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number
      \ --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow
      \ --glob "!.git/*" --color "always" '.shellescape(<q-args>).'
      \ | tr -d "\017"', 1,  <bang>0)

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
imap jj <Esc>

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
"nnoremap <Leader>w :w<CR>
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

" Insert timestamp
nmap <F3> i<C-R>=strftime("%Y-%m-%d")<CR><Esc>
"imap <F3> <C-R>=strftime("%Y-%m-%d %H:%M %p")<CR>
imap <F3> <C-R>=strftime("%Y-%m-%d")<CR>

"========================
" Plugin key bindings 
"========================

" Bindings to open and close buffers
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>


" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
"let g:ctrlp_working_path_mode = 'r'

" FZF
" Open files with Leader + o
nnoremap <Leader>o :Files<CR>
" Open buffers with Leader + ;
nnoremap <Leader>; :Buffers<CR>

" Make YCM and UltiSnips behave nice w/ supertab
" YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" vim-irline theme
let g:airline_theme = "zenburn"

" vim-slime configuration
let g:slime_target = "tmux"
xmap <leader>s <Plug>SlimeRegionSend
nmap <leader>s <Plug>SlimeParagraphSend
let g:slime_python_ipython = 1



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
hi VimwikiHeader1 ctermfg=116
hi VimwikiHeader2 ctermfg=174
hi VimwikiHeader3 ctermfg=108
hi VimwikiHeader4 ctermfg=188
hi VimwikiHeader5 ctermfg=188
hi VimwikiHeader6 ctermfg=188
set colorcolumn=80
set t_ZH=[3m
set t_ZR=[23m
highlight Comment cterm=italic
