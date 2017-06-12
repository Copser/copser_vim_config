execute pathogen#infect()
syntax enable
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype plugin indent on
set clipboard=unnamedplus
set encoding=utf-8
" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" " automatically change window's cwd to file's dir
set autochdir
"
" awsesome colorscheme
" colorscheme badwolf

set number " show line number
set cursorline " highlight currnet line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]

"" Searching
set incsearch " search as characters are enterd
set nohlsearch " highlight mathches

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" YouCompletMe
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Syntastic settup for JavaScript
" use jshint
let g:syntastic_javascript_checkers = ['jshint']
" show mine linting error immediately
let g:syntastic_check_on_open = 1

" Ultisnips 
let g:UltiSnipsExpandTrigger       = "<c-a>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsListSnippets        = "<c-tab>" "List possible snippets based on current file

" Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" NerdTree
map <F2> :NERDTreeToggle<CR>

" pyflake 8(PEP 8)
autocmd BufWritePost *.py call Flake8()

" Bootstrap-snippets Autocomplete
set dictionary+=~/.vim/bundle/bootstrap-snippets/dictionary
set complete+=k

" repeat.vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" Flagging Unnecessary Whitspace
" au BufRead,BufNewFile *.py,*.pwy,*.c,*.h match BadWhitespace /\s\+$/ 

" ctrlP options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" using a custom file listing  command
let g:ctrlp_user_command = 'find %s -type f'  " MacOSX/Linux

" Less Configuration
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

"Angularjs Configuration
let g:angular_source_directory = 'app/source'
let g:angular_test_directory = 'test/units'
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "myhotcompany-']
let g:syntastic_html_tidy_blocklevel_tags = ['myCustomTag']

" Rpdf settup
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -

" html5-vim settup
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

" javascript-libraries-syntax-vim
let g:used_javascript_libs = 'underscore,angularjs,jasmine,chai'
