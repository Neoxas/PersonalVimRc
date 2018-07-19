" Enable syntax
syntax enable

" Tab changes
set tabstop=4 " number of visuals spaces per tab
set softtabstop=4 " Number of spaces in tab when editing
set shiftwidth=4
set expandtab " Tabs are now spaces 
set smarttab " Tab is more clever

" Indenting
set autoindent " automatically indent to relevant level
set smartindent " C like indenting based off paraenthesis
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" UI Config
set number " Shows line number
set showcmd "Shows last command in bottom window
"set cursorline " highlight cursor line
filetype indent on " load filetpye-specific indent files
set wildmenu " Visual autocomplete for command menu
set lazyredraw " Redraw only when we need to
set showmatch " highlight matching parenthesis
set ruler
set background=dark
set cmdheight=2

" Searching improvements
set incsearch " Search as characters are entered
set hlsearch " Highlights matches
set smartcase
set ignorecase

" Turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Folding in VIM
set foldenable " Enable Folding
set foldlevelstart=10 "Opens most folds by default
set foldnestmax=10 " 10 nested folds max
set foldmethod=indent " Fold based on indent level
nnoremap <space> za

" Leader shortcut
let mapleader="," " leader is comma (why is this not working>)

" Status line
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    FUNCTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
