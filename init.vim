call plug#begin('~/.config/nvim/plugged')

"Plugins
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "fuzzy search files
Plug 'vim-airline/vim-airline' "vim status bar theme
Plug 'vim-airline/vim-airline-themes' "themes for vim-airline
Plug 'ayu-theme/ayu-vim' "ayu-theme
Plug 'scrooloose/nerdtree' "directory listing
Plug 'neoclide/coc.nvim', {'branch': 'release'} "intellisense
Plug 'tpope/vim-fugitive' "git integration for vim
Plug 'jiangmiao/auto-pairs' "Auto complete brackets
Plug 'fatih/vim-go'      "golang support
Plug 'airblade/vim-gitgutter' "git diff in sign column
Plug 'myusuf3/numbers.vim' "relative and absolute line numbers
Plug 'Xuyuanp/nerdtree-git-plugin' "git highlights for nerdtree
Plug 'dart-lang/dart-vim-plugin' "dart syntax highlight
Plug 'ryanoasis/vim-devicons' "Font support for nerdtree

"vim-airline theme
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

"fuzzy file-finder command for vim
set rtp+=/usr/local/opt/fzf

"nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


call plug#end()

set termguicolors
set encoding=UTF-8
let ayucolor="light"
colorscheme ayu

"Numbers.vim
nnoremap <F2> :NumbersToggle<CR>
"To get rid of bad vim habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"NerdTree remap
nmap <F1> :NERDTreeToggle<CR>


"coc-flutter
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

"golang
let g:go_fmt_autosave = 1
let g:go_imports_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_imports_mode = "goimports"
