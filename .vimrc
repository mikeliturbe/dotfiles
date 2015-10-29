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

" Tex editing & some latex-suite definitions
au FileType tex setl spell sw=2 iskeyword+=:
" latex-suite config
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf' 
let g:Tex_CompileRule_dvi = 'pdflatex --interaction=nonstopmode $*'
" latex-suite disable folding
let g:Tex_FoldedSections=""
let g:Tex_FoldedEnvironments=""
let g:Tex_FoldedMisc=""
" Grep will generate a file-name (necessary for latex-suite)
set grepprg=grep\ -nH\ $*
" Do not use place holders
let g:Imap_UsePlaceHolders=0
nnoremap <SID>This_is_to_use_ctrl_j_with_windows <Plug>IMAP_JumpForward

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

" Open files with Leader + o
nnoremap <Leader>o :CtrlP<CR>
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

" Buffer key bindings

" New empty buffer
nmap <leader>t :enew<CR> 
" Move to next buffer
nmap <leader>j :bnext<CR>
" Move to previous buffer
nmap <leader>k :bprevious<CR>
" Close current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all buffers
nmap <leader>bl :ls<CR>
" Delete buffers
nmap <leader>bda :call DeleteEmptyBuffers()<CR>

" Delete Empty buffers
function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction

"========================
"Bundles
"========================
source ~/.vim/bundles.vim

"=========================
"To activate after bundles
"=========================
"Appearance
syntax on
set t_Co=256
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

