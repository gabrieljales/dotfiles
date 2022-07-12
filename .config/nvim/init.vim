call plug#begin()
Plug 'ghifarit53/tokyonight-vim' " Main theme
"Plug 'arcticicestudio/nord-vim' " Nord theme
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim' " Editor-config file forma plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} " Markdown plugin
Plug 'dense-analysis/ale', {'for': ['python']}
Plug 'vim-python/python-syntax' " Python syntax highlight
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ryanoasis/vim-devicons' " Vim icons
call plug#end()

set encoding=utf-8

"------------ Theme config ------------
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
"colorscheme nord

"------------ Airline config ------------
let g:airline#extensions#tabline#enabled = 1

"------------ Linters ------------
let g:ale_linters = {
  \ 'python': ['pylint'],
  \}

"------------ Ctrl + Tab to switch buffer (next) ------------
nnoremap <c-i> :bn<CR>

"------------ shortcut to 'go to definition' ------------
"nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>

"------------ fzf files ------------
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

"------------ Indentline ------------
let g:indentLine_char_list = ['┊']

"------------ Others ------------
syntax on
set hidden
set number
set relativenumber
set inccommand=split " Command previewset smarttab
set clipboard=unnamed,unnamedplus
set updatetime=300

"------------ tab config ------------
set tabstop=8 " Determines how many columns a tab counts for
set softtabstop=0 " How far cursor moves while typing Tab
set shiftwidth=4 " Determines how many columns text is indented when using reindent operations
set expandtab " Use spaces instead of tabs
set smarttab

let mapleader="\<space>"
nnoremap <SPACE> <Nop>

"------------ easy see buffers ------------
:nnoremap <Leader>b :buffers<CR>:buffer<Space>

"------------ ctrl + a to select all text ------------
nnoremap <c-a> <esc>ggVG<cr>

"------------ coc-explorer shortcut ------------
nnoremap <leader>e :CocCommand explorer<CR>

"------------ Auto complete with tab key ------------
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

"------------ Remember cursor position ------------
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"------------ Remove trailing whitespace on save ------------
autocmd! BufWritePre * :%s/\s\+$//e

" ------------ Golang environment ------------

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" Syntax highlight
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

let g:python_highlight_all = 1 " Python syntax highlight

"------------ Coc Extensions ------------
let g:coc_global_extensions = [
  \ 'coc-jedi',
  \ 'coc-explorer',
  \ 'coc-html',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-pairs',
  \ 'coc-go',
  \ 'coc-java',
  \ ]
