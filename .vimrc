" ========== Commands and includes and such ==========

" === Automatically source the .vimrc file upon save
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

" === Source the plugins file (dont forget :PluginInstall)
so ~/.vim/plugins.vim


" ========== Keymaps ==========

" Make the arrow key useless
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" === Splits ===

" Create splits
nmap <C-V> :vsp<cr>
nmap <C-C> :sp<cr>

" Move between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Resize splits
nmap <S-Up> :resize +10 <bar> vertical resize +10<cr>
nmap <S-Down> :vertical resize -10<cr>

" === Search ===

nmap <space> /
nmap ,<space> :nohlsearch<cr>

" === CtrlP ===

" = Most recently used files
nmap <C-E> :CtrlPMRUFiles<cr>

" === Misc ===

nmap + $
nmap ö ;
nmap ,1 :NERDTreeToggle<cr>
imap jj <Esc>
nmap K i<cr><Esc>

" Clear all trailing whitespace
nmap ,w :%s/\s\+$//e <bar> %s/\n\{3,}/\r\r/e<cr>

" = Shortcuts

nmap ,ev :e ~/.vimrc<cr>
nmap ,ep :e ~/.vim/plugins.vim<cr>
nmap ,es :e ~/.vim/snippets/
nmap ,pp :cd ~/Code/pagepicnic <bar> e ~/Code/pagepicnic/__notes.md<cr>


" =========== Configs ==========

" === VIM

colorscheme atom-dark-256
syntax on               " Show syntax highlighting
set number              " Show line numbers
set showmatch           " Show mathcing brace
set tabstop=8           " Tab things, see http://vim.wikia.com/wiki/Indenting_source_code
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set noswapfile          " Dont create swapfiles for open buffers
set splitright          " Create vertical splits to the right
set splitbelow          " Create horizontal splits below
set hlsearch            " Highlight results while searching
set incsearch           " Perform the search incrementally as I'm typing
set ttimeoutlen=50      " Less delay when leaving insert mode

" Set the vertical split line to the bg color, making it invisible.
hi vertsplit ctermfg=bg ctermbg=bg


" === CtrlP ===

" = Maximum indexed files.
let g:ctrlp_max_files = 100000
" = Configure the search window
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
" = Ignore all these folders and files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$\|node_modules$\',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" === Airline ===

" = Set the symbols to be used in the status-line plugin Airline

" = Show the status line when opening vim
set laststatus=2

if !exists("g:airline_symbols")
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" === JSX Syntax ===

" Highlight jsx in plain js-files.
let g:jsx_ext_required = 0

