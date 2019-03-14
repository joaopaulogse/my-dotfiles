"""""""""""""""""""""""""""""""""""""
" Allan MacGregor Vimrc configuration 
"""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set nowrap
set encoding=utf8
set encoding=UTF-8

set number
set ruler

set mouse=a

" Enable highlighting of the current line
set cursorline

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" xuppeeeettaaa

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'wincent/Command-T'
Plugin 'ternjs/tern_for_vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plugin 'vim-airline/vim-airline'
Plugin 'sheerun/vim-polyglot'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
"""
" @link: https://github.com/airblade/vim-gitgutter
"""
Plugin 'airblade/vim-gitgutter'

" Theme
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'ajh17/Spacegray.vim'
Plugin 'HenryNewcomer/vim-theme-papaya'
Plugin 'chriskempson/base16-vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim'
Plugin 'joshdick/onedark.vim'

" Elm Support
Plugin 'lambdatoast/elm.vim'


" JavaScript
Plugin 'pangloss/vim-javascript'

" Vuejs
Plugin 'posva/vim-vue'
Plugin 'leafOfTree/vim-vue-plugin'


"Css
Plugin 'cakebaker/scss-syntax.vim'

""" Docker
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'kevinhui/vim-docker-tools'

""" Markdown
Plugin 'JamshedVesuna/vim-markdown-preview'


" OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required


set omnifunc=syntaxcomplete#Complete

nmap <F8> :TagbarToggle<CR>

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-z> :u
map <C-t> :vsplit
map <C-s> :w
map <C-p> :Files<CR>
map <C-Leader-p> :vsplit \| :Files<CR>

if (has("termguicolors"))
  set termguicolors
endif

set t_Co=256
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme onedark 


autocmd QuickFixCmdPost *grep* cwindow



" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0


" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1


let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Vue configuration
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_has_init_indent = 1

