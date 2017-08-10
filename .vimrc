syntax on
set shell=/bin/bash\ -i
set nocompatible
filetype off

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'keith/swift.vim'
Plug 'kballard/vim-swift'
Plug 'elixir-lang/vim-elixir'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/neocomplete.vim'
Plug 'othree/yajs.vim'
Plug 'tpope/vim-fugitive'
Plug 'gavocanov/vim-js-indent'
Plug 'exitface/synthwave.vim'
Plug 'valloric/YouCompleteMe'
call plug#end()
filetype plugin indent on
"Set airline to show status bar always
set laststatus=2
"Set ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
" The silver searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,
let ctrlp_extensions=['line', 'dir']
" --column: Show column number
"  " --line-number: Show line number
"  " --no-heading: Do not show file headings in results
"  " --fixed-strings: Search term as a literal string
"  " --ignore-case: Case insensitive search
"  " --no-ignore: Do not respect .gitignore, etc...
"  " --hidden: Search hidden files and folders
"  " --follow: Follow symlinks
"  " --glob: Additional conditions for search (in this case ignore everything
"  in the .git/ folder)
"  " --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim-jsx config
let g:jsx_ext_required = 0
set number
set splitbelow
set splitright
set expandtab
set tabstop=4
set shiftwidth=4
set t_Co=256
set background=dark
if (has("termguicolors"))
  set termguicolors
endif
let g:airline_theme='synthwave'
set autoindent
set smartindent
map <silent> <C-n> :NERDTreeFocus<CR>
colorscheme synthwave
