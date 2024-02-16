"use monokai scheme if it is available
if filereadable(expand("~/.vim/colors/monokai.vim"))
    colorscheme monokai
endif

" turn on statusline
set laststatus=2

" turn off mode show as mode is now displayed in the statusline
set noshowmode

" turn on line numbering
set nu

" turn on relative numbering
set relativenumber

" turn on highlighting search term
set hlsearch

" split to the right by default when splitting vertically
set splitright

" how many spaces to display in place of a tab?
set tabstop=4

" how many places to insert upon pressing tab in insert mode?
set softtabstop=4

" how many places to indent while shifting left or right?
set shiftwidth=4

" replace tabs with spaces
set expandtab

" Copy indent from the current line into new line
set autoindent
set smartindent

" ignore cases when searching normally, but be smart when searching for text
" with mixed case
set ignorecase smartcase

" tab completion for files and buffers
set wildmenu

" set mouse+=v " enable mouse mode (scrolling, selection, etc)

" turn on syntax highlighting
syntax on

" show matching braces when text indicator is over them
set showmatch

set listchars=tab:>>,nbsp:~

" overrriding the default of lightline to show the absolute path of the file
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'relativepath', 'modified' ] ]
      \ },
      \ }

" To turn off highlighting after a search
:noremap <silent> <Space> :silent noh<Bar>echo<CR>

" To toggle highlighting
:noremap <F4> :set hls!<CR>

" search as I type
set incsearch

" toggle paste option before and after pasting
set pastetoggle=<F5>

" Always highlight trailing white spaces by matching
" the pattern for trailing white space to Error group
autocmd BufWinEnter <buffer> match Error /\s\+$/
autocmd InsertEnter <buffer> match Error /\s\+\%#\@<!$/
autocmd InsertLeave <buffer> match Error /\s\+$/
autocmd BufWinLeave <buffer> call clearmatches()

" function to clear trailing white spaces
fun! TrimTrailingWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    " without saving and restoring the view, the cursor
    " moves to the line of the last search result where
    " the edit is made.
    call winrestview(l:save)
endfun

" using the default leader '\'
" \ + w to clear the trailing whitespace
:noremap <Leader>w :call TrimTrailingWhiteSpace()<CR>

" Toggle line number and relative numbers
" Helps in not including the line numbers when copying text
:noremap <Leader>tn :set number! relativenumber!<CR>

" Turn on filetype detection, plugin loading and indentation on
" implicitly turns filetype on
filetype plugin indent on

" local customizations in ~/.vimrc_local
let $LOCAL_FILE=expand("~/.vimrc_local")
if filereadable($LOCAL_FILE)
    source $LOCAL_FILE
endif

" list spaces as _ and tabs as >~
"set listchars=space:_,tab:>~ list
"
"enable modeline
set modeline
set modelines=5

"Opens new tab with directory of the currently opened file
function! OpenTabWithDir()
    tabe %:p:h
endfunction

noremap <leader>t :call OpenTabWithDir()<CR>

"markdown specific customizations

"To insert the current timestamp
nnoremap <Leader>d "=strftime("%m/%d%y %H:%M")<CR>p

"To insert the current timestamp
noremap <Leader>d "=strftime ("%m/%d/%y %H:%" )<CR>p

"To insert the markdown level header with the current timestamp
nnoremap <Leader>hd3 "=strftime("### %m/%d/%y %H:%")<CR>p

let g:markdown_folding = 1

"to support syntax highlighting for code blocks in markdown
let g:markdown_fenced_languages = ['html', 'python', 'vim', 'c', 'cpp', 'go', 'sh']

"Insert another upon entering the starting of the code block
inoremap ``` ```<CR><CR>```<Esc>ki

"Insert matching backtick inline code block and place the cursor in mode between the two backticks
inoremap ` ``<Esc>i
