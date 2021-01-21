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
Plug 'drewtempelmeyer/palenight.vim' "theme
Plug 'sonph/onehalf', { 'rtp': 'vim' } "theme
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' "fuzzy file finder
Plug 'gruvbox-community/gruvbox' "theme
Plug 'ryanoasis/vim-devicons' "Font support for nerdtree

call plug#end()


"Remaps
let mapleader = " "
"NerdTree remap
nmap <F1> :NERDTreeToggle<CR>
"Numbers.vim
nnoremap <F2> :NumbersToggle<CR>
"To get rid of bad vim habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" GoTo code navigation
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
"coc-flutter
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nnoremap <leader>fe :CocCommand flutter.emulators<CR>
nnoremap <leader> fr :CocCommand flutter.run<CR>
"To remove VIM ex-mode so we dont accidentally enter it.
map q: <Nop>
nnoremap Q <nop>
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
"Custom functions to trim white space
fun! TrimWhiteSpace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup YUDI_CUSTOM
	autocmd!
	autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
