"This is my init.vim 
"beginning of vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'sheerun/vim-polyglot'

"auto-complete engine
Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

"it's necessary pip install pynvim and pip install jedi
Plug 'zchee/deoplete-jedi'

"comment plugin <leader>cc to comment and <leader>cu to uncomment
Plug 'scrooloose/nerdcommenter'

"auto format plugin, need install pip install yapf
Plug 'sbdchd/neoformat'

"file manager
Plug 'scrooloose/nerdtree'

"syntax check
Plug 'neomake/neomake'

"automatic quote completation
Plug 'jiangmiao/auto-pairs'

"edit multiple position, Ctrl+n to select the word, c in the end to confirm
"and i to insert the new name
Plug 'terryma/vim-multiple-cursors'

"show what you have copied
Plug 'machakann/vim-highlightedyank'


call plug#end()

"enable deoplete
let g:deoplete#enable_at_startup = 1

let g:jedi#auto_initialization = 0
"disable autocompletation, because we use deoplete for completation
let g:jedi#completation_enable = 0

"navigate through auto-complete list with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"enable alignment
let g:neoformat_basic_format_align = 1
"enable tab to space conversion
let g:neoformat_basic_format_retab = 1
"enable trimming
let g:neoformat_basic_format_trim = 1

"using pylint as code checker
let g:neomake_python_enable_makers = ['pylint']

"show line numbers
set number

"enable nerdtree Ctrl + n
nnoremap <C-o> <ESC>:NERDTreeToggle<CR>

syntax on
