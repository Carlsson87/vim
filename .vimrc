"------ Settings
"
syntax on			"Enable syntax highlighting
colorscheme atom-dark-256
set number			"Enable row numbers
set showmatch                   "Show matching ([{
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab                    "Use 4 spaces instead of tabs
set noswapfile                  "Dont use swap files
set splitright                  "Split vertically to the right
set splitbelow                  "Split horizontally below
set hlsearch                    "Highlight search results
set incsearch                   "Incrementally search as I type
set autoread                    "Automatically update changed files
set laststatus=2
hi vertsplit ctermfg=bg ctermbg=bg
if !exists("g:airline_symbols")
    let g:airline_symbols = {}
endif
set ttimeoutlen=50
"------ Keymaps

" Turn the arrow keys off
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Map the plus to the end-of-line-thing
nmap + $

" Command to open the .vimrc file
nmap ,ev :e ~/.vimrc<cr>

" Command to unhighlight all search results 
nmap ,<space> :nohlsearch<cr>

" Map the spacebar to the search thing
nmap <space> /

" Command to open NERDTree
nmap ,1 :NERDTreeToggle<cr>

" Command to open the NERDTree to the PP project
nmap ,pp :cd ~/Code/pagepicnic <bar> e ~/Code/pagepicnic/__notes.md<cr>

"Create a vertical split
nmap <C-V> :vsp<cr>
nmap <C-C> :sp<cr>

"Move between splits
nmap <C-K> <C-W><C-K>
nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Resize splits
nmap <S-Right> :vertical resize +10<cr>
nmap <S-Left> :vertical resize -10<cr>
nmap <S-Up> :resize +10<cr>
nmap <S-Down> :resize -10<cr>

"See Most Recently Used
nmap <C-E> :CtrlPMRUFiles<cr>
nmap ,ä :bNext<cr>
nmap ,ö :bprev<cr>
nmap <CR> o<Esc>k

"------ AutoCommands
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %    "Autosources vimrc
augroup END

"------ Source the plugin file
so ~/.vim/plugins.vim

let g:ctrlp_max_files = 100000
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$\|node_modules$\|vendor$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
